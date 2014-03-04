package com.eaie.admin.lecture;


import com.eaie.common.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.*;
public class LectureList {
	private static Page page = new Page();	;
	private String pageHQL;
	private String countHQL;	
	
	public  LectureList(){
		
		pageHQL = "FROM Lecture AS l ORDER BY l.id DESC,l.pubtime DESC";
		countHQL ="SELECT COUNT(*) FROM Lecture";		
		page.setMaxPageNum(countHQL, "Teacher");		
	}
	
	public List getLectureList(int pageIndex){		
		
		return page.getAllByPage(pageIndex, pageHQL);		
	}
	public Page getCurrentPage(){		
		return page;
	}	
	public List getList(String nowdate){	
		String sql="from Lecture where endtime >= '" + nowdate + "'";		
		try{
		    List list = BasicDAO.queryByHql(sql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	public static  String getDate() {
		    Date dt=new Date();//如果不需要格式,可直接用dt,dt就是当前系统时间
		    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置显示格式
	        String nowdate="";
	        nowdate= df.format(dt);//用DateFormat的format()方法在dt中获取并以yyyy/MM/dd HH:mm:ss格式显示
	        try {
	        	//System.out.print(nowdate);
				//Date date = df.parse(nowdate);
				//System.out.print(date);
				return nowdate;
			} catch (Exception ex) {
				return null;
			}
	}
}
