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
  //�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
   public static Sbld getSbldUser(String SbldUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + SbldUserName + "'";		
		Sbld sblduser = (Sbld)BasicDAO.queryByHql(sHQL).get(0);
		return sblduser;
	}
   //�û���½
	public static Sbld sbldUserLogin(String sbldUserName,String sbldPassWord) throws Exception{
		
			
		Sbld sblduser = getSbldUser(sbldUserName);
		//if(sblduser==null){			//����û�Ϊ�գ��������ڸ��û���
			//return null;
		//}
		 if(sblduser.getPwd().equals(sbldPassWord)){//����������			
			return sblduser;		
		}else {			
			return null;
		}
	}
   
}
