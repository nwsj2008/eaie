<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.news.NewsImp" %>
<%@ page import="com.eaie.tools.JavaScript,com.eaie.tools.Image" %>
<jsp:useBean id="news" class="com.eaie.dbmanage.News" scope="page"/>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int id = Integer.parseInt(request.getParameter("id"));
try{
	news = NewsImp.getNews(id);
	NewsImp.updateNewHits(news);
}catch(Exception e)
{e.printStackTrace();}	
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><%=news.getTitle()==null?"":news.getTitle()%></title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">

  </head>
  
  <body background="party/images/bg2.jpg">
  <%if (news == null){
		out.print(JavaScript.alertandRedirect("对不起，查询新闻出错，或者您查找的新闻不存在！","index.jsp"));
    }else{%>
  <%@ include file="/party/Header.jsp" %>
  
  <table width="762" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td>
    <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20">
      <tr>
        <td height="45" align="center" valign="bottom" class="main_title"><%=news.getTitle()%></td>
      </tr>
      <tr>
        <td height="35" align="center" class="main_time">来源：<%=news.getPart()%>&nbsp;&nbsp;&nbsp;时间：<%=news.getPubtime()%>&nbsp;&nbsp;&nbsp;点击：<%=news.getHits()%>&nbsp;次</td>
      </tr>
      <tr><td>&nbsp;</td></tr>
      <% if(news.getImageurl()!=null&&!news.getImageurl().equals("")){ 
		 	String[] imageurl = news.getImageurl().split("\\|");%>
	  <tr>
	  	<td>
	    <table width="400" border="0" align="center" cellpadding="5" cellspacing="0">
		<% for(int i = 0;i<imageurl.length; i++){%>
			<tr>
				<td align="center">
					<img src="UploadFiles/uppic/<%=imageurl[i]%>" width="400" border="0">										
				</td>
			</tr>
		<% } %>
		    <tr><td>&nbsp;</td></tr>
		</table>
		</td>
	  </tr>
	  <%}%>

	  <tr>
        <td class="main_content">
		<%=news.getContent()%><br><br>
		<% if(news.getFileurl()!=null&&!news.getFileurl().equals("")){%>
		&nbsp;<div class="main_time">附件：<%=Image.getImageFile(news.getFilename(),18) %>
		<a href="download.jsp?id=<%=news.getId() %>&type=news"><%=news.getFilename() %></a></div>
		<% } %>
      </tr>
    </table></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  </table>

  <%@ include file="/party/Footer.jsp" %>   
  <% } %>
   
  </body>
</html>
