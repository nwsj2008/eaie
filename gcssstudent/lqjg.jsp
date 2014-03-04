<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcssusers.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcssusers.GcssuserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcss gcssuser = (Gcss)session.getAttribute("GCSSUSER");	%>
<html>

<head>
<title>电子信息工程学院工程硕士招生系统</title>
<LINK REL=StyleSheet HREF="gcssstyle.css" TYPE="text/css" MEDIA=screen>
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
		<a href="newslist.jsp">查看复试通知</a>
		<a href="cscj.jsp">查看GCT成绩</a>
		<a href="fskc/fskcAdd.jsp">申报复试课程</a>
		<a class="active" href="#">查看录取结果</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="gcsslogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	<div id="contentarea">
	<br><br><br><br><br>
	<font size=3 face="黑体">
	<center>
	<table>
		<tr height="40px">
			<td width="90px">录取结果：</td>
			<td align="left"><%= (gcssuser.getLqjg()==null)?"": gcssuser.getLqjg()%></td>
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