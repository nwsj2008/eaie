package com.eaie.sbldxt.sbldstudent;
import java.util.List;
import com.eaie.common.Page;

public class SbldstudentList {
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  SbldstudentList(){	
		
		page = new Page();		
		pageHQL = "FROM Sbld";
		countHQL ="SELECT COUNT(*) FROM Sbld";
	}
	
	public List getSbldstudentList(int pageIndex,String csearchpart,String cKeyWords){
		
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
		
		
		page.setMaxPageNum(countHQL, "Sbldstudent");					
		return page.getAllByPage(pageIndex, pageHQL);			
	}	
	public Page getCurrentPage(){			
		return page;
	}	

}
