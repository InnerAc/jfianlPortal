package hhu.innerac.portal.controller;

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
	
}
