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
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
%>
<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
		
		
   <table width="100%"  border="0" cellspacing="0" cellpadding="8">
  <tr>
    <td align="center"><span class="style1">机构设置</span></td>
  </tr>
</table>
<table width="400"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#999999">
  <tr bgcolor="#FFFFFF" class="maintext">
    <td width="100" rowspan="4" align="center">管理机构</td>
    <td><a class=news href="ShowContent.jsp?id=52&type=1">学院办公室</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=53&type=1">教学办公室</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=54&type=1">科研与研究生办公室</a></td>
  </tr>

  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=56&type=1">学生工作办公室</a></td>
  </tr>
  <tr bgcolor="#FFFFFF" class="maintext">
    <td width="100" rowspan="5" align="center">行政机构</td>
    <td class="maintext"><a class=news href="ShowContent.jsp?id=29&type=1">信息与通信工程系</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=30&type=1">自动控制工程系</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=31&type=1">电子工程系</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=50&type=1">光波技术研究所</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=51&type=1">国家电工电子教学基地</a></td>
  </tr>
</table>

</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>
  </body>
</html>
