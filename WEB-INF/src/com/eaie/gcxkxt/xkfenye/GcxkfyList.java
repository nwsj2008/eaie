package com.eaie.gcxkxt.xkfenye;

import java.util.List;
import com.eaie.common.Page;
public class GcxkfyList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public GcxkfyList(){	
		
		page = new Page();		
		pageHQL = "FROM Gcstudent";
		countHQL ="SELECT COUNT(*) FROM Gcstudent";
	}
	
	public List getGcxkfyList(int pageIndex,String tid){
		if(tid!=null){
		pageHQL="From Gcxk gc where tid='"+tid+"'";
		countHQL = "SELECT COUNT(*) FROM Gcxk gc WHERE gc.tid ='"+tid+"'";
		}
	
		page.setMaxPageNum(countHQL, "Gcstudent");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	
}

