<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.JavaScript" %>
<%@ page import="com.eaie.admin.news.NewsImp" %>
<%@ page import="com.eaie.dbmanage.Bigclass" %>
<%@ page import="com.eaie.dbmanage.Smallclass" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
  <% try{
         List bigClassList = NewsImp.getAllList();
 		 if (bigClassList.isEmpty())
         	out.println(JavaScript.alertandRedirect("������𲻴��ڣ�������Ӵ���","../column/AddBigClass.jsp"));
         else{%>
           
  <table width="80%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border" style="margin-top:30px">
  <tr align="center" class="titlebg">
    <td colspan="2">����ѡ���������</td>
  </tr>
    <%
         	 Iterator it = bigClassList.iterator();
             Bigclass bigClass = new Bigclass();
             while (it.hasNext()) {
            	 bigClass = (Bigclass)it.next(); 
 		 	
   %>
  
  
  <tr class="title2bg">
     <td colspan="2"><img src="admin/images/add.gif" width="15" height="15"><%=bigClass.getBigclass()%></td>
  </tr>
  <% Set smallClassSet = bigClass.getSmallclasses();
     if (!smallClassSet.isEmpty()) {
        Iterator itSmall = smallClassSet.iterator();
        while (itSmall.hasNext()){
           Smallclass smallClass = (Smallclass)itSmall.next();
  %>
  <tr class="tdbg">
     <td width="50%">&nbsp;&nbsp;&nbsp;<img src="admin/images/sub.gif" width="15" height="15"><%=smallClass.getSmallclass()%></td>
     <td width="50%" align="center"><a href="admin/news/NewsEdit.jsp?smallclassid=<%=smallClass.getId()%>">�������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin/news/NewsList.jsp?goClass=<%=smallClass.getSmallclassid()%>&curPage=1">��������</a></td>
  </tr>
  <%     } 
  	  }
  	  }
  	  }
  %>
  </table>
  <%}catch(Exception e){e.printStackTrace();} %>
  </body>
</html>
