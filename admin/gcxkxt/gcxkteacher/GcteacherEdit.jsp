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
		
		
		<title>�޸Ľ�ʦ��Ϣ</title>
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
						�༭��ʦ��Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						
						<input name="name" type="text" id="name"  size="20" value="<%=(gcteacher.getName()==null)?"":gcteacher.getName()%>">
					</td>
					<td> 
						 ���룺 
						<input name="pwd" type="text" id="pwd"   value="<%=(gcteacher.getPwd()==null)?"":gcteacher.getPwd()%>">
					</td>
				</tr>	
				
				
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���޸�" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='GcteacherList.jsp'">
			</center>
		</form>
	</body>

</html>