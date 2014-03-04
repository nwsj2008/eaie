package com.eaie.admin.tqgb;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class TqgbManage {

	private static final String HQL_GET_USER ="FROM Tqgb As tqgbUsers where tqgbUsers.username = ";
	
	public static void SaveUser(Tqgb tqgbuser) throws Exception{		
		
		BasicDAO.save(tqgbuser);		
		
	}
	
   public static void DeleteUser(Tqgb tqgbuser) throws Exception{		
		
		BasicDAO.delete(tqgbuser);		
		
	}
   public static void UpDateUser(Tqgb tqgbuser) throws Exception{		
		
		BasicDAO.update(tqgbuser);		
		
	}
  //在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
   public static Tqgb getTqgbUser(String TqgbUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + TqgbUserName + "'";		
		Tqgb tqgbuser = (Tqgb)BasicDAO.queryByHql(sHQL).get(0);
		return tqgbuser;
	}
   //用户登陆
	public static Tqgb tqgbUserLogin(String TqgbUserName,String tqgbPassWord) throws Exception{
		
			
		Tqgb tqgbuser = getTqgbUser(TqgbUserName);
		if(tqgbuser==null){			//如果用户为空（即不存在该用户）
			return null;
		}else if(tqgbuser.getPwd().equals(tqgbPassWord)){//如果密码相等			
			return tqgbuser;		
		}else {			
			return null;
		}
	}
   
}
