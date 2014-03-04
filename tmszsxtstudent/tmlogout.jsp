<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
	
	session.removeAttribute("USER");
	session.invalidate();
	response.sendRedirect("tmlogin.jsp");
 %>


