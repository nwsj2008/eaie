<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tqgb.*" %>
<%@ page import="com.eaie.tools.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Tqgb tqgbUser = (Tqgb)session.getAttribute("TQGBUSER");

%>
<html>

<head>
<title>电子信息工程学院提前攻博招生系统</title>
<LINK REL=StyleSheet HREF="tqgbstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院提前攻博招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">首页</a>
		<a href="newslist.jsp">查看通知</a>
		<a href="application/ApplicationAdd.jsp">提交申请</a>
		<a href="application/ApplicationInfo.jsp">查看申请</a>
		<a href="application/ApplicationEdit.jsp?id=<%=tqgbUser.getId() %>">修改申请</a>
		<a href="result.jsp">查看结果</a>
		<a href="tqgbLogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<table>
		<tr height="40px">
			<td width="170px" align="right" valign="top"><h2>录取类别：</h2></td>
			<td align="left" valign="top"><h2><%= (tqgbUser.getLqlb()==null)?"": tqgbUser.getLqlb()%></h2></td>
		</tr>
		
		<tr height="40px">
			<td valign="top" align="right"><h2>录取专业：</h2></td>
			<td align="left" valign="top"><h2><%= (tqgbUser.getLqzy()==null)?"": tqgbUser.getLqzy() %></h2></td>
		</tr>
		<tr height="40px" >
			<td valign="top" align="right"><h2>导师信息：</h2></td>
			<td align="left" valign="top"><h2><%= (tqgbUser.getDsxx()==null)?"": tqgbUser.getDsxx() %></h2></td>
		</tr>
	</table>
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