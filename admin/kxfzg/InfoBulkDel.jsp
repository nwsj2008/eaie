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
    
    <title>��������ɾ��</title>
    
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
           	  out.println(JavaScript.alertandRedirect("����ɾ�����Գɹ���","LookInfo.jsp"));
           else
              out.println(JavaScript.alertandRedirect("�Բ�������ɾ������ʧ�ܣ�","LookInfo.jsp"));
       }catch(Exception ex){
           ex.printStackTrace();
           out.println(JavaScript.alertandRedirect("�Բ�������ɾ������ʧ�ܣ�","LookInfo.jsp"));
       }
  
     %>
  </body>
</html>
