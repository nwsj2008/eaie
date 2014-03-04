package com.eaie.system;

import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Vjian;

public class Operation {
	
	public static int getVisitNum(){
		String hql = "from Vjian";
		try{
			Vjian v = (Vjian)BasicDAO.queryByHql(hql).get(0);
			return v.getVtop();
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("系统读取访问数失败!");
			return 0;
		}
	}
	
	public static void setVisitNum(){
		String hql = "from Vjian";
		try{
			Vjian v = (Vjian)BasicDAO.queryByHql(hql).get(0);
			v.setVtop(v.getVtop()+1);
			BasicDAO.update(v);
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("系统记录访问数失败!");
		}
	} 

}
