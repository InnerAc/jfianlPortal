package hhu.innerac.portal.entry;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;

import hhu.innerac.portal.common.Constants;
import hhu.innerac.portal.util.DateUtil;

public class JPArticle extends Model<JPArticle>{
	private static final long serialVersionUID = 1L;
	
	public int getAid(){
		return getInt("aid");
	}
	public String getAtitle(){
		return getStr("atitle");
	}
	public String getAvalue(){
		return getStr("avalue");
	}
	public long getAtime(){
		return getInt("atime");
	}
	
	
	public void setPid(int pid){
		set("pid", pid);
	}
	public void setAtitle(String title){
		set("atitle", title);
	}
	public void setAvalue(String value){
		set("avalue", value);
	}
	public void setTime(){
		set("atime", DateUtil.getNowTime());
	}
	public List<JPArticle> selectByPidLimit(int pid){
		String sql = "select * from jp_article where pid = ? order by atime desc limit ?";
		List<JPArticle> articles = find(sql, pid,Constants.SHOW_NUMBER);
		return articles;
	}
	
	public List<JPArticle> selectByPid(int pid){
		String sql = "select * from jp_article where pid = ? order by atime desc";
		List<JPArticle> articles = find(sql, pid);
		return articles;
	}
}
