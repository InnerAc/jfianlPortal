package hhu.innerac.portal.service;

import hhu.innerac.portal.entry.JPArticle;
import hhu.innerac.portal.entry.JPFile;
import hhu.innerac.portal.entry.JPPanel;

public class BaseService {
	public static final JPPanel panelDao = new JPPanel();
	public static final JPArticle articleDao = new JPArticle();
	public static final JPFile fileDao = new JPFile();
}
