<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
	
	session.removeAttribute("EXPSTUDENT");
	session.invalidate();
	response.sendRedirect("login.jsp");
 %>
