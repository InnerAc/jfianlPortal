package hhu.innerac.portal.entry;

import com.jfinal.plugin.activerecord.Model;

public class JPFile extends Model<JPFile>{
	private static final long serialVersionUID = 1L;
	
	public String getFname(){
		return getStr("fname");
	}
	public int getFid(){
		return getInt("fid");
	}
}
