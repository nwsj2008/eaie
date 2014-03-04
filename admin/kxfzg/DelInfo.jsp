<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.tools.JavaScript" %>
<%@ page import="com.eaie.dbmanage.*"%>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>…æ≥˝¡Ù—‘</title>


  </head>
  
  <body>
    <% 
        String id = request.getParameter("id");
        int temp = Integer.parseInt(id);
        Leaveinfo n = new Leaveinfo();
    try {		
			 
			n=(Leaveinfo)BasicDAO.queryById(Leaveinfo.class, temp);
			BasicDAO.delete(n);						
		out.println(JavaScript.alertandRedirect("…æ≥˝≥…π¶£°","LookInfo.jsp"));
	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("…æ≥˝ ß∞‹£°"));

	}
  
     %>
  </body>
</html>
