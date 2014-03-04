package com.eaie.gcxkxt.gcteacher;
import java.util.List;
import com.eaie.common.Page;
public class GcteacherList {

	
	
		private static Page page;
		private String pageHQL;
		private String countHQL;	
		
		public GcteacherList(){	
			
			page = new Page();		
			pageHQL = "FROM Gcteacher";
			countHQL ="SELECT COUNT(*) FROM Gcteacher";
		}
		
		public List getGcteacherList(int pageIndex){
			page.setMaxPageNum(countHQL, "Gcteacher");					
			return page.getAllByPage(pageIndex, pageHQL);			
		}	
		public Page getCurrentPage(){			
			return page;
		}	
	}
