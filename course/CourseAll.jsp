<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.course.*" %>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html >
<head>
<title>学术活动列表</title>
<base href="<%=basePath%>">
		<link href="css/style.css" rel="stylesheet"
			type="text/css">
</head>
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<%
        int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));		
		CourseList courselist = new CourseList();		
		List list = courselist.getCourseAll(curPage);
		Page pager = courselist.getCurrentPage(); 
         
        String type = request.getParameter("type");
        if(type==null)
        {
           return;
        }
%>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type==null?1:type %>" frameborder="0" scrolling="no" width=170></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=left>
		
				
<table width="500"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="406" height="40" colspan="2"><img src="images/topic-kcjj.jpg" width="406" height="22"></td>
  </tr>
</table>
 <table width="500"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#999999">


<%      if (list.size() > 0) {
						for(int i = 0;i<list.size();i++){
	 Course course = (Course)list.get(i);
%>  
  <tr bgcolor="#FFFFFF">
    <td colspan="2" bgcolor="#FFFFFF" width=70%><table border="0" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td width="100" align="center" class="classtitle">课程名称：</td>
        <%
        if(course.getOnlineurl()!=null&&!course.getOnlineurl().equals(""))
        {
        %><td align="center"><a href="<%=course.getOnlineurl()%>" target="_blank"><%=course.getCoursename()%></a></td>
        <%}
        else
        {
         %>
        <td align="center"><%=course.getCoursename()%></td>
        <% }%>
       
      </tr>
       <tr>
        <td width="100" align="center" class="classtitle">授课教师：</td>
        <td align="center"><%=course.getCourseteacher()%></td>
      </tr>
     <tr>
        <td width="100" align="center" class="classtitle">开课时间：</td>
      <%
        int ctime=Integer.parseInt(course.getCoursetime()==null?"1":course.getCoursetime());
        if(ctime==1)
        {
     %> 
      <td align="center">春季学期</td>
     <% 
        }else
        {
     %>
      <td align="center">秋季学期</td>
     <%} %>
      </tr>
      <tr>
        
    </table></td>
    <td width="30%" align="center" bgcolor="#FFFFFF" valign=top height=100%>
    <table width=100% align="center" bgcolor="#FFFFFF"  valign=top>
    <tr valign=top align=left class="classtitle"><td>课程内容简介:</td></tr>
    <tr><td align="center"><%=course.getCoursememo()%></td></tr>
    </table>
    </td>
  </tr>
<%
   }
}
  %>
   
</table>
	<table width=530>
	<tr bgcolor="#ffffff"><td colspan=2><form name="pageForm" action="" method="post">
	    <table align="center" width=530>
			<tr>
				<td align="center">
					<%@include file="../admin/common/Pager.jsp"%>
				</td>
			</tr>
		</table>
   </form></td></tr></table>	
 </td>		
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
	
</table>
  
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
