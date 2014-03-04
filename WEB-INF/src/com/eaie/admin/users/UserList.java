package com.eaie.admin.users;

import com.eaie.common.*;
import java.util.*;
public class UserList {
	
	private static Page page = new Page();
	private String pageHQL;
	private String countHQL;	
	
	public  UserList(){
		
		pageHQL = "FROM Teacher";
		countHQL ="SELECT COUNT(*) FROM Teacher";		
		page.setMaxPageNum(countHQL, "Teacher");		
	}
	
	public List getUserList(int pageIndex){		
		
		return page.getAllByPage(pageIndex, pageHQL);		
	}
	public Page getCurrentPage(){		
		return page;
	}	
}
