<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");
String xuewei="";
%>
<html>

<head>
<title>������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
</head>


<%		String courseId=request.getParameter("id");
		//��ѯ�γ���Ϣ	
		List lista = BasicDAO
				.queryByHql("From Gccourse gccourse where gccourse.id='"
						+ courseId + "'");
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
		<a href="kcxx.jsp">�鿴�γ���Ϣ</a>
		<a href="score.jsp">�༭ѧ���ɼ�</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="logout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcteacher.getName() %>��ʦ,��ã�</h2>
		<table border="1"  cellpadding="2" cellspacing="1">
			
			<% if (lista.size() == 0) 
				{
				out.print("û�м�¼");
				} 
				else {	
					Gccourse gccourse = (Gccourse) lista.get(0);
			%>
			<tr align="center" height="25">
				<td width="100"  align="center">
				�γ�����
				</td>
				<td  width="200">
				<%= gccourse.getTitle()==null?"":gccourse.getTitle() %>
				</td>
				<td  width="100" align="center">
				ѧ��
				</td>
				<td width="200">
				<%= gccourse.getCredit()==null?"": gccourse.getCredit()%>
				</td>				
			</tr>
			<tr align="center" height="25">
				<td width="100"  align="center">
				ѧʱ
				</td>
				<td  width="200">
				<%= gccourse.getXueshi()==null?"":gccourse.getXueshi() %>
				</td>
				<td  width="100" align="center">
				�Ƿ�ѧλ��
				</td>
				<td width="200">
				<%if (gccourse.getIsxuewei().equals("1"))  {xuewei="��";}
				  else { xuewei="��";}
				%>
				<%= xuewei %>
				</td>				
			</tr>
			<tr align="center" height="25">
				<td width="100" align="center">
				��ʦ����
				</td>
				<td width="200">
				<%= gccourse.getBook()==null?"":gccourse.getBook() %>
				</td>
				<td width="100" align="center">
				�Ͽεص�
				</td>
				<td width="200">
				<%= gccourse.getPlace()==null?"":gccourse.getPlace() %>
				</td>	
			</tr>
			<tr align="center" height="25">
				<td width="100" align="center">
				�Ͽ�ʱ��
				</td>
				<td width="200">
				<%= gccourse.getShijian()==null?"": gccourse.getShijian()%>
				</td>
				<td align="center">
				����ʱ��
				</td>
				<td>
				<%= gccourse.getTest()==null?"":gccourse.getTest() %>
				</td>
			</tr>
			<%} %>
		</table>
		<br><br><center>
		<input type="button" name="back" value="��&nbsp;��"  onClick="history.back(-1)">
		</center>
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