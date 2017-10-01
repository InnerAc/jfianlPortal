package hhu.innerac.portal.service;

import hhu.innerac.portal.entry.JPArticle;

public class ArticleService extends BaseService{
	
	
	public boolean add(JPArticle article){
		return article.save();
	}
}
