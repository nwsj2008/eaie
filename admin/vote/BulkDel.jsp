<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.tools.JavaScript" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BulkDel.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
      String type = request.getParameter("type");
      if (type.equals("item")){
      int id = Integer.parseInt(request.getParameter("paperid")); 
      try{        
           boolean isDone = VoteImp.bulkDelItem(request.getParameterValues("ele"));
           if(isDone)
           	  out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","VoteItems.jsp?id="+id));
           else
              out.println(JavaScript.alertandRedirect("É¾³ýÊ§°Ü£¡","VoteItems.jsp?id="+id));
       }catch(Exception ex){
           ex.printStackTrace();
           out.println(JavaScript.alertandRedirect("É¾³ýÊ§°Ü£¡","VoteItems.jsp?id="+id));
       }
       }else if(type.equals("vote")){
        try{        
           boolean isDone = VoteImp.bulkDelVote(request.getParameterValues("ele"));
           if(isDone)
           	  out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","VoteList.jsp"));
           else
              out.println(JavaScript.alertandRedirect("É¾³ýÊ§°Ü£¡","VoteList.jsp"));
       }catch(Exception ex){
           ex.printStackTrace();
           out.println(JavaScript.alertandRedirect("É¾³ýÊ§°Ü£¡","VoteList.jsp"));
       }
       }
    %>
  </body>
</html>
