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
		<a href="index.jsp">首页</a>
		<a href="ModifyPwd.jsp">修改登陆密码</a>
		<a href="kcxx.jsp">查看课程信息</a>
		<a href="score.jsp">编辑学生成绩</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
		<br><br>
		 研究生招生咨询电话：51683615
		 <br>
		 邮箱：dzxyyjs@center.njtu.edu.cn
		<br><br>
		张燕宁
		<br>
		室主任 负责科研工作
		<br>
		电话：51687339
		<br><br>
		高万英
		<br>
		负责研究生培养及学位
		<br>
		电话：51683615
		<br><br>
		申振明
		<br>
			负责研究生招生，专业学位研究生管理
			<br>
			电话：51683615
		<br><br>
		熊慧丽
		<br>
		负责研究生管理
		<br>
		电话：51683615
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