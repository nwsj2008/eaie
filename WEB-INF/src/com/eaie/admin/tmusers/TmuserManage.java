package com.eaie.admin.tmusers;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
public class TmuserManage {
	private static final String HQL_GET_USER ="FROM Tmstudent As Tmusers where Tmusers.username = ";	
	//保存推免用户
	public static void SaveUser(Tmstudent tmuser) throws Exception {		
		
		BasicDAO.save(tmuser);		
	}
	//删除推免用户
	public static void DeleteUser(Tmstudent tmuser) throws Exception {
		
		BasicDAO.delete(tmuser);
	}	
	//更新推免用户
	public static void UpDateUser(Tmstudent tmuser) throws Exception{
		
		BasicDAO.update(tmuser);
	}
//	public static boolean HasRight(int right,Tmstudent tmuser){
//		
//		String rights = tmuser.getBigclassid();
//		int hasindex;
//		if(rights!=null){
//			hasindex = rights.indexOf(String.valueOf(right));
//		}else{
//			
//			hasindex = -1;
//		}
//		if(tmuser.getIsadmin()==null){			
//			
//			if(hasindex>-1){				
//				return true;
//			}else{			
//				return false;
//			}			
//		}else if(user.getIsadmin()>0){
//			
//			return true;
//		}else{
//			
//			if(hasindex>-1){				
//				return true;
//			}else{			
//				return false;
//			}		
//		}
//	}
	
	//在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
	public static Tmstudent getTmuser(String tmUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + tmUserName + "'";		
		Tmstudent tmuser = (Tmstudent)BasicDAO.queryByHql(sHQL).get(0);
		return tmuser;
	}
	//用户登陆
	public static Tmstudent tmuserLogin(String tmUserName,String tmPassWord) throws Exception{
		
		MD5 md5 = new MD5();
		String tmPassWordMD5 = md5.getMD5ofStr(tmPassWord);	//密码加密	
		Tmstudent tmuser = getTmuser(tmUserName);
		if(tmuser==null){			//如果用户为空（即不存在该用户）
			return null;
		}else if(tmuser.getPwd().equals(tmPassWordMD5)){//如果密码相等			
			return tmuser;		
		}else {			
			return null;
		}
	}
	//更改密码
	public static boolean tmchangePassword(Tmstudent tmuser,String tmoldPassword,String tmnewPassword){
		
		MD5 md5 = new MD5();
		String tmnewPassWordMD5 = md5.getMD5ofStr(tmnewPassword);
		String tmoldPassWordMD5 = md5.getMD5ofStr(tmoldPassword);
		if(tmoldPassWordMD5.equals(tmuser.getPwd())){//如果旧密码与原密码相等
			
			tmuser.setPwd(tmnewPassWordMD5);//得到新密码
			try {
				BasicDAO.update(tmuser);//更新密码
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
