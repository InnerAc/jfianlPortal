package hhu.innerac.portal.controller;

import java.util.List;

import com.jfinal.core.Controller;

import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPPanel;
import hhu.innerac.portal.service.BaseService;

public class AdminPanelController extends BaseController{
	
	public void index(){
		int pid = getParaToInt();
		JPPanel panel = BaseService.panelDao.findById(pid);
		List<JPArticle> articles = BaseService.articleDao.selectByPid(pid);
		setAttr("panel", panel);
		setAttr("articles", articles);
		render("index.jsp");
	}

	public void add(){
		if (getRequest().getMethod().equals("GET")) {
			render("add.jsp");
		}
		if (getRequest().getMethod().equals("POST")) {
			JPPanel panel = getModel(JPPanel.class,"");
			boolean isok = panelService.addPanel(panel);
			if(isok){
				success();
			}else{
				error(0, "增加展示面板失败！");
			}
		}	
	}
	
	public void updateValue(){
		String value = getPara("pvalue");
		int pid = getParaToInt("pid");
		boolean isok = panelService.updateValue(pid, value);
		if(isok){
			success();
		}else{
			error(0, "修改面板内容失败！");
		}
	}
	
	public void edit(){
		int pid = getParaToInt("pid");
	}
	
	public void update(){
		JPPanel panel = getModel(JPPanel.class,"");
	}
}
