package com.eaie.admin.news;

import java.util.List;

import com.eaie.common.Page;
import com.eaie.common.BasicDAO;
import com.eaie.common.PageBean;
import com.eaie.dbmanage.Bigclass;

public class NewsList {
	
	Page page = new Page();
	
	public List getList(int curPage){	
		String hql = "from News as news order by news.pubtime desc";
		String hqlCount = "select count(*) from News";
		try{
			page.setMaxPageNum(hqlCount,"News");
		    List list = page.getAllByNews(curPage, hql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	public List getNeededList(int curPage, String goClass){
		try{
		    int classId = Integer.parseInt(goClass);
		    String hql = "from News as news where news.smallclassid="+classId+" or news.bigclassid="+classId+" order by news.pubtime desc";
		    String hqlCount = "select count(* ) from News as news where news.smallclassid="+classId+" or news.bigclassid="+classId;
            page.setMaxPageNum(hqlCount,"News");
		    List list = page.getAllByNews(curPage, hql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}	
	}
	
	public int getId(int goClass){
		String hql = "from Bigclass as bg where bg.bigclassid="+goClass;
		try{
			List list = BasicDAO.queryByHql(hql);
			if (list.isEmpty())
				return 0;
			else return ((Bigclass)list.get(0)).getId();	
		}catch(Exception ex){
			ex.printStackTrace();
			return 0;
		}	
	}
	
	public List getListByTea(int curPage,String keyWord){
		String hql = "from News as news where news.teacher='"+keyWord+"'";
		String hqlCount =" select count(*) from News as news where news.teacher='"+keyWord+"'";
		try{
			page.setMaxPageNum(hqlCount,"News");
		    List list = page.getAllByNews(curPage, hql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
		
	}
	
	public List getListByCon(int curPage,String keyWord){
		String hql = "from News as news where news.content like '%"+keyWord+"%'";
		String hqlCount =" select count(*) from News as news where news.content like '%"+keyWord+"%'";
		try{
			page.setMaxPageNum(hqlCount,"News");
		    List list = page.getAllByNews(curPage, hql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
    public List getListByTit(int curPage,String keyWord){
    	String hql = "from News as news where news.title like '%"+keyWord+"%'";
		String hqlCount =" select count(*) from News as news where news.title like '%"+keyWord+"%'";
		try{
			page.setMaxPageNum(hqlCount,"News");
		    List list = page.getAllByNews(curPage, hql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}	
	}

	
	public int getMaxPage(){
		return page.getMaxPage();
	}
	
	public int getRowsNum(){
		return page.getRowsNum();
	}
	
	public int getRowsPerPage(){
		PageBean pageBean = new PageBean();
		return pageBean.newsRowsPerPage;
	}

}
