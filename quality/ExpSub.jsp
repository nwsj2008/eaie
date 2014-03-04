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
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/basicJS.js"></script>
	<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("name","ʵ�����Ʋ���Ϊ��")){
				
				return false;
			}
			if(!isNull("contact","��������ϵ��ʽ")){
				
				return false;
			}
			if(!isTooLong("team",200,"������Ҫ��")){
				
				return false;
			}
			if(!isTooLong("feature",300,"��ɫ�봴��")){
				
				return false;
			}
			if(!isTooLong("intention",200,"��ĿĿ����ʵʩ")){
				
				return false;
			}
			if(!isTooLong("money",300,"���Ѽ�ʹ��")){
				
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

<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valign=top align=left>
		
		
<table width="80%"  border="0" align="center" cellpadding="4" cellspacing="0">
 <br> <tr>
    <td align="center"><strong class="main_title">����ʵ���������</strong></td>
    <td width="110" align="right"><a href="quality/ExpList.jsp?type=2"><font color="#0000FF">�鿴���������</font></a></td>
  </tr>
</table>
<form name="form1" method="post" action="quality/ExpSave.jsp" onSubmit="return formCheck()">
  <table width="600"  border="0" align="center" cellpadding="4" cellspacing="0" class="maintext">
    <tr>
      <td width="100">���ƣ�</td>
      <td><input name="name" type="text" class="sqinput" id="subject" size="50" maxlength="50"></td>
    </tr>
    <tr>
      <td width="100"> �����ˣ���ʦ���� </td>
      <td><input name="teacher" type="text" class="sqinput" id="unit" size="50" maxlength="4"></td>
    </tr>
      <tr>
      <td width="100"> �����ˣ�ѧ������ </td>
      <td><input name="student" type="text" class="sqinput" id="unit" size="50" maxlength="40">&nbsp;&nbsp;(����д������ѧ�š��༶)</td>
    </tr>
     <tr>
      <td width="100"> ��������ϵ��ʽ�� </td>
      <td><input name="contact" type="text" class="sqinput" id="unit" size="50" maxlength="40">&nbsp;&nbsp;(����д�绰������)</td>
    </tr>
    <tr>
      <td width="100"> ָ����ʦ�� </td>
      <td><input name="tutor" type="text" class="sqinput" id="unit" size="50" maxlength="4"></td>
    </tr>
    
     <tr>
      <td width="100">�γ̼�飺 </td>
      <td><textarea name="introduce" cols="60" rows="8" id="field" maxlength="10"></textarea></td>
    </tr>
    <tr>
     <td width="100"> ������Ҫ�� </td>
      <td>	<textarea name="team" cols="60" rows="4" id="field"></textarea></td>
    </tr>
    <tr>
      <td width="100"> ��ɫ�봴�£� </td>
      <td><textarea name="feature" cols="60" rows="4" id="field"></textarea></td>
    </tr>
    <tr>
      <td width="100">��ĿĿ����ʵʩ�� </td>
      <td><textarea name="intention" cols="60" rows="4" id="field"></textarea></td>
    </tr>        
    <tr>
      <td width="100"> ���Ѽ�ʹ�ã� </td>
      <td><textarea name="money" cols="60" rows="3" id="field"></textarea></td>
    </tr>    
    <tr align="center">
      <td colspan="2"><input name="Submit" type="submit" class="sbinput" value="��&nbsp;��">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" class="sbinput" value="��&nbsp;��"></td>
    </tr>    
  </table> 
  
</form>

 <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>

</table>
  
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
