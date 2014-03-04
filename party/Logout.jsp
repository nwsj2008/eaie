<%@ page language="java" pageEncoding="GBK"%>
<%
		session.removeAttribute("Commie");
		session.invalidate();
		response.sendRedirect("index.jsp");

%>
