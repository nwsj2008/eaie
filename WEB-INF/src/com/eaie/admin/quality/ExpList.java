package com.eaie.admin.quality;

import java.util.List;

import com.eaie.common.Page;

public class ExpList {
	
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  ExpList(){	
		
		page = new Page();		
		pageHQL = "FROM Innovativelexp AS i ORDER BY i.expid DESC";
		countHQL ="SELECT COUNT(*) FROM Innovativelexp";
	}
	
	public List getList(int pageIndex){				
		page.setMaxPageNum(countHQL, "Teacher");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public List getPassList(int pageIndex){		
		
		pageHQL = "FROM Innovativelexp AS i WHERE i.ispass > 0 ORDER BY i.expid DESC";
		countHQL ="SELECT COUNT(*) FROM Innovativelexp AS i WHERE i.ispass>0";
		page.setMaxPageNum(countHQL, "Teacher");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}

}
