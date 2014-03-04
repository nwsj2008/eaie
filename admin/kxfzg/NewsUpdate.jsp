<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@page import="java.text.*"%>
<%@page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>

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
         int id=Integer.parseInt(request.getParameter("id"));
        // int temp = Integer.parseInt(id);
         KxfzgNews n =new KxfzgNews();
         n=(KxfzgNews)BasicDAO.queryById(KxfzgNews.class,id);
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
         String fileurl = n.getFileurl();
         n.setFileurl(request.getParameter("fileurl"));        
         String imageurl=n.getImageurl();
         n.setImageurl(request.getParameter("imageurl"));
         
         //n.setPart("团委");
         //n.setHit(0);
         BasicDAO.update(n);    
         out.println(BufferString.getDoneMessage("NewsList.jsp"));
   
         
   %>
  	
	
  </body>
</html>
