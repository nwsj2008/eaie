<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.bsusers.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.bsusers.BsuserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Bsstudent bsuser = (Bsstudent)session.getAttribute("BSUSER");	%>
<html>

<head>
<title>电子信息工程学院博士研究生招生系统</title>
<LINK REL=StyleSheet HREF="bsstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院博士研究生招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="index.jsp">首页</a>
		<a href="newslist.jsp">查看招生通知</a>
		<a href="cscj.jsp">查看初试成绩</a>
		<a class="active" href="#">查看复试通知</a>
		<a href="lqjg.jsp">查看录取结果</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="bslogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	<div id="contentarea">
	<br><br><br><br><br>
	<font size=3 face="黑体">
	<center>
	<table>
		<tr height="40px">
			<td width="90px" valign="top">报考专业：</td>
			<td align="left" valign="top"><%= bsuser.getBkzy() %><br></td>
		</tr>
		
		<tr height="40px">
			<td valign="top" >报考导师：</td>
			<td align="left" valign="top"><%= bsuser.getBkds() %></td>
		</tr>
		<tr height="40px">
			<td valign="top" >面试通知：</td>
			<td align="left" valign="top"><%= bsuser.getMstz() %></td>
		</tr>
	</table>
	</center>
	</font>
	
	

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