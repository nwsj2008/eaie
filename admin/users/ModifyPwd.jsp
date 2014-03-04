<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";			
%>	
<html>
<head>	
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
			<SCRIPT LANGUAGE="JavaScript">
				function formCheck()
				{
					if (document.form1.pwd.value == "")
					{
						alert("请输入旧密码!");
						return false;
					}
				
					if (document.form1.pwd1.value == "")
					{
						alert("请输入新密码!");
						return false;
					}
				
					if (document.form1.pwd2.value == "")
					{
						alert("请再输一遍!");
						return false;
					} 
				
					if (document.form1.pwd1.value != document.form1.pwd2.value)
					{
						alert("两次输入密码不一致，请重新输入!");
						return false;
					} 
				}
			</SCRIPT>
		<title>修改用户密码</title>	
</head>

<body>
<%
	Teacher user = (Teacher)session.getAttribute("USER");
	String soldPassword = request.getParameter("pwd");
	String snewPassword = request.getParameter("pwd1");
	if(soldPassword!=null&&snewPassword!=null){
		
	   boolean isOK = UserManage.changePassword(user,soldPassword,snewPassword);
	   if(isOK){	
	      	
	   		out.println(JavaScript.alert("密码修改成功！"));
	   		
	   }else{
	   
	   		out.println(JavaScript.alert("密码修改失败！"));
	   }
		
	}
 %>
<form name="form1" method="post" action="" onSubmit="return formCheck()">
  <table width="350" border="0" align="center" cellpadding="4" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="titlebg">修改登录密码</td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">用&nbsp;户&nbsp;名：</td>
      <td><%=user.getTeacher()  %></td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">旧&nbsp;密&nbsp;码：</td>
      <td><input name="pwd" type="password" id="pwd" size="20"></td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">新&nbsp;密&nbsp;码：</td>
      <td><input name="pwd1" type="password" id="pwd1" size="20"></td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right"> 确认密码： </td>
      <td><input name="pwd2" type="password" id="pwd2" size="20"></td>
    </tr>
    <tr align="center" class="tdbg">
    <td colspan="2"><input type="submit" name="Submit" value="确&nbsp;定">&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit2" value="取&nbsp;消"></td></tr>
  </table>
</form>
</body>
</html>
