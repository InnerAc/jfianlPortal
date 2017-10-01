package hhu.innerac.portal.controller;

import java.util.Map;

import hhu.innerac.portal.entry.JPPanel;

public class PanelController extends BaseController{
	public void index(){
		int pid = getParaToInt();
		Map<String, Object> res = panelService.getPanel(pid);
		renderJson(res);
	}
	
	public void add(){
		JPPanel panel = getModel(JPPanel.class,"");
		boolean isok = panelService.addPanel(panel);
		if(isok){
			success();
		}else{
			error(0, "增加展示面板失败！");
		}
	}
}
