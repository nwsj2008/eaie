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
		
		
		<title>�鿴����˶ʿ��Ϣ</title>
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
  out.print("û�м�¼");
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
						�鿴����˶ʿ��Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="9">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						��&nbsp;����
						
						<%=(gcss.getName()==null)?"":gcss.getName()%>
					</td>
					<td>
						���֤�ţ�
						<%=(gcss.getSfz() == null) ? ""
							: gcss.getSfz()%>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					��������
					<%=(gcss.getGcly() == null) ? ""
							: gcss.getGcly()%>
						</td>	
				
					<td >
				GCT�ɼ���
					<%=(gcss.getGct()==null)?"":gcss.getGct()%>
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				����רҵ�Σ� 
				<%=(gcss.getZyk()== null) ? ""
						: gcss.getZyk()%>
						</td >
						<td>
						��ϵ�绰��
					<%=(gcss.getTel()== null) ? ""
						: gcss.getTel()%>
						</td>	
				</tr>
				<tr class="tdbg">
						<td colspan="2" align=left>
					¼ȡ����� 
						<input name="lqjg" width="500" value="<%=(gcss.getLqjg()== null) ? ""
						: gcss.getLqjg()%>">	
						</td>
						</tr>

				</table>
			<BR>
			<center>
			<input type="submit" name="Submit" value="ȷ���޸�">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='gcssStudentList.jsp'">
			</center>
	
	</body>
	<%
 }
 %>
</html>