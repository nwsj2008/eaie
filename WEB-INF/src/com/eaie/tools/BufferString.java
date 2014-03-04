package com.eaie.tools;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Bigclass;
import com.eaie.dbmanage.Smallclass;

public class BufferString {
	
	public static String getDoneMessage(String url){
		String message = null;
		StringBuffer doneScript = new StringBuffer();
		doneScript.append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		doneScript.append("<HTML>");
		doneScript.append("  <HEAD><TITLE></TITLE></HEAD>");
		doneScript.append("  <BODY>");
		doneScript.append("    <script>");
		doneScript.append("alert('您的操作已成功!')");
		doneScript.append("</script>");
		doneScript.append("<meta http-equiv='refresh' content='0;url="+url+"'>");
		doneScript.append("  </BODY>");
		doneScript.append("</HTML>");
		message=doneScript.toString();
		return message;
	}
	
	public static String getFailMessage(String url){
		String message = null;
		StringBuffer doneScript = new StringBuffer();
		doneScript.append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		doneScript.append("<HTML>");
		doneScript.append("  <HEAD><TITLE></TITLE></HEAD>");
		doneScript.append("  <BODY>");
		doneScript.append("    <script>");
		doneScript.append("alert('对不起，您的操作失败!')");
		doneScript.append("</script>");
		doneScript.append("<meta http-equiv='refresh' content='0;url="+url+"'>");
		doneScript.append("  </BODY>");
		doneScript.append("</HTML>");
		message=doneScript.toString();
		return message;
	}
	
	public static String isExist(){
		String message = null;
		StringBuffer doneScript = new StringBuffer();
		doneScript.append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		doneScript.append("<HTML>");
		doneScript.append("  <HEAD><TITLE></TITLE></HEAD>");
		doneScript.append("  <BODY>");
		doneScript.append("    <script>");
		doneScript.append("alert('您添加的栏目名已存在,请重新输入')");
		doneScript.append("</script>");
		doneScript.append("  </BODY>");
		doneScript.append("</HTML>");
		message=doneScript.toString();
		return message;
	}
	
	public static String getNewsList(String goClass,String keyWord){
		String message = null;
		int classId = (goClass==null||goClass.equals(""))?-1:Integer.parseInt(goClass);	
		String hqlClass = "from Bigclass as b order by b.id";
		StringBuffer newsList = new StringBuffer();
	    try{
	        List classList = BasicDAO.queryByHql(hqlClass);
	        Iterator itBig = classList.iterator();
	        while(itBig.hasNext()){
	        	Bigclass bigClass = (Bigclass)itBig.next();
	        	Smallclass small;
	        	if((bigClass.getBigclassid())==classId){
	        		if(keyWord==null || keyWord.equals(""))
	        			newsList.append("<option selected value="+bigClass.getBigclassid()+">"+bigClass.getBigclass()+"</option>");
	        		else
	        			newsList.append("<option value="+bigClass.getBigclassid()+">"+bigClass.getBigclass()+"</option>");
	        	}
	        	else	
	        	    newsList.append("<option value="+bigClass.getBigclassid()+">"+bigClass.getBigclass()+"</option>");
	        	Set smallClass = bigClass.getSmallclasses();            	
	        	if (!smallClass.isEmpty()) {
	        	   	Object[] smallList = smallClass.toArray();
	        		int i;
	                for (i=0;i<(smallList.length-1);i++){
	                   small = (Smallclass)smallList[i];
	                   if(small.getSmallclassid()==classId){
	                	   if(keyWord==null || keyWord.equals(""))
	                		   newsList.append("<option selected value="+small.getSmallclassid()+">&nbsp;├"+small.getSmallclass()+"</option>");
	                	   else
	                		   newsList.append("<option value="+small.getSmallclassid()+">&nbsp;├"+small.getSmallclass()+"</option>");
	                   }
	                   else	   
	                       newsList.append("<option value="+small.getSmallclassid()+">&nbsp;├"+small.getSmallclass()+"</option>");
	                }
	                small = (Smallclass)smallList[smallList.length-1];
	                if(small.getSmallclassid()==classId)
	                	if(keyWord==null || keyWord.equals(""))
	                		newsList.append("<option selected value="+small.getSmallclassid()+">&nbsp;└"+small.getSmallclass()+"</option>");
	                	else	   
	                		newsList.append("<option value="+small.getSmallclassid()+">&nbsp;└"+small.getSmallclass()+"</option>");
	                else
	                	newsList.append("<option value="+small.getSmallclassid()+">&nbsp;└"+small.getSmallclass()+"</option>");
	        	}
	        }
	        message=newsList.toString();
			return message;
	    }catch(Exception e){
	         e.printStackTrace();
	         return null;
	    }   
	}
	
	public static String isNull(String word){
		String message = null;
		StringBuffer doneScript = new StringBuffer();
		doneScript.append("<tr>");
		doneScript.append("<td>");
		doneScript.append("<div><strong>");
		doneScript.append(word);
		doneScript.append("</strong></div>");
		doneScript.append("</td>");
		doneScript.append("</tr>");
		message=doneScript.toString();
		return message;
	}

}
