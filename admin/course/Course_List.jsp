<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
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
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
<script language="JavaScript" src="js/lecture.js"></script>
</head>
<body>
<Script Language=JavaScript>
function checkall()     
{  var num;     
   num=document.form2.elements.length;     
        
   if(document.form2.chkall.checked)     
   {  var i;     
      for(i=0;i<num;i++)     
        if(document.form2.elements[i].type=="checkbox"&&document.form2.elements[i].name!="chkall")     
           document.form2.elements[i].checked = true;     
      return true;     
   }     
   else   
   {  var j;     
      for(i=0;i<num;i++)     
        if(document.form2.elements[i].type == "checkbox"&&document.form2.elements[i].name!="chkall")     
           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     
      return true;     
   }     
     
}     
</Script>

<%
        int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));		
		CourseList courselist = new CourseList();		
		List list = courselist.getCourseList(curPage);
		Page pager = courselist.getCurrentPage(); 
%>
<form name="form2" method="post" action="admin/course/Course_Del.jsp">
<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  <tr>
    <td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
      选取所有的课程&nbsp;&nbsp;
      <input type="submit" name="Submit" value="删除所选的课程" onClick="Confirm()"></td>
    <td align="right"><input type="button" name="Submit2" value="添加课程信息" onClick="location.href='Course_Add.jsp'">
    &nbsp;&nbsp;</td>
  </tr>
</table>
  <table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td width="35">选中</td>
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
	
	<tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
      <td width="35" align="center"><input name="delid" type="checkbox" id="delid" value="<%=course.getId()%>"></td>
      <td align=center><a href="admin/course/Course_Edit.jsp?page=<%=curPage%>&id=<%=course.getId()%>"><%=course.getCoursename()%></a></td>
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
      <td align="center"><%=course.getOnlineurl()%></td>
    </tr>
<%
   }                                                       
%>
</table>

</form>
<form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
 </form> 
</body>
</html>
