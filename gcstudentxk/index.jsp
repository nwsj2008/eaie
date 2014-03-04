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
<title>电子信息工程学院工程硕士选课系统</title>
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
		<a href="xk.jsp?id=<%=gc.getId()%>">选定本学期课程</a>	
		<a href="showCourse.jsp?id=<%=gc.getId()%>">显示本学期课程</a>	
	    <a href="showScore.jsp?id=<%=gc.getId()%>">查看分数</a>
	    <a href="help.jsp">选课帮助</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=(gc.getName()==null?"同学":gc.getName() )%>,你好：</h2>
		<h2>欢迎登录电子信息工程学院工程硕士选课系统！</h2>
		 1.为使页面正常显示，推荐您使用1024x768或者更高的屏幕分辨率。
		<br><br>
		2.每次登录时间限为30分钟,请节约时间。
		<br><br>
		3.请您保护好自己的登录密码，离开时记得退出系统。
		<br><br>
		4.如果选课，请查看通知并下载课表。
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