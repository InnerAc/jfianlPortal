package hhu.innerac.portal.controller;

import java.util.List;

import hhu.innerac.portal.entry.JPPanel;

public class AdminController extends BaseController{
	public void index(){
		List<JPPanel> panels = panelService.getPanels();
		setAttr("panels", panels);
		render("index.jsp");
	}
}
