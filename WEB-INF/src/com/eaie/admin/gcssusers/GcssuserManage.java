package com.eaie.admin.gcssusers;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class GcssuserManage {

	private static final String HQL_GET_USER ="FROM Gcss As Gcssusers where Gcssusers.name = ";
	//private static final String HQL_GET_USER1 ="FROM Bsstudent As Bsusers where Bsusers.pwd = ";
	//保存博士用户
	public static void SaveUser(Gcss gcssuser) throws Exception{		
		
	BasicDAO.save(gcssuser);		
	}
	
	//删除博士用户
	public static void DeleteUser(Gcss gcssuser) throws Exception {
		
		BasicDAO.delete(gcssuser);
	}	
	//更新博士用户
	public static void UpDateUser(Gcss gcssuser) throws Exception{
		
		BasicDAO.update(gcssuser);
	}
	//在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
	public static Gcss getGcssuser(String gcssUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + gcssUserName + "'";		
		Gcss gcssuser = (Gcss)BasicDAO.queryByHql(sHQL).get(0);
		return gcssuser;
	}

	//用户登陆
	public static Gcss gcssuserLogin(String gcssUserName,String gcssPassWord) throws Exception{
		
			
		Gcss gcssuser = getGcssuser(gcssUserName);
		if(gcssuser==null){			//如果用户为空（即不存在该用户）
			return null;
		}else if(gcssuser.getSfz().equals(gcssPassWord)){//如果密码相等			
			return gcssuser;		
		}else {			
			return null;
		}
	}
}
	

