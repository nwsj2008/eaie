<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
	
	session.removeAttribute("TMUSER");
	session.invalidate();
	response.sendRedirect("tmlogin.jsp");
 %>


