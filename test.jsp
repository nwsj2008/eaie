<%@ page contentType="text/html; charset=GBK" language="java"%>
<%

	String sHost = "http://" + request.getHeader("Host");
	System.out.println(sHost);
 %>
<html>
	<head>
		<title>北京交通大学电子信息工程学院</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">	
	</head>	
	<a href="<%=sHost %>/eaie/admin/login.jsp" target="_blank">登录管理系统</a>
</html>
