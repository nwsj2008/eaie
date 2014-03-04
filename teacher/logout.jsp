<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
	
	session.removeAttribute("TEACHER");
	session.invalidate();
	response.sendRedirect("login.jsp");
 %>


