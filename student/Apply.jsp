<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<link href="admin/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/calendar.js"></script>
	<script language = "JavaScript">
		function formCheck(){
			if (document.form1.subject.value == "")
			{
				alert("����д�����!");
				return false;
			}
			if (document.form1.unit.value == "")
			{
				alert("����дʹ�õ�λ!");
				return false;
			} 
			if (document.form1.takedate.value == "")
			{
				alert("����д�����!");
				return false;
			}
			if (document.form1.taketime.value == "")
			{
				alert("����д�ʱ��!");
				return false;
			}
			if (document.form1.classroom.value == "")
			{
				alert("����д��ص�!");
				return false;
			}
			if (document.form1.director.value == "")
			{
				alert("����д�������!");
				return false;
			} 
			if (document.form1.tel.value == "")
			{
				alert("����ϸ��д��ϵ�绰!");
				return false;
			} 
		}
</script>
<style type="text/css">
<!--
.sqinput {
	border: 1px solid #333333;
	font-size: 12px;
	height: 20px;
	padding-top: 2px;
	padding-right: 2px;
	padding-left: 2px;
}
.sbinput {
	font-size: 12px;
	height: 20px;
	width: 60px;
	padding-top: 2px;
	padding-right: 2px;
	padding-left: 2px;
	border: 1px solid #333333;
}
.cklink {
	font-size: 12px;
	color: #0000FF;
	text-decoration: underline;
}
-->
</style>
</head>
<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	} %>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="200" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type==null?1:type %>" frameborder="0" scrolling="no" width=170></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="580" height=100% valign=top align=right>
		
<br>	
<table width="552"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong class="main_title">Ժ�ڻ��������</strong></td>
   
  </tr>
  <tr><td align="right"><a href="student/ApplyList.jsp?type=7"><font color="#0000FF">�鿴������</font></a></td></tr>
</table>
<form name="form1" method="post" action="student/ApplySave.jsp" onSubmit="return formCheck()">
  <table width="480"  border="0" align="center" cellpadding="4" cellspacing="0" class="maintext">
    <tr>
      <td>����ݣ�</td>
      <td><input name="subject" type="text" class="sqinput" id="subject" size="50" maxlength="20"></td>
    </tr>
    <tr>
      <td> ʹ�õ�λ�� </td>
      <td><input name="unit" type="text" class="sqinput" id="unit" size="50" maxlength="10"></td>
    </tr>
    <tr>
      <td> ����ڣ� </td>
      <td><input name="takedate" type="text" class="sqinput" id="takedate" onFocus="show_cele_date(takedate,'1900-1-1','2030-1-1',takedate)"></td>
    </tr>
    <tr>
      <td>�ʱ�䣺</td>
      <td><select name="taketime" id="taketime">
        <option value="" selected>��ѡ��ʱ���</option>
        <option value="12:00-2:00">12:00-14:00</option>
        <option value="21:00-21:30">21:00-22:30</option>
      </select></td>
    </tr>
    <tr>
      <td>��ص㣺</td>
      <td><select name="classroom" id="classroom">
        <option value="�Ž���201" selected>�Ž���201</option>
        <option value="DQ102">DQ102</option>
        <option value="DQ103">DQ103</option>
        <option value="DQ107">DQ107</option>
        <option value="DQ203">DQ203</option>
        <option value="SY102">SY102</option>
        <option value="SY103">SY103</option>
        <option value="SY106">SY106</option>
        <option value="SD107">SD107</option>
        <option value="SD108">SD108</option>
        <option value="SD205">SD205</option>
      </select></td>
    </tr>
    <tr>
      <td> ������ˣ� </td>
      <td><input name="director" type="text" class="sqinput" id="director"></td>
    </tr>
    <tr>
      <td>��ϵ�绰��</td>
      <td><input name="tel" type="text" class="sqinput" id="tel"></td>
    </tr>
    <tr align="center">
      <td height="30" colspan="2">&nbsp;</td>
    </tr>
    <tr align="center">
      <td colspan="2"><input name="Submit" type="submit" class="sbinput" value="��&nbsp;��">
      &nbsp;&nbsp;&nbsp;&nbsp;
      <input name="Submit2" type="reset" class="sbinput" value="��&nbsp;��"></td>
    </tr>
  </table>
</form>

   </td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
	
</table>
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
