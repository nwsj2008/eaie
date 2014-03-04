<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>

<%
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");
	String order = request.getParameter("order");
	if(student==null){
		
		return;
	}	
	if(order==null){
		
		return;
	}
	Expchose chose = ChoseManage.getExpchose(student,order);
	if(chose==null){		
		return;
	}
	try{
		
		ChoseManage.deleteExpchose(chose);
		out.println(JavaScript.alertandRedirect("É¾³ýÖ¾Ô¸³É¹¦","ChoseResualt.jsp"));
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("É¾³ýÖ¾Ô¸Ê§°Ü"));
	}
%>