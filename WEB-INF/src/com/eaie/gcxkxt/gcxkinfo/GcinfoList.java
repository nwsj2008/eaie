package com.eaie.gcxkxt.gcxkinfo;

import java.util.List;

import com.eaie.common.Page;

public class GcinfoList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public GcinfoList(){	
		
		page = new Page();		
		pageHQL = "FROM Gcxk";
		countHQL ="SELECT COUNT(*) FROM Gcxk";
	}
	
	public List getGcinfoList(int pageIndex){
		
		
		
		
		page.setMaxPageNum(countHQL, "Gcxk");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	
}

