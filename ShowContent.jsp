<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.news.*" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<html >
<head>
<base href="<%=basePath%>">
<title>北京交通大学电子信息工程学院</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	} %>
<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" background="images/blank-backpic.jpg">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="200" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type==null?1:type %>" frameborder="0" scrolling="no" width=170></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="580" height=100% valign=top align=right>
<%!
	News news;	
%>
<%
	String id = request.getParameter("id");
	
	String smallclassid = request.getParameter("smallclassid");
	if(id==null&&smallclassid==null){
		out.println("<center><font color='#333333'>没有您要找的内容</font></center>");
		return;
	}
	if(id!=null){		
		news = NewsImp.getNews(Integer.valueOf(id));
	}
	if(smallclassid!=null){		
		news = NewsImp.getContentNews(smallclassid);
	}
	if(news!=null){
		
		if(news.getImageurl()!=null&&!news.getImageurl().equals("")){
		
			String[] imageurl = news.getImageurl().split("\\|");			
%>
<table width="536" border="0" align="center" cellpadding="0" cellspacing="0" valign=top>
  <tr>
    <td><img src="UploadFiles/uppic/<%=imageurl[0]%>"></td>
  </tr>
</table>

<%
		}
%>
<br>
<table width="536"  border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td valign="top" class="news_content"><%=news.getContent() %></td>
  </tr>
</table>
<%
	}
 %>
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>

<jsp:include page="foot.jsp" flush="true"/>
</body>
</html>
