<%@ page contentType="text/html; charset=GBK"%>
<%
	
	session.removeAttribute("USER");
	session.invalidate();
	response.sendRedirect("login.jsp");
 %>


