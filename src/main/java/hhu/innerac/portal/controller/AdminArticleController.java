package hhu.innerac.portal.controller;

import hhu.innerac.portal.entry.JPPanel;

public class AdminArticleController extends BaseController{
	public void index(){
		
	}
	
	public void add(){
		if (getRequest().getMethod().equals("GET")) {
			int pid = getParaToInt();
			JPPanel panel = panelService.panelDao.findById(pid);
			int ptype = panel.getPtype();
			String pname = panel.getPname();
			setAttr("ptype", ptype);
			setAttr("pname", pname);
		}
		if (getRequest().getMethod().equals("POST")) {
			
		}
	}
}
