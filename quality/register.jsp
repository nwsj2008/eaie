<%@ page contentType="text/html; charset=gb2312" language="java"%>
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

<script language="JavaScript" src="js/basicJS.js"></script>
	<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("name","����")){
				
				return false;
			}
			if(!isNull("stuid","ѧ��")){
				
				return false;
			}
			if(!validateDig("stuid","ѧ�Ų��Ϸ�")){
				
				var stuid = document.getElementById("stuid");
				stuid.focus();
				stuid.value="";
				return false;
			}
			if(!isNull("pwd","��¼����")){
				
				return false;
			}
			if(!isNull("repwd","�����ظ�")){
				
				return false;
			}
			
			if(!isEqual("pwd","repwd","�����������벻һ��")){
			
				return false;
			}
			
			if(!isNull("classinfo","�༶")){
				
				return false;
			}
			if(!isNull("tel","�绰")){
				
				return false;
			}
			if(!validateDig("tel","�绰���벻�Ϸ�")){
				
				var tel = document.getElementById("tel");
				tel.focus();
				tel.value="";
				return false;
			}
			if(!isNull("email","����")){
				
				return false;
			}
			if(!isEmail("email")){
				
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
table {
	font-size: 12px;	
	BORDER-COLLAPSE: collapse;
}
-->
</style>
</head>
<body>
<br>
<table width="480"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong class="main_title">�û�ע��</strong></td>   
  </tr>
</table>
<form name="form1" method="post" action="quality/StudentSave.jsp" onSubmit="return formCheck()">
  <table width="480"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#333333">
  	<tr>
      <td width="30%" align="right">������</td>
      <td width="229" ><input name="name" type="text" class="sqinput" size="20" maxlength="4"></td>
    </tr>
    <tr>
      <td width="30%" align="right">ѧ�ţ�</td>
      <td > <input name="stuid" type="text" class="sqinput"  size="20" maxlength="10"></td>
    </tr>
    <tr>
      <td width="30%" align="right">��¼���룺 </td>
      <td ><input name="pwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
    </tr>
      <tr>
      <td width="30%" align="right">�ظ����룺 </td>
      <td ><input name="repwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
    </tr>
	<tr>
      <td width="30%" align="right">�༶�� </td>
      <td ><input name="classinfo" type="text" class="sqinput"  size="20" maxlength="40"></td>
    </tr>    
    <tr>
      <td width="30%" align="right">�绰�� </td>
      <td ><input name="tel" type="text" class="sqinput" id="unit" size="20" maxlength="11"></td>
    </tr>    
     <tr>
      <td width="30%" align="right">���䣺 </td>
      <td><input name="email" type="text" class="sqinput" id="unit" size="20" maxlength="20"></td>
    </tr>    
    <tr align="center">
      <td colspan="2"><input name="Submit" type="submit" class="sbinput" value="��&nbsp;��">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" class="sbinput" value="��&nbsp;��"></td>
    </tr>    
  </table> 
</form>
</body>
</html>
