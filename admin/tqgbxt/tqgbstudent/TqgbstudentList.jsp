<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbstudent.*"%>
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
		
		
		<title>�鿴��ǰ��������Ϣ</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tqgb tqgb where tqgb.id='"+id+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }else{
  Tqgb tqgb=(Tqgb)list.get(0);
 %>

 	<body>
		<BR>
	    <form name="form1" method="post" action="admin/tqgbxt/tqgbstudent/TqgbstudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						�鿴��ǰ��������Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						��&nbsp;����
						
						<%=(tqgb.getName()==null)?"":tqgb.getName()%>
					</td>
					<td>
						ѧ&nbsp;�ţ�
						<%=(tqgb.getXuehao() == null) ? ""
							: tqgb.getXuehao()%>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					��&nbsp;��
					<%=(tqgb.getSex() == null) ? ""
							: tqgb.getSex()%>
						</td>	
				
					<td >
				˶ʿרҵ��
					<%=(tqgb.getSszy()==null)?"":tqgb.getSszy()%>
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				�ⱨ��ʿרҵ�� 
				<%=(tqgb.getNbzy()==null)?"":tqgb.getNbzy()%>
						</td >
						<td>
						ԭ˶����
					<%=(tqgb.getSd()==null)?"":tqgb.getSd()%>
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						�ⱨ������&nbsp; 
			<%=(tqgb.getNbbd()==null)?"":tqgb.getNbbd()%>
						</td>	
				
				
			  
					<td >
						�ɼ�������
				<%=(tqgb.getCjpm()==null)?"":tqgb.getCjpm()%>
						</td>	
				
				</tr>
					
					
				<tr class="tdbg">
					<td >
						��ʦ��Ϣ��
				<input name="dsxx" value="<%=(tqgb.getDsxx() == null) ? ""
						: tqgb.getDsxx()%>">	
						</td>	
				
					<td >
                     ¼ȡ���
                  <input name="lqlb" value="<%=(tqgb.getLqlb()== null) ? ""
						: tqgb.getLqlb()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
						<td>
					¼ȡרҵ�� 
						<input name="lqzy" value="<%=(tqgb.getLqzy() == null) ? ""
						: tqgb.getLqzy()%>">	
						</td>
						<td>
				       ��ϵ��ʽ��
				<%=(tqgb.getTel()==null)?"":tqgb.getTel()%>
				       
				</td>
						</tr>	
				<tr class="tdbg">
					<td colspan="2">
						��&nbsp;ע��
					
					 <%=(tqgb.getBeizhu()==null)?"":tqgb.getBeizhu()%>
					
				</table>
			<BR>
			<center>
			    <input type="submit" name="submit" value="ȷ���޸�">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='TqgbstudentListSq.jsp'">
			</center>
    </form>
	</body>
	<%
 }
 %>
</html>