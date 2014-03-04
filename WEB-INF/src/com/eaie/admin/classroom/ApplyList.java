package com.eaie.admin.classroom;

import com.eaie.common.*;

import java.util.*;

public class ApplyList {
	
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  ApplyList(){
		
		page = new Page();
	}
	
	public List getFileList(int pageIndex){	
		
		pageHQL = "FROM Classroom as c order by c.takedate desc,c.id desc";
		countHQL ="SELECT COUNT(*) FROM Classroom";			
		page.setMaxPageNum(countHQL, "Classroom");			
		return page.getAllByPage(pageIndex, pageHQL);		
	}	
	public Page getCurrentPage(){
		
		return page;
	}	


}
