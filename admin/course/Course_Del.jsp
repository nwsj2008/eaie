<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.course.*" %>
<%@ page import="java.io.*" %>
<% 
	Course course;
	int id;
	File file;
    String	sFileUrl;
	String[] ids = request.getParameterValues("delid");	
	if(!ids.equals(null)){
		for(int i = 0;i<ids.length;i++){
		    id = Integer.parseInt(ids[i]);
		    course = CourseManage.getCourse(id);
			CourseManage.delCourse(id);
		}	
		
		out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","Course_List.jsp"));
	}
	 
	
%>

