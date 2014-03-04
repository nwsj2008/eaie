<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.tools.*" %>
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
			
			if(!isNull("opwd","旧密码")){
				
				return false;
			}
			if(!isNull("pwd","新密码")){
				
				return false;
			}
			if(!isNull("repwd","密码重复")){
				
				return false;
			}
			
			if(!isEqual("pwd","repwd","两次输入密码不一致")){
			
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
    <td align="center"><strong class="main_title">修改登录密码</strong></td>   
  </tr>
</table>
<%
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");	
	String password = request.getParameter("pwd");
	String opassword = request.getParameter("opwd");
	if(password!=null){
	
		if(!ExpstudentManage.isPasswordOK(opassword,student)){			
			out.println(JavaScript.alertandBack("旧密码不正确！"));
			return;
		}	
		boolean isOK = ExpstudentManage.changePassword(password,student);
		if(isOK){
			session.setAttribute("EXPSTUDENT",student);
			out.println(JavaScript.alert("修改密码成功！"));
			
		}else{
		
			out.println(JavaScript.alert("修改密码成功！"));
		}
		
	}
 %>
<form name="form1" method="post" action="" onSubmit="return formCheck()">
  <table width="480"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#333333">
  
	<tr>
      <td width="30%" align="right">旧密码： </td>
      <td ><input name="opwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
    </tr>
    <tr>
      <td width="30%" align="right">新密码： </td>
      <td ><input name="pwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
    </tr>
      <tr>
      <td width="30%" align="right">重复密码： </td>
      <td ><input name="repwd" type="password" class="sqinput"  size="20" maxlength="40"></td>
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
