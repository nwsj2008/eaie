<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
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
		
		
		<title>修改教师信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  Gcteacher gcteacher = (Gcteacher)BasicDAO.queryById(Gcteacher.class, id);
 
 %>
 <body>
		<BR>
		<form name="form1" method="post" action="admin/gcxkxt/gcxkteacher/GcteacherUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						编辑教师信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						
						<input name="name" type="text" id="name"  size="20" value="<%=(gcteacher.getName()==null)?"":gcteacher.getName()%>">
					</td>
					<td> 
						 密码： 
						<input name="pwd" type="text" id="pwd"   value="<%=(gcteacher.getPwd()==null)?"":gcteacher.getPwd()%>">
					</td>
				</tr>	
				
				
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定修改" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='GcteacherList.jsp'">
			</center>
		</form>
	</body>

</html>