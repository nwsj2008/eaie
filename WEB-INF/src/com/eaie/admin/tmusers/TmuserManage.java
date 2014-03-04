package com.eaie.admin.tmusers;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
public class TmuserManage {
	private static final String HQL_GET_USER ="FROM Tmstudent As Tmusers where Tmusers.username = ";	
	//���������û�
	public static void SaveUser(Tmstudent tmuser) throws Exception {		
		
		BasicDAO.save(tmuser);		
	}
	//ɾ�������û�
	public static void DeleteUser(Tmstudent tmuser) throws Exception {
		
		BasicDAO.delete(tmuser);
	}	
	//���������û�
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
	
	//�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
	public static Tmstudent getTmuser(String tmUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + tmUserName + "'";		
		Tmstudent tmuser = (Tmstudent)BasicDAO.queryByHql(sHQL).get(0);
		return tmuser;
	}
	//�û���½
	public static Tmstudent tmuserLogin(String tmUserName,String tmPassWord) throws Exception{
		
		MD5 md5 = new MD5();
		String tmPassWordMD5 = md5.getMD5ofStr(tmPassWord);	//�������	
		Tmstudent tmuser = getTmuser(tmUserName);
		if(tmuser==null){			//����û�Ϊ�գ��������ڸ��û���
			return null;
		}else if(tmuser.getPwd().equals(tmPassWordMD5)){//����������			
			return tmuser;		
		}else {			
			return null;
		}
	}
	//��������
	public static boolean tmchangePassword(Tmstudent tmuser,String tmoldPassword,String tmnewPassword){
		
		MD5 md5 = new MD5();
		String tmnewPassWordMD5 = md5.getMD5ofStr(tmnewPassword);
		String tmoldPassWordMD5 = md5.getMD5ofStr(tmoldPassword);
		if(tmoldPassWordMD5.equals(tmuser.getPwd())){//�����������ԭ�������
			
			tmuser.setPwd(tmnewPassWordMD5);//�õ�������
			try {
				BasicDAO.update(tmuser);//��������
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
