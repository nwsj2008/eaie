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
		
		
		<title>��ʦ��Ϣ</title>
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
					�ϴ���ʦ��Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						<input name="name" type="text" id="title" size="20" >
					</td>
					<td>
						���룺
						<input name="pwd" type="text" id="teacher" size="20" >
					</td>
				</tr>	
				
				
				 
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���ϴ�" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='GcteacherList.jsp'">
			</center>
		</form>
	</body>
  

	


</html>