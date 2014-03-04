<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.search.Search" %>
<%@ page import="com.eaie.dbmanage.Upfile" %>
<%@ page import="com.eaie.tools.DateTimeFormat" %>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="file" class="com.eaie.dbmanage.Upfile" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>站内搜索</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {   
        if(!isNull("keyWord","搜索关键字"))
            return false;
        return true;
    }
    </script>

  </head>
  <body leftmargin="0" rightmargin="0">
  <% String keyWord = request.getParameter("keyWord"); 
     int curPage = request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage"));
     String root= "search/SearchFile.jsp";
  %>
  <table width="100%" cellpadding="0" cellspacing="0">
  <% if(keyWord==null || keyWord.equals("")) { %>
  <tr>
  	<td>	
  	    <form name="search" method="post" action="search/SearchFile.jsp" onSubmit="return checkForm()">
  		<table width="100%" align="center">
  			<tr>
  				<td height="55" width="130" align="left" rowspan="2" valign="bottom"><img src="images/search.gif"></td>
  				<td valign="bottom"><div class="search">&nbsp;&nbsp;<a href="search/Search.jsp" style="text-decoration:underline"><font color="#0000CD">新闻</font></a>&nbsp;&nbsp;<a href="search/SearchPeo.jsp" style="text-decoration:underline"><font color="#0000CD">用户</font></a>&nbsp;&nbsp;<strong><font color="000000">文件</font></strong></div></td>
  			</tr>
  			<tr>
  				<td valign="top" align="left">&nbsp;&nbsp;<input type="text" name="keyWord" id="keyWord" size="40">
  				&nbsp;<input name="submit" type="submit" value=" 搜  索 "><input name="curPage" value="1" type="hidden">
  				</td>
  			</tr>
  		</table>	
  		</form>
  	</td>
  </tr>	

  <%}else{ 
  Search search = new Search();
  List list = search.getAllFileList(keyWord,curPage);
  if (list.isEmpty()){  
  %>
  <tr>
  	<td>
  		<form name="searchForm" method="post" action="search/SearchFile.jsp" onSubmit="return checkForm()">
  		<table width="100%" align="center" cellspacing="0" cellpadding="0">
  			<tr>
  				<td height="55" width="130" align="left" rowspan="2" valign="bottom"><img src="images/search.gif"></td>
  				<td valign="bottom"><div class="search">&nbsp;&nbsp;<a href="search/Search.jsp" style="text-decoration:underline"><font color="#0000CD">新闻</font></a>&nbsp;&nbsp;<a href="search/SearchPeo.jsp" style="text-decoration:underline"><font color="#0000CD">用户</font></a>&nbsp;&nbsp;<strong><font color="000000">文件</font></strong></div></td>
  			</tr>
  			<tr>
  				<td valign="top" align="left">&nbsp;&nbsp;<input type="text" name="keyWord" id="keyWord" size="40" value="<%=search.getKeyWord(keyWord)%>">
  				&nbsp;<input name="submit" type="submit" value=" 搜  索 ">
  				<input name="curPage" value="<%=1%>" type="hidden"></td>
  			</tr>
  			<tr>
  				<td colspan="2" bgcolor="#D9E1F7" height="21"><div align="right">没有找到相关文件，用时：<font color="red"><%=search.getRunTime() %></font>秒&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
  			</tr>
  		</table>	
  		</form>
  	</td>
  </tr>
  <%} else {%>
  <tr>
  	<td colspan="2">
  		<form name="searchForm" method="post" action="search/SearchFile.jsp" onSubmit="return checkForm()">
  		<table width="100%" align="center" cellspacing="0" cellpadding="0">
  			<tr>
  				<td height="55" width="130" align="left" rowspan="2" valign="bottom"><img src="images/search.gif"></td>
  				<td valign="bottom"><div class="search">&nbsp;&nbsp;<a href="search/Search.jsp" style="text-decoration:underline"><font color="#0000CD">新闻</font></a>&nbsp;&nbsp;<a href="search/SearchPeo.jsp" style="text-decoration:underline"><font color="#0000CD">用户</font></a>&nbsp;&nbsp;<strong><font color="000000">文件</font></strong></div></td>
  			</tr>
  			<tr>
  				<td valign="top" align="left">&nbsp;&nbsp;<input type="text" name="keyWord" id="keyWord" size="40" value="<%=search.getKeyWord(keyWord)%>">
  				&nbsp;<input name="submit" type="submit" value=" 搜  索 ">
  				<input name="curPage" value="<%=1%>" type="hidden"></td>
  			</tr>
  			<tr>
  				<td colspan="2" bgcolor="#D9E1F7" height="21"><div align="right">找到相关文件约<%=search.getRowsNum()%>个，以下是第<%=(curPage-1)*15+1%>-<%=curPage*15<search.getRowsNum()?curPage*15:search.getRowsNum()%>个，用时：<font color="red"><%=search.getRunTime() %></font>秒&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
  			</tr>
  		</table>	
  		</form>
  	</td>
  </tr>
    
  <tr>
  <td width="75%">
  <table>
  <% Iterator it = list.iterator();
  	 while (it.hasNext()) {
     	file = (Upfile)it.next();
  %>	
  <tr>
  	<td>
  		<table width="580px" style="margin-left:12px">
  			<tr>
  				<td><%=search.getImageFile(file.getFilename())%>&nbsp;&nbsp;<a href="download.jsp?id=<%=file.getId() %>" target="_blank"><font size="3" color="#0000CD"><%=search.getDocName(file.getFilename())%></font></a></td>
  			</tr>
  			<tr>
  				<td><div class="searchInfo">文章大小:<%=file.getFilesize()%>&nbsp;&nbsp;发布时间:<%=DateTimeFormat.getDateString(file.getUptime())%>&nbsp;&nbsp;下载次数:<%=file.getDownnum()%></div></td>
  			</tr>
  			<tr>
  				<td>&nbsp;</td>
  			</tr>
  		</table>
  	</td>
  </tr>
  <tr>
  <%} %>
  </tr>	
  <tr>
  	<td>&nbsp;</td>
  <tr>
  <tr>
  	<td>
  		  <%@include file="/search/Sfoot.jsp" %>
  	</td>
  </tr>
  </table>
  </td>
  </tr>
  <% } 
  } %>
  </body>
</html>
