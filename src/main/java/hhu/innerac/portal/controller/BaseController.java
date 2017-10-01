package hhu.innerac.portal.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.core.Controller;

import hhu.innerac.portal.service.ArticleService;
import hhu.innerac.portal.service.FileService;
import hhu.innerac.portal.service.PanelService;

public class BaseController extends Controller{

	public final static PanelService panelService = new PanelService();
	public final static ArticleService articleService = new ArticleService();
	public final static FileService fileService = new FileService();
	public void index(){
		renderText("success");
	}
	
	public void success(){
		Map<String, Object> res = new HashMap<String,Object>();
		res.put("statu", 200);
		renderJson(res);
	}
	
	public void error(int statu,String msg){
		Map<String, Object> res = new HashMap<String,Object>();
		res.put("statu", statu);
		res.put("msg", msg);
		renderJson(res);
	}
}
