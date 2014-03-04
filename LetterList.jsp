<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.news.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>挂号信通知</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.tdline {
	border-bottom-width: 1px;
	border-bottom-style: dashed;
	border-bottom-color: #666666;
	padding-top: 10px;
	font-size: 14px;
	line-height: 1.6;
}
-->
</style>
</head>


<body>
<%@ include file="head.jsp" %>
<%!
	public String getFileExt(String fileName){	
		int indexOfDot = fileName.indexOf('.');		
		return fileName.substring(indexOfDot+1);
	}	
 %>
<% 
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
	
	ClassNewsList clist = new ClassNewsList(); 
	List list = clist.getNewsList(curPage,"12");	
	Page pager = clist.getCurrentPage();
%>
<table width=780 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valigh=top align=left>
			
			<table width="762" border="0" align="center" cellpadding="0" cellspacing="0" class="right_bg">
  <tr>
    <td height="40" align="center" class="news_title">挂号信通知</td>
  </tr>
<%
	if(list.size()>0){
				
		Iterator it =list.iterator();

%>
  <tr>
    <td height="460" align="center" valign="top">
<table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" class="tdline"><font color="#0000FF">领取地点：九教南101&nbsp;&nbsp;&nbsp;&nbsp;领取时间：上午8:30--12:00&nbsp;&nbsp;下午2:30--5:30</font></td>
  </tr>
	
<%
		while(it.hasNext()){
		
			News news = (News)it.next();
 %>
  <tr>
    <td class="tdline">
	通知日期：<%=DateTimeFormat.getDateString(news.getPubtime()) %>
	<br><br>
	<%=news.getContent() %>
	<br>
	<%
			if(news.getFileurl()!=null&&!news.getFileurl().equals("")){
	%>
	&nbsp;附件：
	<img src="images/filepic/<%=getFileExt(news.getFileurl())%>.gif">
	<a href="download.jsp?id=<%=news.getId() %>&type=news"><%=news.getFilename() %>
	</a>
	<%
			}
	%>
	</td>
  </tr>
<%		} 	
	}else{
		
		out.println("<center><h3>没有信件通知</h3></center>");	
	}
 %>
 </table>
</td>
  </tr>
</table>
	<form name="pageForm" action="">   
 	<table align="center" width="96%">
       <tr><td align="center">          
       <%@include file="admin/common/Pager.jsp" %>    
       </td></tr> 
 	</table>
</form>		
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>



</body>
</html>
