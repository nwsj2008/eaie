<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcssusers.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcssusers.GcssuserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcss gcssuser = (Gcss)session.getAttribute("GCSSUSER");%>
<html>

<head>
<title>������Ϣ����ѧԺ����˶ʿ����ϵͳ</title>
<LINK REL=StyleSheet HREF="gcssstyle.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿ����ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="#">��ҳ</a>
		<a href="newslist.jsp">�鿴����֪ͨ</a>
		<a href="cscj.jsp">�鿴GCT�ɼ�</a>
		<a href="fskc/fskcAdd.jsp">�걨���Կγ�</a>
		<a href="lqjg.jsp">�鿴¼ȡ���</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="gcsslogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcssuser.getName() %>,��ã�</h2>
		<h2>��ӭ��¼������Ϣ����ѧԺ����˶ʿ����ϵͳ��</h2>
		 1.Ϊʹҳ��������ʾ���Ƽ���ʹ��1024x768���߸��ߵ���Ļ�ֱ��ʡ�
		<br><br>
		2.ÿ�ε�¼ʱ����Ϊ30����,���Լʱ�䡣
		<br><br>
		3.�����������Լ��ĵ�¼���룬�뿪ʱ�ǵ��˳�ϵͳ��
		<br><br>
		4.��½����鿴����֪ͨ��
		<br><br>
		5.��½����鿴������Ϣ������GCT�ɼ�������֪ͨ��¼ȡ��Ϣ��
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