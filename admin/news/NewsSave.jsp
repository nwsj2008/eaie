<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@page import="java.text.*,com.eaie.common.BasicDAO,com.eaie.tools.BufferString"%>
<%@page import="com.eaie.dbmanage.News" %>
<jsp:useBean id="news" class="com.eaie.dbmanage.News" scope="page">
<jsp:setProperty property="*" name="news"/>
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
  <% news.setPubtime(new java.util.Date());
     String id = request.getParameter("newsid");
     if(id==null){
     try{
         news.setHits(new Integer(0));
         BasicDAO.save(news);
         out.println(BufferString.getDoneMessage("NewsList.jsp"));
     }catch(Exception e){
         e.printStackTrace();
         out.println("SORRY wait change");
     }
     }
     else{
     try{
         News n = new News();
         n = (News)BasicDAO.queryById(News.class,Integer.parseInt(request.getParameter("newsid")));

         n.setBigclassid(Integer.parseInt(request.getParameter("bigclassid")));
         n.setSmallclassid(Integer.parseInt(request.getParameter("smallclassid")));
         if(request.getParameter("istop")==null)
             n.setIstop(null);
         else n.setIstop(Byte.parseByte(request.getParameter("istop")));
         if(request.getParameter("ispicnews")==null)
             n.setIspicnews(null);
         else n.setIspicnews(Byte.parseByte(request.getParameter("ispicnews")));   
         n.setHits(Integer.parseInt(request.getParameter("hits")));
         n.setTitle(request.getParameter("title"));
         n.setContent(request.getParameter("content"));
         n.setFilename(request.getParameter("filename"));
         n.setPubtime(new java.util.Date());
         n.setFileurl(request.getParameter("fileurl"));
         n.setImageurl(request.getParameter("imageurl"));
         n.setSmallclass(request.getParameter("smallclass"));
         n.setPart(request.getParameter("part"));
         n.setTeacher(request.getParameter("teacher"));
  
         BasicDAO.update(n);    
         out.println(BufferString.getDoneMessage("NewsList.jsp"));
     }catch(Exception e){
         e.printStackTrace();
         out.println("更新错误，WAIT CHANGE");
     }
     }
         
         
   %>
  	
	
  </body>
</html>
