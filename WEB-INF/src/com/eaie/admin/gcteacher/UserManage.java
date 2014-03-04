package com.eaie.admin.gcteacher;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class UserManage {

	private static final String HQL_GET_USER ="FROM Gcteacher As Users where Users.name = ";
	//private static final String HQL_GET_USER1 ="FROM Bsstudent As Bsusers where Bsusers.pwd = ";
	//保存教师用户
	public static void SaveUser(Gcteacher gcuser) throws Exception{		
		
	BasicDAO.save(gcuser);		
	}
	
	//删除教师用户
	public static void DeleteUser(Gcteacher gcuser) throws Exception {
		
		BasicDAO.delete(gcuser);
	}	
	//更新教师用户
	public static void UpDateUser(Gcteacher gcuser) throws Exception{
		
		BasicDAO.update(gcuser);
	}
	//在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
	public static Gcteacher getGcuser(String gcTeacherName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + gcTeacherName + "'";		
		Gcteacher gcuser = (Gcteacher)BasicDAO.queryByHql(sHQL).get(0);
		return gcuser;
	}

	//用户登陆
	public static Gcteacher userLogin(String gcTeacherName,String gcTeacherPwd) throws Exception{
		
			
		Gcteacher gcuser = getGcuser(gcTeacherName);
		if(gcuser==null){			//如果用户为空（即不存在该用户）
			return null;
		}else if(gcuser.getPwd().equals(gcTeacherPwd)){//如果密码相等			
			return gcuser;		
		}else {			
			return null;
		}
	}
	//更改用户密码
   public static boolean changePassword(Gcteacher gcuser,String soldPassword,String snewPassword){
		
		
		if(soldPassword.equals(gcuser.getPwd())){
			
			gcuser.setPwd(snewPassword);
			try {
				BasicDAO.update(gcuser);
				return true;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}	
		}else{
			
			return false;
		}
		
	}
}
	

