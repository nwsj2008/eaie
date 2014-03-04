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
		    Date dt=new Date();//�������Ҫ��ʽ,��ֱ����dt,dt���ǵ�ǰϵͳʱ��
		    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//������ʾ��ʽ
	        String nowdate="";
	        nowdate= df.format(dt);//��DateFormat��format()������dt�л�ȡ����yyyy/MM/dd HH:mm:ss��ʽ��ʾ
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
