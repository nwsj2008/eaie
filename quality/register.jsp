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
			
			if(!isNull("name","姓名")){
				
				return false;
			}
			if(!isNull("stuid","学号")){
				
				return false;
			}
			if(!validateDig("stuid","学号不合法")){
				
				var stuid = document.getElementById("stuid");
				stuid.focus();
				stuid.value="";
				return false;
			}
			if(!isNull("pwd","登录密码")){
				
				return false;
			}
			if(!isNull("repwd","密码重复")){
				
				return false;
			}
			
			if(!isEqual("pwd","repwd","两次输入密码不一致")){
			
				return false;
			}
			
			if(!isNull("classinfo","班级")){
				
				return false;
			}
			if(!isNull("tel","电话")){
				
				return false;
			}
			if(!validateDig("tel","电话号码不合法")){
				
				var tel = document.getElementById("tel");
				tel.focus();
				tel.value="";
				return false;
			}
			if(!isNull("email","邮箱")){
				
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
    <td align="center"><strong class="main_title">用户注册</strong></td>   
  </tr>
</table>
<form name="form1" method="post" action="quality/StudentSave.jsp" onSubmit="return formCheck()">
  <table width="480"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#333333">
  	<tr>
      <td width="30%" align="right">姓名：</td>
      <td width="229" ><input name="name" type="text" class="sqinput" size="20" maxlength="4"></td>
    </tr>
    <tr>
      <td width="30%" align="right">学号：</td>
      <td > <input name="stuid" type="text" class="sqinput"  size="20" maxlength="10"></td>
    </tr>
    <tr>
      <td width="30%" align="right">登录密码： </td>
      <td ><input name="pwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
    </tr>
      <tr>
      <td width="30%" align="right">重复密码： </td>
      <td ><input name="repwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
    </tr>
	<tr>
      <td width="30%" align="right">班级： </td>
      <td ><input name="classinfo" type="text" class="sqinput"  size="20" maxlength="40"></td>
    </tr>    
    <tr>
      <td width="30%" align="right">电话： </td>
      <td ><input name="tel" type="text" class="sqinput" id="unit" size="20" maxlength="11"></td>
    </tr>    
     <tr>
      <td width="30%" align="right">邮箱： </td>
      <td><input name="email" type="text" class="sqinput" id="unit" size="20" maxlength="20"></td>
    </tr>    
    <tr align="center">
      <td colspan="2"><input name="Submit" type="submit" class="sbinput" value="提&nbsp;交">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" class="sbinput" value="重&nbsp;置"></td>
    </tr>    
  </table> 
</form>
</body>
</html>
