<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");%>
<html>

<head>
<title>������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="#">��ҳ</a>
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
		<h2>��ӭ��¼������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ��</h2>
		 1.Ϊʹҳ��������ʾ���Ƽ���ʹ��1024x768���߸��ߵ���Ļ�ֱ��ʡ�
		<br><br>
		2.ÿ�ε�¼ʱ����Ϊ30����,���Լʱ�䡣
		<br><br>
		3.�����������Լ��ĵ�¼���룬�뿪ʱ�ǵ��˳�ϵͳ��
		<br><br>
		4.��½����鿴���Ŀγ���Ϣ���鿴���޸�ѧ���ɼ���
		<br><br>
		5.�������ʲô���⣬����ϵ���ǡ�
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