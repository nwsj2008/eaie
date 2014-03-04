<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.sbldxt.sbldstudent.*"%>
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
		
		
		<title></title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
 
  int id=Integer.parseInt(request.getParameter("id"));
  List list=BasicDAO.queryByHql("From Sbld sbld where sbld.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Sbld sbld=(Sbld)list.get(0);
 %>

 	<body>
		<BR>

		<form name="form1" method="post" action="admin/sbldxt/sbldstudent/SbstudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="9"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						查看硕博连读生信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="9">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;名：
						
						<%=(sbld.getName()==null)?"":sbld.getName()%>
					</td>
					<td>
						学号：
						<%=(sbld.getXuehao() == null) ? ""
							: sbld.getXuehao()%>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					性别：
					<%=(sbld.getSex() == null) ? ""
							: sbld.getSex()%>
						</td>	
				
					<td >
				硕士专业：
					<%=(sbld.getSszy()==null)?"":sbld.getSszy()%>
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				拟报博士专业： 
				<%=(sbld.getBbzy()==null)?"":sbld.getBbzy()%>
						</td >
						<td>
						原硕导：
					<%=(sbld.getSd()==null)?"":sbld.getSd()%>
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						拟报博导：&nbsp; 
			<%=(sbld.getNbbd()==null)?"":sbld.getNbbd()%>
						</td>	
				<td> 
                     入学成绩2：&nbsp; 
					<%=(sbld.getRxcj()==null)?"":sbld.getRxcj()%>
				</td>	
			</tr>		
			     <tr class="tdbg">
					<td>
						成绩排名：
				<%=(sbld.getCjpm()==null)?"":sbld.getCjpm()%>
						</td>	
				   <td>
				       联系方式：
				<%=(sbld.getTel()==null)?"":sbld.getTel()%>
				       
				</td>
				<tr class="tdbg">
					<td >
						导师信息：
				<input name="dsxx" value="<%=(sbld.getDsxx() == null) ? ""
						: sbld.getDsxx()%>">	
						</td>	
				
					<td >
                     录取类别：
                  <input name="lqlb" value="<%=(sbld.getLqlb()== null) ? ""
						: sbld.getLqlb()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
						<td colspan="2" align=left>
					录取专业： 
						<input name="lqzy" value="<%=(sbld.getLqzy() == null) ? ""
						: sbld.getLqzy()%>">	
						</td>
						</tr>	
				
					<tr class="tdbg">
					<td colspan="2">
				
						备注：
					
					 <%=(sbld.getBeizhu()==null)?"":sbld.getBeizhu()%>
					
				</table>
			<BR>
			<center>
			<input type="submit" name="Submit" value="确定修改">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='SbstudentListSq.jsp'">
			</center>
	
	</body>
	<%
 }
 %>
</html>