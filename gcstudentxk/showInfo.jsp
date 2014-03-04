<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.xk.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
   Gcxkopen gcxkopen = new Gcxkopen();
  gcxkopen = (Gcxkopen)BasicDAO.queryById(Gcxkopen.class,1);
  String openxt = gcxkopen.getOpenxt();
  String term = gcxkopen.getTerm();
  String nian="";
  if(openxt.equals("0"))
    out.println(JavaScript.alertandRedirect("现在不是选课时间", "index.jsp"));
    
   String courseid=request.getParameter("courseid");
   
   int sid;
   if(gc!=null){
    sid=gc.getId();
%>
<html>

<head>
<title>课程具体信息</title>
<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士选课系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="#">首页</a>
		<a href="NewsList.jsp">查看通知</a>
		<a href="xk.jsp">选定本学期课程</a>	
		<a href="showCourse.jsp">显示本学期课程</a>	
	    <a href="showScore.jsp">查看分数</a>
	    <a href="help.jsp">选课帮助</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	
	<form name="add" method="post" action="addSave.jsp" >
<%
    if(courseid!=null)
    {
     
    Gccourse courseList = (Gccourse)BasicDAO.queryById(Gccourse.class,Integer.parseInt(courseid));
    String HQL_GET_NUM="From Gcxk as gc where gc.tid='"+courseid+"'";
    List gclist = BasicDAO.queryByHql(HQL_GET_NUM);
    int num=gclist.size();
 %>
 <h2>查看<%=courseList.getTitle() %>的具体信息</h2>
 
<fieldset >
<legend>课程信息：</legend>

<label>课程名称：<input type="text" readonly="readonly" value="<%=(courseList.getTitle()==null?"":courseList.getTitle()) %>" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>任课教师：<input type="text" readonly="readonly" value="<%=(courseList.getTeacher()==null?"":courseList.getTeacher()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>上课地点：<input type="text" readonly="readonly" value="<%=(courseList.getPlace()==null?"":courseList.getPlace()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>上课时间：<input type="text" width="300" readonly="readonly" value="<%=courseList.getShijian() %>"/></label><br>
<label>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：<input type="text" readonly="readonly" value="<%=(courseList.getCredit()==null?"":courseList.getCredit()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期：<input type="text" readonly="readonly" value="<%=(courseList.getCredit()==null?"":courseList.getCredit()) %>"/></label><br>
<label>教&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;材：<input type="text" readonly="readonly" value="<%=(courseList.getBook()==null?"":courseList.getBook()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>选课人数：<input type="text" readonly="readonly" value="<%=num %>"/></label><br>
<label>考试信息：<input type="text" readonly="readonly" value="<%=(courseList.getTest()==null?"":courseList.getTest()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="addid" name="addid" value="<%=courseid %>">
<input type="hidden" id="sid" name="sid" value="<%=sid %>">
<input type="submit" id="submit" name="submit" value="选上该课程">
<input type="button" name="back" value="返&nbsp;回"  onClick="window.location.href='xk.jsp'">
</td>

</tr>
</table>
<%
   }else{
 %>
 <fieldset >
<legend>课程信息：</legend>

<label>课程名称：<input type="text" readonly="readonly" value="" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>任课教师：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>上课地点：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>上课时间：<input type="text" width="300" readonly="readonly" value=""/></label><br>
<label>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期：<input type="text" readonly="readonly" value=""/></label><br>
<label>教&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;材：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>选课人数：<input type="text" readonly="readonly" value=""/></label><br>
<label>考试信息：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
 
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="" name="" value="">
<input type="submit" id="" name="" value="选上该课程">
</td>

</tr>
</table>
<%
   }
   }
 %>
	</form>
	<br>

		<br><br>
	</div>
	
	
	</div>
	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
</body>
</html>