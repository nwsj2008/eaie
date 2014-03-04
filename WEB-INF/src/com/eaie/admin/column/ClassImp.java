package com.eaie.admin.column;

import com.eaie.dbmanage.Bigclass;
import com.eaie.dbmanage.Smallclass;
import com.eaie.common.BasicDAO;

public class ClassImp {
	
	public static int getClassId(String idS, String table){
		int id = Integer.parseInt(idS);
		try{
			if (table.equals("Bigclass")){
				Bigclass bigClass = (Bigclass)BasicDAO.queryById(Bigclass.class, id);
				return bigClass.getBigclassid();			
			}
			else if(table.equals("Smallclass")){
				Smallclass smallClass = (Smallclass)BasicDAO.queryById(Smallclass.class, id);
				return smallClass.getSmallclassid();
			}
			return -1;
		}catch(Exception ex){
			return -1;
		}
	}
	
	public static String getSmallClassName(int id){
		String hql = "from Smallclass as small where small.smallclassid="+id;
		try{
			Smallclass smallClass = (Smallclass)(BasicDAO.queryByHql(hql).get(0));
			return smallClass.getSmallclass();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
