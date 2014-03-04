<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.xk.*" %>
<%@ page import="com.eaie.tools.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
%>
<html>

<head>
<title>选课帮助</title>
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
		<a class="active" href="index.jsp">首页</a>
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
	<h2>同学,你好：</h2>
		<h2>欢迎使用院工程硕士选课系统！</h2>
		使用流程:
		<br><br>
		1.登陆选课系统
		<br><br>
		2.在查看通知中可以下载本学期的课程安排。
		<br><br>
		3.点击选定本学期课程，页面会显示出本学期的所有的课程，点击课程名称可以查看该课程的详细信息，点击选上该课程按钮即可选课成功
		  
		<br><br>
		4.点击显示本学期课程，该页面显示你已经选上的课程。若想要删除课程，点击操作中的删除按钮即可。
		<br><br>
		5.点击查看分数，该页面显示你已选课程的分数。
		<br><br>
		6.点击选课帮助，查看选课流程。
		<br><br>
		7.点击退出系统，即可退出系统。
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