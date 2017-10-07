package hhu.innerac.portal.controller;

import java.util.Map;

import hhu.innerac.portal.entry.JPPanel;

public class PanelController extends BaseController{
	public void index(){
		int pid = getParaToInt();
		Map<String, Object> res = panelService.getPanel(pid);
		renderJson(res);
	}
	
	public void list(){
		renderText(getPara());
	}
}
