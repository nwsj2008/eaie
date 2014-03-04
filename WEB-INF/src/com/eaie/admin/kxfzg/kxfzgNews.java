package com.eaie.admin.kxfzg;

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Session;


import com.eaie.common.HibernateUtil;
import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.*;


public class kxfzgNews {

	public static boolean bulkDel(String checked[])
	{	
		String ids ="";
		try {
			Session sessionSql = HibernateUtil.currentSession();
			Connection con=sessionSql.connection();
			HibernateUtil.beginTransaction();
			String procedure = "delete from kxfzgNews where id in ";		
			for (int i=0;i<checked.length;i++)
			{	
				if(i!=0){
					ids +="," + checked[i];
				}else{
					ids += checked[i];
				}
			}	
			procedure += "(" + ids + ")";
			Statement stat = con.createStatement();
			stat.execute(procedure);
			HibernateUtil.commitTransaction();
			stat.close();
			con.close();
			HibernateUtil.closeSession();
			return true;
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean bulkDelInfo(String checked[])
	{	
		String ids ="";
		try {
			Session sessionSql = HibernateUtil.currentSession();
			Connection con=sessionSql.connection();
			HibernateUtil.beginTransaction();
			String procedure = "delete from Leaveinfo where id in ";		
			for (int i=0;i<checked.length;i++)
			{	
				if(i!=0){
					ids +="," + checked[i];
				}else{
					ids += checked[i];
				}
			}	
			procedure += "(" + ids + ")";
			Statement stat = con.createStatement();
			stat.execute(procedure);
			HibernateUtil.commitTransaction();
			stat.close();
			con.close();
			HibernateUtil.closeSession();
			return true;
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
public static void updateHit(KxfzgNews kxfzgNews){		
		
		if(kxfzgNews.getHit()==0){	
			kxfzgNews.setHit(1);		
		}else{		
			kxfzgNews.setHit(kxfzgNews.getHit()+1);
		}
		try {
			BasicDAO.update(kxfzgNews);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
