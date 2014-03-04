package com.eaie.admin.professor;

import java.util.List;

import com.eaie.common.Page;

public class ProfessorList {
	
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  ProfessorList(){	
		
		page = new Page();		
		pageHQL = "FROM Professor AS p ORDER BY p.orderid,p.gradeid,p.name";
		countHQL ="SELECT COUNT(*) FROM Professor";
	}
	
	public List getList(int pageIndex){				
		page.setMaxPageNum(countHQL, "Teacher");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public List getListByGradeId(int pageIndex,String gradeid){
		
		pageHQL = "FROM Professor AS p WHERE p.gradeid = "+ gradeid+ "ORDER BY p.orderid,p.gradeid,p.name";
		countHQL ="SELECT COUNT(*) FROM Professor AS p WHERE p.gradeid = " + gradeid;
		page.setMaxPageNum(countHQL, "Teacher");	
		
		return page.getAllByPage(pageIndex, pageHQL);	
		
	}
	public Page getCurrentPage(){			
		return page;
	}

}
