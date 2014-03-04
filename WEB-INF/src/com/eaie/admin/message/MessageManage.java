package com.eaie.admin.message;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
public class MessageManage {
	private static final String HQL_GET_MESSAGE ="FROM Message As m where m.teacher = ";	
	public static boolean SaveMessage(Message message){		
		try{
			BasicDAO.save(message);	;
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}	
	}
	public static void DeleteMessage(Message message) throws Exception {
		
		BasicDAO.delete(message);
	}	
	public static void UpDateMessage(Message message) throws Exception{
		
		BasicDAO.update(message);
	}
	public static Message getMessage(String sUserName) throws Exception{
		
		String sHQL = HQL_GET_MESSAGE +  "'" + sUserName + "'";
		Message message = (Message)BasicDAO.queryByHql(sHQL).get(0);
		return message;
	}
}
