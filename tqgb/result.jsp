<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tqgb.*" %>
<%@ page import="com.eaie.tools.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Tqgb tqgbUser = (Tqgb)session.getAttribute("TQGBUSER");

%>
<html>

<head>
<title>������Ϣ����ѧԺ��ǰ��������ϵͳ</title>
<LINK REL=StyleSheet HREF="tqgbstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ��ǰ��������ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">��ҳ</a>
		<a href="newslist.jsp">�鿴֪ͨ</a>
		<a href="application/ApplicationAdd.jsp">�ύ����</a>
		<a href="application/ApplicationInfo.jsp">�鿴����</a>
		<a href="application/ApplicationEdit.jsp?id=<%=tqgbUser.getId() %>">�޸�����</a>
		<a href="result.jsp">�鿴���</a>
		<a href="tqgbLogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<table>
		<tr height="40px">
			<td width="170px" align="right" valign="top"><h2>¼ȡ���</h2></td>
			<td align="left" valign="top"><h2><%= (tqgbUser.getLqlb()==null)?"": tqgbUser.getLqlb()%></h2></td>
		</tr>
		
		<tr height="40px">
			<td valign="top" align="right"><h2>¼ȡרҵ��</h2></td>
			<td align="left" valign="top"><h2><%= (tqgbUser.getLqzy()==null)?"": tqgbUser.getLqzy() %></h2></td>
		</tr>
		<tr height="40px" >
			<td valign="top" align="right"><h2>��ʦ��Ϣ��</h2></td>
			<td align="left" valign="top"><h2><%= (tqgbUser.getDsxx()==null)?"": tqgbUser.getDsxx() %></h2></td>
		</tr>
	</table>
		<br><br>
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