<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.tools.*" %>
<%!
	String[] stuids;	
	
 %>
<%
	stuids = request.getParameterValues("delid");

	if(stuids!=null){
		
		try{
			for(int i=0 ;i<stuids.length;i++){
			
			
				Student student = StudentManage.getStudent(stuids[i]);
				if(student!=null){			
					student.setIsaid("");
					StudentManage.UpdateStudent(student);			
				}
			}
			out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","AidStudentList.jsp"));
		}catch(Exception ex){
		
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¡"));
		}
	}
	
%>