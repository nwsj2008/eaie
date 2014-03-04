<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.course.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>学术活动列表</title>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>				
<base href="<%=basePath%>">
		<link href="css/style.css" rel="stylesheet"
			type="text/css">
</head>
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<%
        int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));		
		CourseList courselist = new CourseList();		
		List list = courselist.getCourseOnline(curPage);
		Page pager = courselist.getCurrentPage(); 
%>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr height="100%">
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780  valign=top align=left>
				
<table width="760"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="406" height="40" colspan="2"><img src="images/topic-kcwzzxjx.jpg" width="406" height="22"></td>
  </tr>
</table>
 <table width="740"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#999999">
  <tr align="center" bgcolor="#E1F2FC" class="topic">
      <td>课程名称</td>
      <td>授课教师</td>
      <td>开课时间</td>
      <td>课程简介</td>
      <td>在线教学网站</td>
    </tr>
<%
	for(int i = 0;i<list.size();i++){
	 Course course = (Course)list.get(i);
%>
	
	<tr bgcolor="#FFFFFF" class="topic">
      <td align=center><%=course.getCoursename()%></td>
      <td align="center"><%=course.getCourseteacher()%></td>
      <%
        int ctime=Integer.parseInt(course.getCoursetime()==null?"1":course.getCoursetime());
        if(ctime==1)
        {
     %> 
      <td align="center">第一学期</td>
     <% 
        }else
        {
     %>
      <td align="center">第二学期</td>
     <%} %>
      <td align="center"><%=course.getCoursememo()%></td>
      <td align="right"><a href="<%=course.getOnlineurl()%>" target="_blank"><%=course.getOnlineurl()%></td>
    </tr>
<%
   }                                                       
%>
</table>
 </td>		
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
	 <tr><td><form name="pageForm" action="" method="post">
	    <table align="center" width=780>
			<tr>
				<td align="center">
					<%@include file="../admin/common/Pager.jsp"%>
				</td>
			</tr>
		</table>
   </form></td></tr>
</table>
  
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
