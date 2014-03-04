package com.eaie.admin.users;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
public class UserManage {
	private static final String HQL_GET_USER ="FROM Teacher As Users where Users.teacher = ";	
	public static void SaveUser(Teacher user) throws Exception{		
		
		BasicDAO.save(user);		
	}
	public static void DeleteUser(Teacher user) throws Exception {
		
		BasicDAO.delete(user);
	}	
	public static void UpDateUser(Teacher user) throws Exception{
		
		BasicDAO.update(user);
	}
	public static boolean HasRight(int right,Teacher user){
		
		String rights = user.getBigclassid();
		int hasindex;
		if(rights!=null){
			hasindex = rights.indexOf(String.valueOf(right));
		}else{
			
			hasindex = -1;
		}
		if(user.getIsadmin()==null){			
			
			if(hasindex>-1){				
				return true;
			}else{			
				return false;
			}			
		}else if(user.getIsadmin()>0){
			
			return true;
		}else{
			
			if(hasindex>-1){				
				return true;
			}else{			
				return false;
			}		
		}
	}
	public static Teacher getUser(String sUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + sUserName + "'";		
		Teacher user = (Teacher)BasicDAO.queryByHql(sHQL).get(0);
		return user;
	}
	public static Teacher userLogin(String sUserName,String sPassWord) throws Exception{
		
		MD5 md5 = new MD5();
		String sPassWordMD5 = md5.getMD5ofStr(sPassWord);		
		Teacher user = getUser(sUserName);
		if(user==null){			
			return null;
		}else if(user.getPwd().equals(sPassWordMD5)){			
			return user;		
		}else {			
			return null;
		}
	}
	public static boolean changePassword(Teacher user,String soldPassword,String snewPassword){
		
		MD5 md5 = new MD5();
		String snewPassWordMD5 = md5.getMD5ofStr(snewPassword);
		String soldPassWordMD5 = md5.getMD5ofStr(soldPassword);
		if(soldPassWordMD5.equals(user.getPwd())){
			
			user.setPwd(snewPassWordMD5);
			try {
				BasicDAO.update(user);
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
