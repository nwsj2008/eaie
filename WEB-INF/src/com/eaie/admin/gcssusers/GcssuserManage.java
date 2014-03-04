package com.eaie.admin.gcssusers;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.jspsmart.upload.Request;

public class GcssuserManage {

	private static final String HQL_GET_USER ="FROM Gcss As Gcssusers where Gcssusers.name = ";
	//private static final String HQL_GET_USER1 ="FROM Bsstudent As Bsusers where Bsusers.pwd = ";
	//���沩ʿ�û�
	public static void SaveUser(Gcss gcssuser) throws Exception{		
		
	BasicDAO.save(gcssuser);		
	}
	
	//ɾ����ʿ�û�
	public static void DeleteUser(Gcss gcssuser) throws Exception {
		
		BasicDAO.delete(gcssuser);
	}	
	//���²�ʿ�û�
	public static void UpDateUser(Gcss gcssuser) throws Exception{
		
		BasicDAO.update(gcssuser);
	}
	//�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
	public static Gcss getGcssuser(String gcssUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + gcssUserName + "'";		
		Gcss gcssuser = (Gcss)BasicDAO.queryByHql(sHQL).get(0);
		return gcssuser;
	}

	//�û���½
	public static Gcss gcssuserLogin(String gcssUserName,String gcssPassWord) throws Exception{
		
			
		Gcss gcssuser = getGcssuser(gcssUserName);
		if(gcssuser==null){			//����û�Ϊ�գ��������ڸ��û���
			return null;
		}else if(gcssuser.getSfz().equals(gcssPassWord)){//����������			
			return gcssuser;		
		}else {			
			return null;
		}
	}
}
	

