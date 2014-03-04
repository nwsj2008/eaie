<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.search.Search" %>
<%@ page import="com.eaie.dbmanage.News" %>
<%@ page import="com.eaie.tools.DateTimeFormat" %>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="news" class="com.eaie.dbmanage.News" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>վ������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {   
        if(!isNull("keyWord","�����ؼ���"))
            return false;
        return true;
    }
    </script>

  </head>
  <body leftmargin="0" rightmargin="0">
  <% String keyWord = request.getParameter("keyWord"); 
     int curPage = request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage"));
     String root= "search/SearchPeo.jsp";
  %>
  <table width="100%" cellpadding="0" cellspacing="0">
  <% if(keyWord==null || keyWord.equals("")) { %>
  <tr>
  	<td>	
  	    <form name="search" method="post" action="search/SearchPeo.jsp" onSubmit="return checkForm()">
  		<table width="100%" align="center">
  			<tr>
  				<td height="55" width="130" align="left" rowspan="2" valign="bottom"><img src="images/search.gif"></td>
  				<td valign="bottom"><div class="search">&nbsp;&nbsp;<a href="search/Search.jsp" style="text-decoration:underline"><font color="#0000CD">����</font></a>&nbsp;&nbsp;<strong><font color="000000">�û�</font></strong>&nbsp;&nbsp;<a href="search/SearchFile.jsp" style="text-decoration:underline"><font color="#0000CD">�ļ�</font></a></div></td>
  			</tr>
  			<tr>
  				<td valign="top" align="left">&nbsp;&nbsp;<input type="text" name="keyWord" id="keyWord" size="40">
  				&nbsp;<input name="submit" type="submit" value=" ��  �� "><input name="curPage" value="1" type="hidden">
  				</td>
  			</tr>
  		</table>	
  		</form>
  	</td>
  </tr>	

  <%}else{ 
  Search search = new Search();
  List list = search.getAllUserList(keyWord,curPage);
  if (list.isEmpty()){  
  %>
  <tr>
  	<td>
  		<form name="searchForm" method="post" action="search/SearchPeo.jsp" onSubmit="return checkForm()">
  		<table width="100%" align="center" cellspacing="0" cellpadding="0">
  			<tr>
  				<td height="55" width="130" align="left" rowspan="2" valign="bottom"><img src="images/search.gif"></td>
  				<td valign="bottom"><div class="search">&nbsp;&nbsp;<a href="search/Search.jsp" style="text-decoration:underline"><font color="#0000CD">����</font></a>&nbsp;&nbsp;<strong><font color="000000">�û�</font></strong>&nbsp;&nbsp;<a href="search/SearchFile.jsp" style="text-decoration:underline"><font color="#0000CD">�ļ�</font></a></div></td>
  			</tr>
  			<tr>
  				<td valign="top" align="left">&nbsp;&nbsp;<input type="text" name="keyWord" id="keyWord" size="40" value="<%=search.getKeyWord(keyWord)%>">
  				&nbsp;<input name="submit" type="submit" value=" ��  �� ">
  				<input name="curPage" value="<%=1%>" type="hidden"></td>
  			</tr>
  			<tr>
  				<td colspan="2" bgcolor="#D9E1F7" height="21"><div align="right">û���ҵ�������£���ʱ��<font color="red"><%=search.getRunTime() %></font>��&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
  			</tr>
  		</table>	
  		</form>
  	</td>
  </tr>
  <%} else {%>
  <tr>
  	<td colspan="2">
  		<form name="searchForm" method="post" action="search/SearchPeo.jsp" onSubmit="return checkForm()">
  		<table width="100%" align="center" cellspacing="0" cellpadding="0">
  			<tr>
  				<td height="55" width="130" align="left" rowspan="2" valign="bottom"><img src="images/search.gif"></td>
  				<td valign="bottom"><div class="search">&nbsp;&nbsp;<a href="search/Search.jsp" style="text-decoration:underline"><font color="#0000CD">����</font></a>&nbsp;&nbsp;<strong><font color="000000">�û�</font></strong>&nbsp;&nbsp;<a href="search/SearchFile.jsp" style="text-decoration:underline"><font color="#0000CD">�ļ�</font></a></div></td>
  			</tr>
  			<tr>
  				<td valign="top" align="left">&nbsp;&nbsp;<input type="text" name="keyWord" id="keyWord" size="40" value="<%=search.getKeyWord(keyWord)%>">
  				&nbsp;<input name="submit" type="submit" value=" ��  �� ">
  				<input name="curPage" value="<%=1%>" type="hidden"></td>
  			</tr>
  			<tr>
  				<td colspan="2" bgcolor="#D9E1F7" height="21"><div align="right">�ҵ��������Լ<%=search.getRowsNum()%>ƪ�������ǵ�<%=(curPage-1)*15+1%>-<%=curPage*15<search.getRowsNum()?curPage*15:search.getRowsNum()%>ƪ����ʱ��<font color="red"><%=search.getRunTime() %></font>��&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
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
     	news = (News)it.next();
  %>	
  <tr>
  	<td>
  		<table width="580px" style="margin-left:12px">
  			<tr>
  				<td><a href="ShowArticle.jsp?id=<%=news.getId()%>" target="_blank"><div class="searchTitle"><%=news.getTitle()%></div></a></td>
  			</tr>
  			<tr>
  				<td><div class="searchContent"><%=search.getUserContent(news)%></div></td>
  			</tr>
  			<tr>
  				<td><div class="searchInfo">�����ˣ�<font color="red"><%=news.getTeacher()%></font>&nbsp;�������:<%=news.getSmallclass()%>&nbsp;����ʱ��:<%=DateTimeFormat.getDateString(news.getPubtime())%>&nbsp;�������:<%=news.getHits()%></div></td>
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
