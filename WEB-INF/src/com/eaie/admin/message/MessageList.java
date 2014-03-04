package com.eaie.admin.message;

import com.eaie.common.*;

import java.util.*;
public class MessageList {
	private static Page page = new Page();	;
	private String pageHQL;
	private String countHQL;	
	
	public MessageList(){
		
		pageHQL = "FROM Message order by givetime desc";
		countHQL ="SELECT COUNT(*) FROM Message";		
		page.setMaxPageNum(countHQL, "Teacher");		
	}

	public List getMessageList(int curPage, String id){
		try{
			pageHQL = "from Message as msg where msg.bigclassid= " + id + " order by msg.givetime desc";
			countHQL = "select count(*) from Message as msg where msg.bigclassid=" + id ;	
            page.setMaxPageNum(countHQL,"Teacher");            
		    return page.getAllByPage(curPage, pageHQL);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}	
	}
	public List getMessageListAll(int curPage){
		try{
			pageHQL = "from Message as msg order by msg.givetime desc";
			countHQL = "select count(*) from Message as msg ";	
            page.setMaxPageNum(countHQL,"Teacher");           
		    return page.getAllByPage(curPage, pageHQL);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}	
	}
	public Page getCurrentPage(){		
		return page;
	}
}
