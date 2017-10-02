package hhu.innerac.portal.entry;

import com.jfinal.plugin.activerecord.Model;

public class JPPanel extends Model<JPPanel>{
	private static final long serialVersionUID = 1L;
	
	public int getPid(){
		return getInt("pid");
	}
	public String getPname(){
		return getStr("pname");
	}
	public int getPsize(){
		return getInt("psize");
	}
	public int getPtype(){
		return getInt("ptype");
	}
	public String getPvalue(){
		return getStr("pvalue");
	}
	public void setPname(String pname){
		set("pname",pname);
	}
	public void setPsize(int psize){
		set("psize",psize);
	}
	public void setPtype(int ptype){
		set("ptype",ptype);
	}
	public void setPvalue(String pvalue){
		set("pvalue",pvalue);
	}
}
