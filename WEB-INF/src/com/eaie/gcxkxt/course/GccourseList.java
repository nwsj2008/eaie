package com.eaie.gcxkxt.course;
import java.util.List;
import com.eaie.common.Page;
public class GccourseList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public GccourseList(){	
		
		page = new Page();		
		pageHQL = "FROM Gccourse";
		countHQL ="SELECT COUNT(*) FROM Gccourse";
	}
	
	public List getGcstudentList(int pageIndex){
		page.setMaxPageNum(countHQL, "Gccourse");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	
}
