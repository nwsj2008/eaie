package com.eaie.admin.quality;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;

public class ChoseManage {

	private static final String HQL_GET_CHOSE = "FROM Innovativelexp AS i WHERE i.ispass = ";
	
	
	public static Expchose getExpchose(int id){
		
		try {
			return (Expchose)BasicDAO.queryById(Expchose.class, id);
		} catch (Exception e) {
			
			e.printStackTrace();
			return null;
		}
	}
	public static void saveExpchose(Expchose exp) throws Exception{
		
		BasicDAO.save(exp);
	}
	public static void updateExpchose(Expchose exp) throws Exception{
		
		BasicDAO.update(exp);
	}
	public static void deleteExpchose(Expchose exp) throws Exception{
		
		BasicDAO.delete(exp);
	}
	public static Expchose getExpchose(Expstudent student,String order) throws Exception{
		
		String hql = "FROM Expchose AS e WHERE e.expstudent = '" + student.getStuid() + "' and e.apporder = " + order;		
		try {
			return (Expchose)BasicDAO.queryByHql(hql).get(0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}		
	}
	public static List<Expstudent> getStudents(Innovativelexp exp,String apporder){
		
		String hql = "SELECT e.expstudent FROM Expchose AS e WHERE e.innovativelexp = '" + exp.getExpid() + "' and e.apporder = " + apporder;
		
		try {
			return BasicDAO.queryByHql(hql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}		
		
	}
	public static List<Expstudent> getStudents(Innovativelexp exp){
		
		String hql = "SELECT e.expstudent FROM Expchose AS e WHERE e.innovativelexp = '" + exp.getExpid() + "'";		
		try {
			return BasicDAO.queryByHql(hql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}		
		
	}
	public static Innovativelexp getExps(Expstudent student,String order){
		
		String hql = "SELECT e.innovativelexp FROM Expchose AS e WHERE e.expstudent = '" + student.getStuid() + "' and e.apporder = " + order;
		try {
			List<Innovativelexp> list = BasicDAO.queryByHql(hql);
			if(list.size()>0){
				return list.get(0);
			}else{
				
				return null;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}		
		
	}
	public static boolean hasOrder(Expstudent student,String order){
		
		
		String hql = "FROM Expchose AS e WHERE e.expstudent = '" + student.getStuid() + "' and e.apporder = " + order;		
		int resualt = 0;
		try {
			resualt = BasicDAO.queryByHql(hql).size();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		if(resualt>0){
			
			return true;
		}else{
			
			return false;
		}		
	}
	public static boolean hasChose(Innovativelexp exp,Expstudent student){
		
		String hql = "FROM Expchose AS e WHERE e.expstudent = '" + student.getStuid() + "' and e.innovativelexp = '" + exp.getExpid()+"'";	
		int resualt = 0;
		try {
			resualt = BasicDAO.queryByHql(hql).size();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		if(resualt>0){
			
			return true;
		}else{
			
			return false;
		}		
	}
}
