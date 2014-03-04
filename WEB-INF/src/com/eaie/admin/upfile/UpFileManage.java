package com.eaie.admin.upfile;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import java.io.*;

public class UpFileManage {
	
	public static void DeleteFile(Upfile file,String FilePath){
		
		File discfile = new File(FilePath);
		try{
			if(discfile.exists()){			
				discfile.delete();		
			}
			if(file!=null){
				BasicDAO.delete(file);
			}
		}catch(Exception ex){			
			ex.printStackTrace();			
		}		
		
	}
	public static Upfile getFile(int id) throws Exception{
		
		return (Upfile)BasicDAO.queryById(Upfile.class, id);		
	}
	public static void saveFile(Upfile file) throws Exception{
		
		BasicDAO.save(file);
	}	
	public static void updateFile(Upfile file){
		
		try {
			BasicDAO.update(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
