package com.eaie.admin.xk;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class GcManage {

	private static final String HQL_GET_USER ="FROM Gcstudent As gc where gc.name = ";
	//private static final String HQL_GET_USER1 ="FROM Bsstudent As Bsusers where Bsusers.pwd = ";
	//���沩ʿ�û�
	public static void SaveUser(Gcstudent gc) throws Exception{		
		
	BasicDAO.save(gc);		
	}
	
	//ɾ����ʿ�û�
	public static void DeleteUser(Gcstudent gc) throws Exception {
		
		BasicDAO.delete(gc);
	}	
	//���²�ʿ�û�
	public static void UpDateUser(Gcstudent gc) throws Exception{
		
		BasicDAO.update(gc);
	}
	//�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
	public static Gcstudent getGcuser(String gcUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + gcUserName + "'";		
		Gcstudent  gc = (Gcstudent)BasicDAO.queryByHql(sHQL).get(0);
		return gc;
	}

	//�û���½
	public static Gcstudent gcuserLogin(String gcUserName,String gcPassWord) throws Exception{
		
			
		Gcstudent gc = getGcuser(gcUserName);
		if(gc==null){			//����û�Ϊ�գ��������ڸ��û���
			return null;
		}else if(gc.getPwd().equals(gcPassWord)){//����������			
			return gc;		
		}else {			
			return null;
		}
	}
}
	

