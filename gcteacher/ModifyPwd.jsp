<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");%>
<html>

<head>
<title>电子信息工程学院工程硕士选课教师登陆系统</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
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
</head>
<%
	Gcteacher user = (Gcteacher)session.getAttribute("GCTEACHER");
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


<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士选课教师登陆系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a  href="index.jsp">首页</a>
		<a href="ModifyPwd.jsp" >修改登陆密码</a>
		<a href="kcxx.jsp">查看课程信息</a>
		<a href="score.jsp">编辑学生成绩</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<form name="form1" method="post" action="" onSubmit="return formCheck()">
  <table width="350" border="0" align="center" cellpadding="4" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="titlebg">&nbsp;</td>
    </tr>
    
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">用&nbsp;户&nbsp;名：</td>
      <td><%=user.getName()  %></td>
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
    <td colspan="2"><input type="submit" name="Submit" value="确&nbsp;定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit2" value="取&nbsp;消"></td></tr>
  </table>
</form>
	</div>
	
	
	</div>
	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
</body>

</html>