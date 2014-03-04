package com.eaie.admin.course;

import com.eaie.common.*;
import java.util.*;
public class CourseList {

	private static Page page=new Page();
	private String pageHQL;
	private String countHQL;
	
	public  CourseList(){
		
		pageHQL = "FROM Course";
		countHQL ="SELECT COUNT(*) FROM Course";		
		page.setMaxPageNum(countHQL, "Teacher");		
	}
	public List getCourseList(int pageIndex){		
		
		return page.getAllByPage(pageIndex, pageHQL);		
	}
    public List getCourseOnline(int pageIndex){		
		
    	pageHQL = "FROM Course where onlineurl != ''";
		countHQL ="SELECT COUNT(*) FROM Course where onlineurl != ''";		
		page.setMaxPageNum(countHQL, "Teacher");	
		return page.getAllByPage(pageIndex, pageHQL);		
	}
    public List getCourseAll(int pageIndex){		
		
    	pageHQL = "FROM Course order by coursetime,coursename,courseteacher,onlineurl desc";	
		page.setMaxPageNum(countHQL, "Teacher");	
		return page.getAllByPage(pageIndex, pageHQL);		
	}
	public Page getCurrentPage(){		
		return page;
	}	
	public List getList(){	
		String sql="from Course";
		try{
		    List list = BasicDAO.queryByHql(sql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
}

