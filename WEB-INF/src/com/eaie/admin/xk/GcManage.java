package com.eaie.admin.xk;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class GcManage {

	private static final String HQL_GET_USER ="FROM Gcstudent As gc where gc.name = ";
	//private static final String HQL_GET_USER1 ="FROM Bsstudent As Bsusers where Bsusers.pwd = ";
	//保存博士用户
	public static void SaveUser(Gcstudent gc) throws Exception{		
		
	BasicDAO.save(gc);		
	}
	
	//删除博士用户
	public static void DeleteUser(Gcstudent gc) throws Exception {
		
		BasicDAO.delete(gc);
	}	
	//更新博士用户
	public static void UpDateUser(Gcstudent gc) throws Exception{
		
		BasicDAO.update(gc);
	}
	//在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
	public static Gcstudent getGcuser(String gcUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + gcUserName + "'";		
		Gcstudent  gc = (Gcstudent)BasicDAO.queryByHql(sHQL).get(0);
		return gc;
	}

	//用户登陆
	public static Gcstudent gcuserLogin(String gcUserName,String gcPassWord) throws Exception{
		
			
		Gcstudent gc = getGcuser(gcUserName);
		if(gc==null){			//如果用户为空（即不存在该用户）
			return null;
		}else if(gc.getPwd().equals(gcPassWord)){//如果密码相等			
			return gc;		
		}else {			
			return null;
		}
	}
}
	

