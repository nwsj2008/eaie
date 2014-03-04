<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcssusers.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcssusers.GcssuserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcss gcssuser = (Gcss)session.getAttribute("GCSSUSER");%>
<html>

<head>
<title>电子信息工程学院工程硕士招生系统</title>
<LINK REL=StyleSheet HREF="gcssstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="#">首页</a>
		<a href="newslist.jsp">查看复试通知</a>
		<a href="cscj.jsp">查看GCT成绩</a>
		<a href="fskc/fskcAdd.jsp">申报复试课程</a>
		<a href="lqjg.jsp">查看录取结果</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="gcsslogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcssuser.getName() %>,你好：</h2>
		<h2>欢迎登录电子信息工程学院工程硕士招生系统！</h2>
		 1.为使页面正常显示，推荐您使用1024x768或者更高的屏幕分辨率。
		<br><br>
		2.每次登录时间限为30分钟,请节约时间。
		<br><br>
		3.请您保护好自己的登录密码，离开时记得退出系统。
		<br><br>
		4.登陆后请查看招生通知。
		<br><br>
		5.登陆后请查看个人信息，包括GCT成绩、复试通知及录取信息。
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