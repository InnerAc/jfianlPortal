package hhu.innerac.portal.controller;

import java.util.List;

import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPFile;
import hhu.innerac.portal.entry.JPPanel;
import hhu.innerac.portal.service.BaseService;

public class IndexController extends BaseController{
	public void index(){
		render("index.jsp");
	}
	
	public void file(){
		int fid = getParaToInt();
		String pname = fileService.getFname(fid);
		renderFile(pname);
	}
	
	public void panels(){
		
	}
	
	public void article(){
		int aid = getParaToInt();
		JPArticle article = BaseService.articleDao.findById(aid);
		JPPanel panel = BaseService.panelDao.findById(article.getPid());
		List<JPArticle> articles = articleService.findByPid(article.getPid());
		List<JPFile> files = fileService.getByAid(aid);
		if(files.size() == 0){
			setAttr("files", null);
		}else{
			setAttr("files", files);
		}
		setAttr("panel", panel);
		setAttr("article", article);
		setAttr("articles", articles);
		render("article.jsp");
	}
}
