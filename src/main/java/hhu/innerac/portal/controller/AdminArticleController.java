package hhu.innerac.portal.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.kit.PathKit;
import com.jfinal.kit.PropKit;
import com.jfinal.upload.UploadFile;

import hhu.innerac.portal.common.Constants;
import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPFile;
import hhu.innerac.portal.entry.JPPanel;
import hhu.innerac.portal.service.BaseService;
import hhu.innerac.portal.util.DateUtil;

public class AdminArticleController extends BaseController{
	public void index(){
		int aid = getParaToInt();
		JPArticle article = BaseService.articleDao.findById(aid);
		List<JPFile> files = fileService.getByAid(aid);
		JPPanel panel = BaseService.panelDao.findById(article.getPid());
		int ptype = panel.getPtype();
		setAttr("article", article);
		if(files.size() == 0){
			setAttr("files", null);
		}else{
			setAttr("files", files);
		}
		if(ptype == Constants.TYPE_LIST_ARTICLE || ptype == Constants.TYPE_TITLE_ROLL){
			render("index-art.jsp");
		}
		if(ptype == Constants.TYPE_IMAGES){
			render("index-image.jsp");
		}
		if(ptype == Constants.TYPE_LIST_LINK){
			render("index-link.jsp");
		}
	}
	
	public void add(){
		if (getRequest().getMethod().equals("GET")) {
			int pid = getParaToInt();
			JPPanel panel = BaseService.panelDao.findById(pid);
			int ptype = panel.getPtype();
			String pname = panel.getPname();
			setAttr("panel", panel);
			setAttr("ptype", ptype);
			setAttr("pname", pname);
			setAttr("pid", pid);
			if(ptype == Constants.TYPE_LIST_ARTICLE || ptype == Constants.TYPE_TITLE_ROLL){
				render("add-art.jsp");
			}
			if(ptype == Constants.TYPE_IMAGES){
				render("add-image.jsp");
			}
			if(ptype == Constants.TYPE_LIST_LINK){
				render("add-link.jsp");
			}
		}
		if (getRequest().getMethod().equals("POST")) {
			List<UploadFile> files = getFiles("file");
			
			JPArticle article = getModel(JPArticle.class,"");
			articleService.add(article);
			int aid = article.getAid();
			
			for(UploadFile file : files){
				fileService.add(aid, file.getFileName(), "/static/file/"+file.getFileName());
			}
			redirect("/admin/article/"+article.getAid());
		}
	}
	
	public void addImg(){
		if (getRequest().getMethod().equals("POST")) {
			List<UploadFile> files = getFiles("artimage");
			UploadFile file = files.get(0);
			String uploadFile = file.getUploadPath();
			String suffix = "."+file.getContentType().split("/")[1];
			File oldFile = new File(uploadFile+"/" +file.getFileName());
			File newFile = new File(uploadFile+"/"+DateUtil.randomName(6)+suffix);
			oldFile.renameTo(newFile);
			JPArticle article = getModel(JPArticle.class,"");
			article.setAvalue("static/artimage/"+newFile.getName());
			articleService.add(article);
			int aid = article.getAid();
			redirect("/admin/article/"+article.getAid());
		}
	}
	
	public void updateImg(){
		if (getRequest().getMethod().equals("POST")) {
			List<UploadFile> files = getFiles("artimage");
			JPArticle article = getModel(JPArticle.class,"");
			JPArticle upArt = BaseService.articleDao.findById(article.getAid());
			if(files.size() > 0){
				UploadFile file = files.get(0);
				String uploadFile = file.getUploadPath();
				String suffix = "."+file.getContentType().split("/")[1];
				File upFile = new File(PathKit.getWebRootPath()+"/"+upArt.getAvalue());
				if(upFile.exists()){
					upFile.delete();
				}
				File oldFile = new File(uploadFile+"/" +file.getFileName());
				File newFile = new File(uploadFile+"/"+DateUtil.randomName(6)+suffix);
				oldFile.renameTo(newFile);
				article.setAvalue("static/artimage/"+newFile.getName());
			}
			article.update();
			int aid = article.getAid();
			redirect("/admin/article/"+article.getAid());
		}
	}
	
	public void edit(){
		int aid = getParaToInt("aid");
		JPArticle article = BaseService.articleDao.findById(aid);
		List<JPFile> files = fileService.getByAid(aid);
		setAttr("article", article);
		setAttr("files", files);
		render("edit.jsp");
	}
	
	public void delete(){
		int aid = getParaToInt("aid");
		JPArticle article = BaseService.articleDao.findById(aid);
		article.delete();
		success();
	}
	
	public void update(){
		if (getRequest().getMethod().equals("POST")) {
			List<UploadFile> files = getFiles("file");
			
			JPArticle article = getModel(JPArticle.class,"");
			articleService.update(article);
			int aid = article.getAid();
			
			for(UploadFile file : files){
				fileService.add(aid, file.getFileName(), "/static/file/"+file.getFileName());
			}
			redirect("/admin/article/"+aid);
		}
	}
	
	public void upfile(){
		List<UploadFile> files = getFiles("artimage");
		List<String> data = new ArrayList<String>();
		for(UploadFile file : files){
			data.add("static/artimage/"+file.getFileName());
		}
		Map<String, Object> res = new HashMap<String,Object>();
		res.put("errno", 0);
		res.put("data", data);
		renderJson(res);
	}
	
	public void removeFile(){
		int fid = getParaToInt("fid");
		boolean isok = fileService.remove(fid);
		if(isok){
			success();
		}else{
			error(0, "移除失败！");
		}
	}
}
