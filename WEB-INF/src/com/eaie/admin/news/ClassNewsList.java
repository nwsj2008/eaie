package com.eaie.admin.news;

import java.util.List;

import com.eaie.common.BasicDAO;
import com.eaie.common.Page;

public class ClassNewsList {
	
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  ClassNewsList(){			
		page = new Page();			
	}
	public List getNewsList(int curPage, String classid){
		try{
		  
		   
			pageHQL = "from News as news where news.smallclassid= " + classid + " order by news.istop desc ,news.pubtime desc";
			countHQL = "select count(*) from News as news where news.smallclassid=" + classid ;	
            page.setMaxPageNum(countHQL,"News");            
		    return page.getAllByPage(curPage, pageHQL);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}	
	}
    public static List getTopNewsList(int topnum,String classid){
		
		String hql="from News as news where news.smallclassid= " + classid + " order by news.istop desc ,news.pubtime desc";
		try{
		    return BasicDAO.getTops(topnum, hql);	
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	public Page getCurrentPage(){			
		return page;
	}	

}
