package hhu.innerac.portal.service;

import java.io.File;
import java.util.List;

import com.jfinal.kit.PathKit;

import hhu.innerac.portal.entry.JPFile;

public class FileService extends BaseService{
	public boolean add(int aid,String fname,String fpath){
		JPFile file = new JPFile();
		file.set("aid", aid);
		file.set("fname", fname);
		file.set("fpath", fpath);
		return file.save();
	}

	public List<JPFile> getByAid(int aid) {
		String sql = "select * from jp_file where aid = ?";
		return fileDao.find(sql,aid);
	}

	public boolean remove(int fid) {
		JPFile file = fileDao.findById(fid);
		String filePath = file.getFpath();
		File tarfile = new File(PathKit.getWebRootPath()+"/"+filePath);
		if(tarfile.exists()){
			tarfile.delete();
		}
		return file.delete();
	}

	public String getFname(int fid) {
		JPFile file = fileDao.findById(fid);
		if(file != null){
			return file.getFname();
		}
		return null;
	}
}
