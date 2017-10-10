package hhu.innerac.portal.service;

import java.util.List;

import hhu.innerac.portal.entry.JPArticle;

public class ArticleService extends BaseService{
	
	
	public boolean add(JPArticle article){
		article.setTime();
		return article.save();
	}

	public boolean update(JPArticle article) {
		return article.update();
	}
	
	public List<JPArticle> findByPid(int pid){
		return articleDao.selectByPid(pid);
	}
}
