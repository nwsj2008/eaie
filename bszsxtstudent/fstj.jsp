<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.bsusers.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.bsusers.BsuserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Bsstudent bsuser = (Bsstudent)session.getAttribute("BSUSER");	%>
<html>

<head>
<title>������Ϣ����ѧԺ��ʿ�о�������ϵͳ</title>
<LINK REL=StyleSheet HREF="bsstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ��ʿ�о�������ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="index.jsp">��ҳ</a>
		<a href="newslist.jsp">�鿴����֪ͨ</a>
		<a href="cscj.jsp">�鿴���Գɼ�</a>
		<a class="active" href="#">�鿴����֪ͨ</a>
		<a href="lqjg.jsp">�鿴¼ȡ���</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="bslogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	<div id="contentarea">
	<br><br><br><br><br>
	<font size=3 face="����">
	<center>
	<table>
		<tr height="40px">
			<td width="90px" valign="top">����רҵ��</td>
			<td align="left" valign="top"><%= bsuser.getBkzy() %><br></td>
		</tr>
		
		<tr height="40px">
			<td valign="top" >������ʦ��</td>
			<td align="left" valign="top"><%= bsuser.getBkds() %></td>
		</tr>
		<tr height="40px">
			<td valign="top" >����֪ͨ��</td>
			<td align="left" valign="top"><%= bsuser.getMstz() %></td>
		</tr>
	</table>
	</center>
	</font>
	
	

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