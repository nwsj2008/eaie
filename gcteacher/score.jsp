<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");%>
<html>

<head>
<title>������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
<script language=javascript> 
function getSelect(){

           var factor=document.getElementById('nianfen');
           var fa=factor.selectedIndex;
           username= factor.options[fa].value;

           user=document.getElementById('nianfen').options[document.getElementById('nianfen').selectedIndex].text;
           document.getElementById('nian').value = username;
           document.all.form1.submit();
     }
</script>
</head>


<%
		//��ѯ�γ���Ϣ		
		String tchname=gcteacher.getName();
		List lista = BasicDAO
				.queryByHql("Select distinct nian from Gccourse gccourse where gccourse.teacher='"
						+ tchname + "'");
		String year="";
		int courseid;
		String nianfen=request.getParameter("nian");
	%>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="index.jsp">��ҳ</a>
		<a href="ModifyPwd.jsp">�޸ĵ�½����</a>
		<a href="kcxx.jsp" >�鿴�γ���Ϣ</a>
		<a href="score.jsp">�༭ѧ���ɼ�</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="logout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcteacher.getName() %>��ʦ,��ã�</h2>
		<form name="form1" method="post" action="score.jsp">
		<select name="nianfen" id="nianfen" style="width: 150px" onChange="return getSelect()">
		<option >��ѡ��γ����</option>
		<%
		if (lista.size() == 0) {
						out.print("û�м�¼");}
					else
					   {
					   for (int k=0;k<lista.size();k++)
					   {
                        year = lista.get(k).toString();	
					    %>
					<option value="<%=year %>" 
					<% if (nianfen!=null&&(nianfen.equals(year)))
												{%>
												selected="selected" <%}%>
					><%=year %></option>
															
			<%} %>
		</select>
		<input type="hidden" name="nian" id="nian" value="">
		</form>
		<table border="1">
			<tr height="20">
				<td width="140" align="center">
				�γ�����
				</td>			
				<td width="140" align="center">
				ѡ������
				</td>
				<td colspan="3" width="240" align="center">
				ѧ���ɼ�
				</td>
			
			</tr>
			<%List listb = BasicDAO
				.queryByHql("From Gccourse gccourse where gccourse.teacher='"
						+ tchname + "'"+"and gccourse.nian='"+ nianfen + "'");
			 if (listb.size() == 0) 
				{
				
				} 
				else {
					for (int i=0;i<listb.size();i++)
					{
					Gccourse gccourse = (Gccourse) listb.get(i);
					//ͳ��ѡ������		
					courseid=gccourse.getId();	
					List listc = BasicDAO.queryByHql("From Gcxk gcxk where gcxk.tid='"+ courseid + "'");
					int number=0;
					if (listc.size() == 0) {
					} else 
					{
					number=listc.size();
					}		
			%>
			<tr align="center" height="25">
				<td >
				<%= gccourse.getTitle()==null?"":gccourse.getTitle() %>
				</td>				
				<td>
				<%= number %>
				</td>
				<td>
				<a href="Score/ViewScr.jsp?id=<%=courseid %>">�鿴</a>
				</td>
				<td>
				<a href="Score/EditScr.jsp?id=<%=courseid %>">�޸�</a>
				</td>
				<td>
				<a href="Score/scoreExcelDc.jsp?id=<%=courseid %>&csTitle=<%=gccourse.getTitle() %>">����</a>
				</td>
			</tr>
			<%}} }%>
		</table>
		</select>
	</div>
	
	</div>
	
	<div id="footer">
			��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
	</div>


</div>
</body>
   

</html>