<%@ page contentType="text/html; charset=GBK" language="java"%>
<%

	String sHost = "http://" + request.getHeader("Host");
	System.out.println(sHost);
 %>
<html>
	<head>
		<title>������ͨ��ѧ������Ϣ����ѧԺ</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">	
	</head>	
	<a href="<%=sHost %>/eaie/admin/login.jsp" target="_blank">��¼����ϵͳ</a>
</html>
