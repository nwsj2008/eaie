package com.eaie.common;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;


public class Page {
	
	private int curPage;
	private int maxPage=0;
	private int maxRowCount;
	
	public List getAllByPage(int page,String hql) {
		PageBean pageBean = new PageBean();
		this.curPage = page;
		try {
			Session session = HibernateUtil.currentSession();
			if (curPage != maxPage){
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.newsRowsPerPage);
		    	q.setMaxResults(pageBean.newsRowsPerPage);
			    List results = q.list();
			    return results;			    
			}
			else{
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.newsRowsPerPage);
		    	q.setMaxResults(maxRowCount-(curPage-1)*pageBean.newsRowsPerPage);
			    List results = q.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List getAllByNews(int page,String hql) {
		PageBean pageBean = new PageBean();
		this.curPage = page;
		try {
			Session session = HibernateUtil.currentSession();
			if (curPage != maxPage){
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.newsRowsPerPage);
		    	q.setMaxResults(pageBean.newsRowsPerPage);
			    List results = q.list();
			    return results;			    
			}
			else{
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.newsRowsPerPage);
		    	q.setMaxResults(maxRowCount-(curPage-1)*pageBean.newsRowsPerPage);
			    List results = q.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List getAllByTea(int page,String hql) {
		PageBean pageBean = new PageBean();
		this.curPage = page;
		try {
			Session session = HibernateUtil.currentSession();
			if (curPage != maxPage){
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.teaRowsPerPage);
		    	q.setMaxResults(pageBean.teaRowsPerPage);
			    List results = q.list();
			    return results;			    
			}
			else{
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.teaRowsPerPage);
		    	q.setMaxResults(maxRowCount-(curPage-1)*pageBean.teaRowsPerPage);
			    List results = q.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List getAllByStu(int page,String hql) {
		PageBean pageBean = new PageBean();
		this.curPage = page;
		try {
			Session session = HibernateUtil.currentSession();
			if (curPage != maxPage){
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.stuRowsPerPage);
		    	q.setMaxResults(pageBean.stuRowsPerPage);
			    List results = q.list();
			    return results;			    
			}
			else{
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.stuRowsPerPage);
		    	q.setMaxResults(maxRowCount-(curPage-1)*pageBean.stuRowsPerPage);
			    List results = q.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List getAllByVote(int page,String hql) {
		PageBean pageBean = new PageBean();
		this.curPage = page;
		try {
			Session session = HibernateUtil.currentSession();
			if (curPage != maxPage){
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.voteRowsPerPage);
		    	q.setMaxResults(pageBean.voteRowsPerPage);
			    List results = q.list();
			    return results;			    
			}
			else{
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.voteRowsPerPage);
		    	q.setMaxResults(maxRowCount-(curPage-1)*pageBean.voteRowsPerPage);
			    List results = q.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List getAllByCom(int page,String hql) {
		PageBean pageBean = new PageBean();
		this.curPage = page;
		try {
			Session session = HibernateUtil.currentSession();
			if (curPage != maxPage){
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.comRowsPerPage);
		    	q.setMaxResults(pageBean.comRowsPerPage);
			    List results = q.list();
			    return results;			    
			}
			else{
			    Query q = session.createQuery(hql);
		    	q.setFirstResult((curPage-1)*pageBean.comRowsPerPage);
		    	q.setMaxResults(maxRowCount-(curPage-1)*pageBean.comRowsPerPage);
			    List results = q.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void setMaxPageNum(String hql,String table){
		PageBean page = new PageBean();
		try {
			this.maxRowCount = BasicDAO.getRowsNum(hql);
			page.setMaxRowCount(maxRowCount);
			this.maxPage = page.countNewsMaxPage();
			if(table.equals("News"))
				this.maxPage = page.countNewsMaxPage();
			if(table.equals("Teacher"))
				this.maxPage = page.countTeaMaxPage();	
		    if(table.equals("Student"))
		    	this.maxPage = page.countStuMaxPage();
            if(table.equals("Votepaper"))
            	this.maxPage = page.countVoteMaxPage();
            if(table.equals("Commie"))
            	this.maxPage = page.countComMaxPage();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return;	
	}

	public int getMaxPage() {
		return maxPage;
	}
	
	public int getRowsNum(){
		return maxRowCount;
	}


}
