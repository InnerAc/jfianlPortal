package hhu.innerac.portal.controller;

import com.jfinal.core.Controller;

public class BaseController extends Controller{
	public void index(){
		renderText("success");
	}
}
