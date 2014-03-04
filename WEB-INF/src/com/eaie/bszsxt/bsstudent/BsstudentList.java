package com.eaie.bszsxt.bsstudent;
import java.util.List;
import com.eaie.common.Page;
public class BsstudentList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  BsstudentList(){	
		
		page = new Page();		
		pageHQL = "FROM Bsstudent";
		countHQL ="SELECT COUNT(*) FROM Bsstudent";
	}
	
	public List getBsstudentList(int pageIndex){
		
		
		
		
		page.setMaxPageNum(countHQL, "Bsstudent");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	
}
