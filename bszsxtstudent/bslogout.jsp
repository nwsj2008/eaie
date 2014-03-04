<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
	
	session.removeAttribute("");
	session.invalidate();
	response.sendRedirect("bslogin.jsp");
 %>


