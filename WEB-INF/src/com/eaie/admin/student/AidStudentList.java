package com.eaie.admin.student;

import java.util.List;

import com.eaie.common.Page;

public class AidStudentList {

	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  AidStudentList(){	
		
		page = new Page();		
		pageHQL = "FROM Student as s WHERE s.isaid = 1 order by s.banji,s.stuid";
		countHQL ="SELECT COUNT(*) FROM Student as s WHERE s.isaid = 1";
	}
	
	public List getAidStudentList(int pageIndex,String sType,String sKeyWords){
		
		if(sType!=null){
			if(sType.equalsIgnoreCase("stuid")){
				
				if(sKeyWords!=null){	
					pageHQL = "FROM Student as s WHERE s.isaid = 1 and s.stuid like '%" + sKeyWords +"%' order by s.banji,s.stuid";					
					countHQL = "SELECT COUNT(*) FROM Student as s WHERE s.isaid = 1 and s.stuid like '%" + sKeyWords +"%'";
				}			
			}
			if(sType.equalsIgnoreCase("name")){
				
				if(sKeyWords!=null){	
					pageHQL = "FROM Student as s WHERE  s.isaid = 1 and s.name like '%" + sKeyWords +"%' order by s.banji,s.stuid";
					countHQL = "SELECT COUNT(*) FROM Student as s WHERE  s.isaid = 1 and s.name like '%" + sKeyWords +"%'";
				}		
				
				
			}			
		}			
		page.setMaxPageNum(countHQL, "Student");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	
}
