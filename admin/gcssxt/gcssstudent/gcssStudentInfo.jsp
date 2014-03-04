<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.gcssxt.gcssstudent.*"%>
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
		
		
		<title>查看工程硕士信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
 
  int id=Integer.parseInt(request.getParameter("id"));
  List list=BasicDAO.queryByHql("From Gcss gcss where gcss.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Gcss gcss=(Gcss)list.get(0);
 %>

 	<body>
		<BR>

		<form name="form1" method="post" action="admin/gcssxt/gcssstudent/gcssStudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="9"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						查看工程硕士信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="9">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;名：
						
						<%=(gcss.getName()==null)?"":gcss.getName()%>
					</td>
					<td>
						身份证号：
						<%=(gcss.getSfz() == null) ? ""
							: gcss.getSfz()%>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					工程领域：
					<%=(gcss.getGcly() == null) ? ""
							: gcss.getGcly()%>
						</td>	
				
					<td >
				GCT成绩：
					<%=(gcss.getGct()==null)?"":gcss.getGct()%>
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				复试专业课： 
				<%=(gcss.getZyk()== null) ? ""
						: gcss.getZyk()%>
						</td >
						<td>
						联系电话：
					<%=(gcss.getTel()== null) ? ""
						: gcss.getTel()%>
						</td>	
				</tr>
				<tr class="tdbg">
						<td colspan="2" align=left>
					录取结果： 
						<input name="lqjg" width="500" value="<%=(gcss.getLqjg()== null) ? ""
						: gcss.getLqjg()%>">	
						</td>
						</tr>

				</table>
			<BR>
			<center>
			<input type="submit" name="Submit" value="确定修改">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='gcssStudentList.jsp'">
			</center>
	
	</body>
	<%
 }
 %>
</html>