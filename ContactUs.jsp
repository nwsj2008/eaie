<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
   <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
 <title>北京交通大学电子信息工程学院</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
  </head>
  <body><%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF" valign=top>
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valign=top align=left>
		
  <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40" align="center" class="main_title"><strong>联系我们</strong></td>
  </tr>
</table>
<table width="500" border="1" align="center" cellpadding="6" cellspacing="2" bordercolor="#CCCCCC">
  <tr align="center" bgcolor="#CCCCCC" class="maintext">
    <td align="center" class="maintext"><strong>部门</strong></td>
    <td align="center"><strong>办公地点</strong></td>
    <td align="center"><strong>联系电话</strong></td>
  </tr>
  <tr>
    <td align="center" class="maintext">学院办公室</td>
    <td align="center" class="maintext">九教南105</td>
    <td align="center" class="maintext">010-51683682</td>
  </tr>
  <tr>
    <td align="center" class="maintext">教学科</td>
    <td align="center" class="maintext">九教南111</td>
    <td align="center" class="maintext">010-51683681 &nbsp;010-51683452 </td>
  </tr>
  <tr>
    <td align="center" class="maintext">研究生科</td>
    <td align="center" class="maintext">九教南109</td>
    <td align="center" class="maintext">010-51687339 &nbsp;010-51683615 </td>
  </tr>
  <tr>
    <td align="center" class="maintext">团委</td>
    <td align="center" class="maintext">九教南102</td>
    <td align="center" class="maintext">010-51688792 &nbsp;010-51683484 </td>
  </tr>
  <tr>
    <td align="center" class="maintext">学生工作办公室</td>
    <td align="center" class="maintext">九教南102</td>
    <td align="center" class="maintext">010-51688792 &nbsp;010-51683484 </td>
  </tr>
</table>

<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>

</table>
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
