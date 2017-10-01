package hhu.innerac.portal.entry;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;

import hhu.innerac.portal.common.Constants;

public class JPArticle extends Model<JPArticle>{
	private static final long serialVersionUID = 1L;
	
	public List<JPArticle> selectByPid(int pid){
		String sql = "select * from jp_article where pid = ? order by atime desc limit ?";
		List<JPArticle> articles = find(sql, pid,Constants.SHOW_NUMBER);
		return articles;
	}
}
