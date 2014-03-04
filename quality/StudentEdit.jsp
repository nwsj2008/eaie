<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
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
    <td align="center"><strong class="main_title">用户信息修改</strong></td>   
  </tr>
</table>
<%
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");	
 %>
<form name="form1" method="post" action="quality/StudentSave.jsp?action=edit" onSubmit="return formCheck()">
  <table width="480"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#333333">
  	<tr>
      <td width="30%" align="right">学号：</td>
      <td > <%=student.getStuid()  %><input type="hidden" name="stuid" value="<%=student.getStuid()%>"></td>
    </tr>  
  	<tr>
      <td width="30%" align="right">姓名：</td>
      <td width="229" ><input name="name" type="text" class="sqinput" size="20" maxlength="4" value="<%=student.getName()%>"></td>
    </tr>      
	<tr>
      <td width="30%" align="right">班级： </td>
      <td ><input name="classinfo" type="text" class="sqinput"  size="20" maxlength="40" value="<%=student.getClassinfo()%>"></td>
    </tr>    
    <tr>
      <td width="30%" align="right">电话： </td>
      <td ><input name="tel" type="text" class="sqinput" id="unit" size="20" maxlength="11" value="<%=student.getTel() %>"></td>
    </tr>    
     <tr>
      <td width="30%" align="right">邮箱： </td>
      <td><input name="email" type="text" class="sqinput" id="unit" size="20" maxlength="20" value="<%=student.getEmail() %>"></td>
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
