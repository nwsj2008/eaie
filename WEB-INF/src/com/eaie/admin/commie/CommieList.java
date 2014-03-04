package com.eaie.admin.commie;

import java.util.List;

import com.eaie.common.Page;

public class CommieList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  CommieList(){	
		
		page = new Page();		
		pageHQL = "FROM Commie";
		countHQL ="SELECT COUNT(*) FROM Commie";
	}
	
	public List getCommieList(int pageIndex,String csearchpart,String cKeyWords){
		
		if(csearchpart!=null){
			if(csearchpart.equalsIgnoreCase("stuid")){
				
				if(cKeyWords!=null){	
					pageHQL = "FROM Commie as commie WHERE commie.stuid like '%" + cKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.stuid like '%" + cKeyWords +"%'";
				}			
			}
			if(csearchpart.equalsIgnoreCase("name")){
				
				if(cKeyWords!=null){	
					pageHQL = "FROM Commie as commie WHERE commie.name like '%" + cKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.name like '%" + cKeyWords +"%'";
				}		
				
				
			}
			if(csearchpart.equalsIgnoreCase("banji")){
				
				if(cKeyWords!=null){	
					pageHQL = "FROM Commie as commie WHERE commie.banji like '%" + cKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.banji like '%" + cKeyWords +"%'";
				}		
				
			}
			if(csearchpart.equalsIgnoreCase("branch")){
				
				if(cKeyWords!=null){	
					
					pageHQL = "FROM Commie as commie WHERE commie.branch like '%" + cKeyWords +"%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.branch like '%" + cKeyWords +"%'";
				}	
				
			}
		}
		
		
		page.setMaxPageNum(countHQL, "Commie");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	

}
