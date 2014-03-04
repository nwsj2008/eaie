<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>北京交通大学电子信息工程学院</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>

<%@ include file="head.jsp" %>
<table width=780 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td height=100% width=195 valign=top align=left>
			<iframe id="left" name="left" src="listleft.jsp"  frameborder="0" scrolling="no" width=195 height=100%></iframe>
		</td>
		<td width=585 height=100% valigh=top align=left>
			<iframe id="left" name="menu" src="listmain.jsp" frameborder="0" scrolling="no" width=585 height=100%></iframe>
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>
  </body>
</html>
