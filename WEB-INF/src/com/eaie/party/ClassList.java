package com.eaie.party;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.eaie.common.HibernateUtil;

public class ClassList {
	
	PageBean page = new PageBean();
	int countNum;
	int pageNum;
	
	public List getList(int classid, int curPage){
		String hql = "select news.id,news.title,news.pubtime,news.hits,news.ispicnews from News as news where news.smallclassid="+classid+" order by news.pubtime desc";
		String hqlCount = "select count(*) from News as news where news.smallclassid="+classid;
		try {
			Session session = HibernateUtil.currentSession();
			Query q = session.createQuery(hqlCount);
			Query query = session.createQuery(hql);
		    countNum = Integer.parseInt(q.list().get(0).toString());
			page.setMaxRowCount(countNum);
			pageNum = page.countMaxPage();
			if (curPage != pageNum){			    
	            query.setFirstResult((curPage-1)*page.rowsPerPage);
			    query.setMaxResults(page.rowsPerPage);
			    List results = query.list();
			    return results;	
			}
			else{
		    	query.setFirstResult((curPage-1)*page.rowsPerPage);
		    	query.setMaxResults(countNum-(curPage-1)*page.rowsPerPage);
			    List results = query.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}		
	}
	
	public int getRowsNum(){
		return this.countNum;
	}
	
	public int getMaxPage(){
		return this.pageNum;
	}
	
	public int getRowsPerPage(){
		return page.rowsPerPage;
	}

}
