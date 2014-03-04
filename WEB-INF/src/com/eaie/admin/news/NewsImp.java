package com.eaie.admin.news;

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Session;


import com.eaie.common.HibernateUtil;
import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.*;


public class NewsImp {
	
	public static boolean bulkDelUser(String checked[])
	{	
		String ids ="";
		try {
			Session sessionSql = HibernateUtil.currentSession();
			Connection con=sessionSql.connection();
			HibernateUtil.beginTransaction();
			String procedure = "delete from news where id in ";		
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
	
	public static List getAllList(){
		String hql = "from Bigclass as bc order by bc.bigclassid";
		List list = null;
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}
	}
	public static News getNews(int id){
		
		try {
			return (News)BasicDAO.queryById(News.class, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public static void updateNewHits(News news){		
		
		if(news.getHits()==null){	
			news.setHits(1);		
		}else{		
			news.setHits(news.getHits()+1);
		}
		try {
			BasicDAO.update(news);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static News getContentNews(String smallclassid){
		
		
		String sHQL = "FROM News AS news WHERE news.smallclassid =" + smallclassid + "ORDER BY news.id DESC";	
		
		try {
			List list = BasicDAO.queryByHql(sHQL);
			if(list!=null&&list.size()>0){
					News news = (News)list.get(0);
					return news;
			}else{
				
				return null;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}	
		
	}
	public static List getTopNews(int topnum,String sNewsType){
		
		String hql;
		if(sNewsType.equalsIgnoreCase("学院新闻")){			
			hql = "FROM News AS news WHERE news.smallclassid = 11 ORDER BY news.istop DESC,news.id DESC";
			return BasicDAO.getTops(topnum, hql);			
			
		}
		if(sNewsType.equalsIgnoreCase("本科生通知")){
			
			hql = "FROM News AS news WHERE news.smallclassid = 21 OR news.smallclassid = 22 ORDER BY news.istop DESC,news.id DESC";
			return BasicDAO.getTops(topnum, hql);		
			
		}
		if(sNewsType.equalsIgnoreCase("研究生通知")){
			
			hql = "FROM News AS news WHERE news.smallclassid = 31 OR news.smallclassid = 32 ORDER BY news.istop DESC,news.id DESC";
			return BasicDAO.getTops(topnum, hql);		
			
			
		}
		if(sNewsType.equalsIgnoreCase("就业信息")){
			
			hql = "FROM News AS news WHERE news.smallclassid = 61 OR news.smallclassid = 62 ORDER BY news.istop DESC,news.id DESC";
			return BasicDAO.getTops(topnum, hql);	
		}
		return null;
	}
	public static List getPicNews(int picnum){
		
		String hql = "FROM News AS news WHERE news.ispicnews = 1 ORDER BY news.istop DESC ,news.id DESC";
		return BasicDAO.getTops(picnum, hql);
	}
}
