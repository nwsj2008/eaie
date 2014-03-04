package com.eaie.admin.sbld;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class SbldUserManage {

	private static final String HQL_GET_USER ="FROM Sbld As sbldUsers where sbldUsers.username = ";
	
	public static void SaveUser(Sbld sblduser) throws Exception{		
		
		BasicDAO.save(sblduser);		
		
	}
	
   public static void DeleteUser(Sbld sblduser) throws Exception{		
		
		BasicDAO.delete(sblduser);		
		
	}
   public static void UpDateUser(Sbld sblduser) throws Exception{		
		
		BasicDAO.update(sblduser);		
		
	}
  //在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
   public static Sbld getSbldUser(String SbldUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + SbldUserName + "'";		
		Sbld sblduser = (Sbld)BasicDAO.queryByHql(sHQL).get(0);
		return sblduser;
	}
   //用户登陆
	public static Sbld sbldUserLogin(String sbldUserName,String sbldPassWord) throws Exception{
		
			
		Sbld sblduser = getSbldUser(sbldUserName);
		//if(sblduser==null){			//如果用户为空（即不存在该用户）
			//return null;
		//}
		 if(sblduser.getPwd().equals(sbldPassWord)){//如果密码相等			
			return sblduser;		
		}else {			
			return null;
		}
	}
   
}
