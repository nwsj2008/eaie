<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@page import="java.text.*,com.eaie.common.BasicDAO,com.eaie.tools.BufferString"%>
<%@page import="com.eaie.dbmanage.*" %>
<jsp:useBean id="n" class="com.eaie.dbmanage.KxfzgNews" scope="page">
<jsp:setProperty property="*" name="n"/>
</jsp:useBean>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <base href="<%=basePath%>">     
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
    <title>添加新闻</title>   

  </head>
  
  <body>
  <% 
         if(request.getParameter("istop")==null)
             n.setIstop(0);
         else n.setIstop(Integer.parseInt(request.getParameter("istop")));
         if(request.getParameter("ispicnews")==null)
             n.setIspicnews(0);
         else n.setIspicnews(Integer.parseInt(request.getParameter("ispicnews")));   
         n.setTitle(request.getParameter("title"));
         n.setContent(request.getParameter("content"));
         n.setFilename(request.getParameter("filename"));
         n.setPubtime(new java.util.Date());
         n.setFileurl(request.getParameter("fileurl"));
         n.setImageurl(request.getParameter("imageurl"));
         n.setPart("团委");
         n.setHit(0);
         BasicDAO.save(n);    
         out.println(BufferString.getDoneMessage("NewsList.jsp"));
   
         
   %>
  	
	
  </body>
</html>
