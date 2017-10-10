package hhu.innerac.portal.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPPanel;
import hhu.innerac.portal.service.ArticleService;
import hhu.innerac.portal.service.BaseService;

public class PanelController extends BaseController{
	public void index(){
		int pid = getParaToInt();
		Map<String, Object> res = panelService.getPanel(pid);
		renderJson(res);
	}
	
	public void all(){
		String pids = "3,1,2,4,5,6,7,8";
		List<Map<String, Object>> res = new ArrayList<>();
		String[] ids = pids.split(",");
		for(String id : ids){
			res.add(panelService.getPanel(id));
		}
		renderJson(res);
	}
	
	public void list(){
		int pid = getParaToInt();
		JPPanel panel = BaseService.panelDao.findById(pid);
		List<JPArticle> articles = articleService.findByPid(pid);
		setAttr("panels", panelService.getPanels());
		setAttr("panel", panel);
		setAttr("articles", articles);
		render("panel-art.jsp");
	}
}
