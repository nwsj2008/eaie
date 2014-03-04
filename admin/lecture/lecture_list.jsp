<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.lecture.*" %>
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
		LectureList lectureList = new LectureList();		
		List list = lectureList.getLectureList(curPage);
		Page pager = lectureList.getCurrentPage(); 
%>
<form name="form2" method="post" action="admin/lecture/lecture_del.jsp">

 <table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  <tr>
    <td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
      选取所有的报告&nbsp;&nbsp;
      <input type="submit" name="Submit" value="删除所选的报告" onClick="Confirm()"></td>
    <td align="right"><input type="button" name="Submit2" value="添加学术报告" onClick="location.href='lecture_add.jsp'">
    &nbsp;&nbsp;</td>
  </tr>
  </table>
  <table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td width="35">选中</td>
      <td>报告主题</td>
      <td width="100">发布人</td>
      <td width="140">发布时间</td>
    </tr>
<%
	for(int i = 0;i<list.size();i++){
	 Lecture lecture = (Lecture)list.get(i);
%>
	
	<tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
      <td width="35" align="center"><input name="delid" type="checkbox" id="delid" value="<%=lecture.getId()%>"></td>
      <td><a href="admin/lecture/lecture_edit.jsp?page=<%=curPage%>&id=<%=lecture.getId()%>"><%=lecture.getSubject()%></a>
      <% 
	      if(lecture.getFileurl() != null){
		      if(!lecture.getFileurl().equals("")){
		      	out.println("<img src=admin/images/attach2.gif width=23 height=16 title=附件："+lecture.getFilename()+">");
		      }
      } %>
      </td>
      <td width="100" align="center"><%=lecture.getTeacher()%></td>
      <td width="140" align="center"><%=lecture.getPubtime()%></td>
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
