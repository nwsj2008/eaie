package com.eaie.admin.quality;

import com.eaie.dbmanage.*;
import com.eaie.common.*;

public class ExpManage {
	
	private static final String HQL_GET_EXP = "FROM Innovativelexp AS i WHERE i.ispass = ";
	
	public static Innovativelexp getExp(int id){
		
		try {
			return (Innovativelexp)BasicDAO.queryById(Innovativelexp.class, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}	
	}
	public static void SaveInnovativelexp(Innovativelexp exp) throws Exception{
		
		BasicDAO.save(exp);
	}
	public static void UpdateInnovativelexp(Innovativelexp exp) throws Exception{
		
		BasicDAO.update(exp);
	}
	public static void DeleteInnovativelexp(Innovativelexp exp) throws Exception{
		
		BasicDAO.delete(exp);
	}

}
