<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.JavaScript" %>
<%@page import="com.eaie.admin.kxfzg.*;"%>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>留言批量删除</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <% try{
           boolean isDone = kxfzgNews.bulkDelInfo(request.getParameterValues("ele"));
           if(isDone)
           	  out.println(JavaScript.alertandRedirect("批量删除留言成功！","LookInfo.jsp"));
           else
              out.println(JavaScript.alertandRedirect("对不起，批量删除留言失败！","LookInfo.jsp"));
       }catch(Exception ex){
           ex.printStackTrace();
           out.println(JavaScript.alertandRedirect("对不起，批量删除留言失败！","LookInfo.jsp"));
       }
  
     %>
  </body>
</html>
