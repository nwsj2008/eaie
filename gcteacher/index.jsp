<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");%>
<html>

<head>
<title>电子信息工程学院工程硕士选课教师登陆系统</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士选课教师登陆系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="#">首页</a>
		<a href="ModifyPwd.jsp">修改登陆密码</a>
		<a href="kcxx.jsp">查看课程信息</a>
		<a href="score.jsp">编辑学生成绩</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcteacher.getName() %>老师,你好：</h2>
		<h2>欢迎登录电子信息工程学院工程硕士选课教师登陆系统！</h2>
		 1.为使页面正常显示，推荐您使用1024x768或者更高的屏幕分辨率。
		<br><br>
		2.每次登录时间限为30分钟,请节约时间。
		<br><br>
		3.请您保护好自己的登录密码，离开时记得退出系统。
		<br><br>
		4.登陆后请查看您的课程信息，查看或修改学生成绩。
		<br><br>
		5.如果您有什么问题，请联系我们。
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