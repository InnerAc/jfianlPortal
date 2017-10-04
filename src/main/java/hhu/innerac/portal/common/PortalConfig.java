package hhu.innerac.portal.common;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

import hhu.innerac.portal.controller.AdminArticleController;
import hhu.innerac.portal.controller.AdminController;
import hhu.innerac.portal.controller.AdminPanelController;
import hhu.innerac.portal.controller.BaseController;
import hhu.innerac.portal.controller.IndexController;
import hhu.innerac.portal.controller.PanelController;
import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPFile;
import hhu.innerac.portal.entry.JPPanel;

public class PortalConfig extends JFinalConfig{

	@Override
	public void configConstant(Constants arg0) {
		arg0.setDevMode(true);
		arg0.setViewType(ViewType.JSP);
		arg0.setBaseUploadPath("static");
		arg0.setBaseDownloadPath("static/file");
	}

	@Override
	public void configEngine(Engine arg0) {
		
	}

	@Override
	public void configHandler(Handlers arg0) {
		arg0.add(new ContextPathHandler("baseUrl"));
	}

	@Override
	public void configInterceptor(Interceptors arg0) {
		
	}

	@Override
	public void configPlugin(Plugins arg0) {
		loadPropertyFile("config.properties");
		DruidPlugin dp = new DruidPlugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password").trim());
        arg0.add(dp);
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        arp.addMapping("jp_article", "aid",JPArticle.class);
        arp.addMapping("jp_panel", "pid",JPPanel.class);
        arp.addMapping("jp_file", "fid",JPFile.class);
        arg0.add(arp);
	}

	@Override
	public void configRoute(Routes arg0) {
		arg0.add("/", IndexController.class);
		arg0.add("panel",PanelController.class);
		arg0.add("admin",AdminController.class,"views/admin");
		arg0.add("admin/panel",AdminPanelController.class,"views/admin/panel");
		arg0.add("admin/article",AdminArticleController.class,"views/admin/article");
	}

}
