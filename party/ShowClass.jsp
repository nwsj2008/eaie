<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.column.ClassImp" %>
<%@ page import="com.eaie.party.ClassList" %>
<%@ page import="com.eaie.tools.DateTimeFormat" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int id = Integer.parseInt(request.getParameter("smallclassid"));
String className = null;
try{
	className = ClassImp.getSmallClassName(id);
}catch(Exception e)
{e.printStackTrace();}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><%=className%></title>
    <link rel="stylesheet" type="text/css" href="party/css/css.css">

  </head>
  
  <body background="party/images/bg2.jpg">
  <% int curPage = request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage"));
     ClassList list = new ClassList();
     try{
     List classList = list.getList(id,curPage);
   %>
  <%@ include file="/party/Header.jsp" %>
  <table width="762" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td>
	<table width="90%"  border="0" align="center" cellpadding="4" cellspacing="0">
 		<tr>
    		<td height="40" class="topic">您的位置：<a href="party/index.jsp">首页</a> &gt;&gt;&nbsp;<%=className%></td>
  		</tr>
	</table>
	<table width="600"  border="0" align="center" cellpadding="2" cellspacing="0" style="margin-top:20">
 		<tr class="topic">
    		<td width="30" height="30" align="center" class="td1"><strong>NO.</strong></td>
    		<td height="30" align="center" class="td1"><strong>标题</strong></td>
    		<td width="80" height="30" class="td1"><strong>添加时间</strong></td>
    		<td width="50" height="30" align="center" class="td1"><strong>点击量</strong></td>
 		</tr>
        <% for (int i=0; i<classList.size(); i++) {
           Object[] obj = (Object[])classList.get(i); %>
 		<tr class="topic">
   			<td height="30" align="center" class="line"><%=i+1%></td>
			<td height="30" class="line"><a href="party/ShowArticle.jsp?id=<%=obj[0]%>" target="_blank"><%=obj[1]%></a>
			 <%if (String.valueOf(obj[4]).equals("1")) {out.print("&nbsp;[图]");}%></td>
	        <td height="30" class="line"><%=DateTimeFormat.getDateString((Date)obj[2])%></td>
			<td height="30" align="center" class="line"><%=obj[3]%></td>
 		</tr>
        <% } %>
        <tr><td>&nbsp;</td></tr>
    </table>
    <form name="pageForm" method="post" action="party/ShowClass.jsp">
    <table width="700"  border="0" align="center" cellpadding="0" cellspacing="0">
    	<tr>
      		<td align="center" class="topic"><%@ include file="/party/PageMan.jsp" %></td>
    	</tr>
    	<input type="hidden" name="smallclassid" value="<%=id%>">
  	</table>
	</form>
    <br>
  </td>
  </tr>
  </table>
  <%@ include file="/party/Footer.jsp" %>
  <% }catch(Exception exc){exc.printStackTrace();} %>
  </body>
</html>
