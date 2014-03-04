package com.eaie.admin.upfile;

import com.eaie.common.*;

import java.util.*;

public class UpFileList {
	
	private static Page page;
	private String pageHQL;
	private String countHQL;	
	
	public  UpFileList(){
		
		page = new Page();
	}
	
	public List getFileList(int pageIndex){	
		
		pageHQL = "FROM Upfile as file order by file.uptime desc";
		countHQL ="SELECT COUNT(*) FROM Upfile";			
		page.setMaxPageNum(countHQL, "Upfile");			
		return page.getAllByPage(pageIndex, pageHQL);		
	}
	public List searchFile(int pageIndex,String sKeyWords){
	
		pageHQL = "FROM Upfile as file where file.filename like '%"+sKeyWords+"%'" + " order by file.uptime desc";
		countHQL = "SELECT COUNT(*) FROM Upfile as file where file.filename like '%"+sKeyWords+"%'";
		page.setMaxPageNum(countHQL, "Upfile");	
		return getFileList(pageIndex);
	}
	public List getFileListByBigClassId(int pageIndex,int bidClassId){
		
		pageHQL = "FROM Upfile as file where file.bigclassid = " + String.valueOf(bidClassId)+ " order by file.uptime desc";
		countHQL ="SELECT COUNT(*) FROM Upfile as file where file.bigclassid = " + String.valueOf(bidClassId);		
		page.setMaxPageNum(countHQL, "Upfile");			
		return page.getAllByPage(pageIndex, pageHQL);			
		
	}
	public Page getCurrentPage(){
		
		return page;
	}	

}
