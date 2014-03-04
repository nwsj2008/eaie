<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<title>开启硕博连读招生系统</title>
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet" type="text/css">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
	</head>

	<body>
		<div align="left"><br> 
		</div><form name="form1" method="post" action="admin/sbldxt/SbopenSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						开启硕博连读招生系统
					</td>
				</tr>
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定开启">&nbsp;&nbsp;&nbsp;
			</center>
		</form>
	</body>
</html>

