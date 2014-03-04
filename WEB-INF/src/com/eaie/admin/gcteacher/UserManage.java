package com.eaie.admin.gcteacher;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class UserManage {

	private static final String HQL_GET_USER ="FROM Gcteacher As Users where Users.name = ";
	//private static final String HQL_GET_USER1 ="FROM Bsstudent As Bsusers where Bsusers.pwd = ";
	//�����ʦ�û�
	public static void SaveUser(Gcteacher gcuser) throws Exception{		
		
	BasicDAO.save(gcuser);		
	}
	
	//ɾ����ʦ�û�
	public static void DeleteUser(Gcteacher gcuser) throws Exception {
		
		BasicDAO.delete(gcuser);
	}	
	//���½�ʦ�û�
	public static void UpDateUser(Gcteacher gcuser) throws Exception{
		
		BasicDAO.update(gcuser);
	}
	//�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
	public static Gcteacher getGcuser(String gcTeacherName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + gcTeacherName + "'";		
		Gcteacher gcuser = (Gcteacher)BasicDAO.queryByHql(sHQL).get(0);
		return gcuser;
	}

	//�û���½
	public static Gcteacher userLogin(String gcTeacherName,String gcTeacherPwd) throws Exception{
		
			
		Gcteacher gcuser = getGcuser(gcTeacherName);
		if(gcuser==null){			//����û�Ϊ�գ��������ڸ��û���
			return null;
		}else if(gcuser.getPwd().equals(gcTeacherPwd)){//����������			
			return gcuser;		
		}else {			
			return null;
		}
	}
	//�����û�����
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
	

