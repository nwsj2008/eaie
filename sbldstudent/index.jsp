<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.sbld.*" %>
<%@ page import="com.eaie.tools.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Sbld sbldUser = (Sbld)session.getAttribute("SBLDUSER");

%>
<html>

<head>
<title>������Ϣ����ѧԺ˶����������ϵͳ</title>
<LINK REL=StyleSheet HREF="sbldstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ˶����������ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="#">��ҳ</a>
		<a href="newslist.jsp">�鿴֪ͨ</a>
		<a href="application/ApplicationAdd.jsp">�ύ����</a>
		<a href="application/ApplicationInfo.jsp">�鿴����</a>
		<a href="application/ApplicationEdit.jsp?id=<%=sbldUser.getId() %>">�޸�����</a>
		<a href="result.jsp">�鿴���</a>
		<a href="sbldLogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=(sbldUser.getName()==null?"ͬѧ":sbldUser.getName() )%>,��ã�</h2>
		<h2>��ӭ��¼������Ϣ����ѧԺ˶����������ϵͳ��</h2>
		 1.Ϊʹҳ��������ʾ���Ƽ���ʹ��1024x768���߸��ߵ���Ļ�ֱ��ʡ�
		<br><br>
		2.ÿ�ε�¼ʱ����Ϊ30����,���Լʱ�䡣
		<br><br>
		3.�����������Լ��ĵ�¼���룬�뿪ʱ�ǵ��˳�ϵͳ��
		<br><br>
		4.��½����鿴˶����������֪ͨ��
		<br><br>
		5.��½�����ύ���룬�鿴���룬�޸�����ȡ�
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