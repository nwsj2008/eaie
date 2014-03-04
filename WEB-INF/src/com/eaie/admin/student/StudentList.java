package com.eaie.admin.student;

import java.util.List;

import com.eaie.common.Page;

public class StudentList {

	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  StudentList(){	
		
		page = new Page();		
		pageHQL = "FROM Student";
		countHQL ="SELECT COUNT(*) FROM Student";
	}
	
	public List getStudentList(int pageIndex,String sType,String sKeyWords){
		
		if(sType!=null){
			if(sType.equalsIgnoreCase("stuid")){
				
				if(sKeyWords!=null){	
					pageHQL = "FROM Student as s WHERE s.stuid like '%" + sKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Student as s WHERE s.stuid like '%" + sKeyWords +"%'";
				}			
			}
			if(sType.equalsIgnoreCase("name")){
				
				if(sKeyWords!=null){	
					pageHQL = "FROM Student as s WHERE s.name like '%" + sKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Student as s WHERE s.name like '%" + sKeyWords +"%'";
				}		
				
				
			}
			if(sType.equalsIgnoreCase("techang")){
				
				if(sKeyWords!=null){	
					pageHQL = "FROM Student as s WHERE s.techang like '%" + sKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Student as s WHERE s.techang like '%" + sKeyWords +"%'";
				}		
				
			}
			if(sType.equalsIgnoreCase("class")){
				
				if(sKeyWords!=null){	
					
					pageHQL = "FROM Student as s WHERE s.banji like '%" + sKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Student as s WHERE s.banji like '%" + sKeyWords +"%'";
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
