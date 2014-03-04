package com.eaie.gcxkxt.gcstudent;
import java.util.List;
import com.eaie.common.Page;
public class GcstudentList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public GcstudentList(){	
		
		page = new Page();		
		pageHQL = "FROM Gcstudent";
		countHQL ="SELECT COUNT(*) FROM Gcstudent";
	}
	
	public List getGcstudentList(int pageIndex){
		
		page.setMaxPageNum(countHQL, "Gcstudent");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	
}
