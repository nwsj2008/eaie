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
  out.print("û�м�¼");
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
						�鿴˶����������Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="9">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						��&nbsp;����
						
						<%=(sbld.getName()==null)?"":sbld.getName()%>
					</td>
					<td>
						ѧ�ţ�
						<%=(sbld.getXuehao() == null) ? ""
							: sbld.getXuehao()%>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					�Ա�
					<%=(sbld.getSex() == null) ? ""
							: sbld.getSex()%>
						</td>	
				
					<td >
				˶ʿרҵ��
					<%=(sbld.getSszy()==null)?"":sbld.getSszy()%>
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				�ⱨ��ʿרҵ�� 
				<%=(sbld.getBbzy()==null)?"":sbld.getBbzy()%>
						</td >
						<td>
						ԭ˶����
					<%=(sbld.getSd()==null)?"":sbld.getSd()%>
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						�ⱨ������&nbsp; 
			<%=(sbld.getNbbd()==null)?"":sbld.getNbbd()%>
						</td>	
				<td> 
                     ��ѧ�ɼ�2��&nbsp; 
					<%=(sbld.getRxcj()==null)?"":sbld.getRxcj()%>
				</td>	
			</tr>		
			     <tr class="tdbg">
					<td>
						�ɼ�������
				<%=(sbld.getCjpm()==null)?"":sbld.getCjpm()%>
						</td>	
				   <td>
				       ��ϵ��ʽ��
				<%=(sbld.getTel()==null)?"":sbld.getTel()%>
				       
				</td>
				<tr class="tdbg">
					<td >
						��ʦ��Ϣ��
				<input name="dsxx" value="<%=(sbld.getDsxx() == null) ? ""
						: sbld.getDsxx()%>">	
						</td>	
				
					<td >
                     ¼ȡ���
                  <input name="lqlb" value="<%=(sbld.getLqlb()== null) ? ""
						: sbld.getLqlb()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
						<td colspan="2" align=left>
					¼ȡרҵ�� 
						<input name="lqzy" value="<%=(sbld.getLqzy() == null) ? ""
						: sbld.getLqzy()%>">	
						</td>
						</tr>	
				
					<tr class="tdbg">
					<td colspan="2">
				
						��ע��
					
					 <%=(sbld.getBeizhu()==null)?"":sbld.getBeizhu()%>
					
				</table>
			<BR>
			<center>
			<input type="submit" name="Submit" value="ȷ���޸�">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='SbstudentListSq.jsp'">
			</center>
	
	</body>
	<%
 }
 %>
</html>