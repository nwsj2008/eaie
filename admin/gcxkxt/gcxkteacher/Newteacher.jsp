<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>

<%@ page import="com.eaie.tools.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
	
</script>
		
		
		<title>教师信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
		<script language=javascript> 
		  
			</script>	
	</head>

    <body>
		<BR>
		<form name="form1" method="post" action="admin/gcxkxt/gcxkteacher/GcteacherSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
					上传教师信息
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						<input name="name" type="text" id="title" size="20" >
					</td>
					<td>
						密码：
						<input name="pwd" type="text" id="teacher" size="20" >
					</td>
				</tr>	
				
				
				 
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定上传" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='GcteacherList.jsp'">
			</center>
		</form>
	</body>
  

	


</html>