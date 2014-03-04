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
<%
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");	
 %>


<table width="480"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong class="main_title">用户信息</strong></td>   
  </tr>
</table>
  <table width="480"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#333333">
  	<tr>
      <td width="30%" align="right">姓名：</td>
      <td width="229" ><%=student.getName()  %></td>
    </tr>
    <tr>
      <td width="30%" align="right">学号：</td>
      <td ><%=student.getStuid()  %></td>
    </tr>   
	<tr>
      <td width="30%" align="right">班级： </td>
      <td ><%=student.getClassinfo()  %></td>
    </tr>    
    <tr>
      <td width="30%" align="right">电话： </td>
      <td ><%=student.getTel() %></td>
    </tr>    
     <tr>
      <td width="30%" align="right">邮箱： </td>
      <td><%=student.getEmail() %></td>
    </tr>    
  </table> 
</body>
</html>
