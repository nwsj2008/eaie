package com.eaie.admin.leader;

import java.util.List;

import com.eaie.common.Page;

public class LeaderList {
	private static Page page = new Page();
	private String pageHQL;
	private String countHQL;	
	
	public LeaderList(){
		pageHQL = "FROM Leader";
		countHQL ="SELECT COUNT(*) FROM Leader";		
		page.setMaxPageNum(countHQL, "Leader");	
		
	}
	
	public List getLeaderList(int pageIndex){		
		
		return page.getAllByPage(pageIndex, pageHQL);		
	}
	public Page getCurrentPage(){		
		return page;
	}	

}
