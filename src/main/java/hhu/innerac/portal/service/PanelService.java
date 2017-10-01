package hhu.innerac.portal.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import hhu.innerac.portal.common.Constants;
import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPPanel;

public class PanelService extends BaseService{
	public Map<String, Object> getPanel(int pid){
		JPPanel jPanel = panelDao.findById(pid);
		if(jPanel == null){
			return new HashMap<String,Object>();
		}
		int ptype = jPanel.getInt("ptype");
		Map<String, Object> panel = new HashMap<String,Object>();
		panel.put("panel", jPanel);
		if (ptype == Constants.TYPE_LIST_ARTICLE || ptype == Constants.TYPE_IMAGES || ptype == Constants.TYPE_LIST_LINK || ptype == Constants.TYPE_TITLE_ROLL) {
			List<JPArticle> articles = articleDao.selectByPid(pid);
			panel.put("articles", articles);
		}else if(ptype == Constants.TYPE_TABS){
			String[] idStrs = jPanel.getStr("pvalue").split(",");
			List<Object> subPanels = new ArrayList<Object>();
			for(String idStr : idStrs){
				subPanels.add(getPanel(idStr));
			}
			panel.put("subPanels", subPanels);
		}
		return panel;
	}
	
	public Map<String, Object> getPanel(String pid){
		return getPanel(Integer.valueOf(pid));
	}
	
	public boolean addPanel(JPPanel panel){
		return panel.save();
	}
}
