<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.xk.*" %>
<%@ page import="com.eaie.tools.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
%>
<html>

<head>
<title>ѡ�ΰ���</title>
<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿѡ��ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">��ҳ</a>
		<a href="NewsList.jsp">�鿴֪ͨ</a>
		<a href="xk.jsp">ѡ����ѧ�ڿγ�</a>	
		<a href="showCourse.jsp">��ʾ��ѧ�ڿγ�</a>	
	    <a href="showScore.jsp">�鿴����</a>
	    <a href="help.jsp">ѡ�ΰ���</a>
		<a href="logout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2>ͬѧ,��ã�</h2>
		<h2>��ӭʹ��Ժ����˶ʿѡ��ϵͳ��</h2>
		ʹ������:
		<br><br>
		1.��½ѡ��ϵͳ
		<br><br>
		2.�ڲ鿴֪ͨ�п������ر�ѧ�ڵĿγ̰��š�
		<br><br>
		3.���ѡ����ѧ�ڿγ̣�ҳ�����ʾ����ѧ�ڵ����еĿγ̣�����γ����ƿ��Բ鿴�ÿγ̵���ϸ��Ϣ�����ѡ�ϸÿγ̰�ť����ѡ�γɹ�
		  
		<br><br>
		4.�����ʾ��ѧ�ڿγ̣���ҳ����ʾ���Ѿ�ѡ�ϵĿγ̡�����Ҫɾ���γ̣���������е�ɾ����ť���ɡ�
		<br><br>
		5.����鿴��������ҳ����ʾ����ѡ�γ̵ķ�����
		<br><br>
		6.���ѡ�ΰ������鿴ѡ�����̡�
		<br><br>
		7.����˳�ϵͳ�������˳�ϵͳ��
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