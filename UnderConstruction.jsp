<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>北京交通大学电子信息工程学院</title>
<base href="<%=basePath%>">
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<%!
	
 %>
<%
	String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
	
 %>

<body>

<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" background="images/blank-backpic.jpg">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="580" height=100% valign=top align=right>
			
			
			<br><br><b><table width="550"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="406" height="40" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/UnderConstruction.gif" width="204" height="34"></td>
  </tr>
</table>



		
			</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
	
</table>
<jsp:include page="foot.jsp" flush="true"/>
</body>
</html>
