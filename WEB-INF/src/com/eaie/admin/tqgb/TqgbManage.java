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
  //�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
   public static Tqgb getTqgbUser(String TqgbUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + TqgbUserName + "'";		
		Tqgb tqgbuser = (Tqgb)BasicDAO.queryByHql(sHQL).get(0);
		return tqgbuser;
	}
   //�û���½
	public static Tqgb tqgbUserLogin(String TqgbUserName,String tqgbPassWord) throws Exception{
		
			
		Tqgb tqgbuser = getTqgbUser(TqgbUserName);
		if(tqgbuser==null){			//����û�Ϊ�գ��������ڸ��û���
			return null;
		}else if(tqgbuser.getPwd().equals(tqgbPassWord)){//����������			
			return tqgbuser;		
		}else {			
			return null;
		}
	}
   
}
