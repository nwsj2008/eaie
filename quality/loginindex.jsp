<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.tools.*" %>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		

		
<html>
<head>
<title>������Ϣ����ѧԺ����ʵ��ϵͳ</title>
<base href="<%=basePath%>">
</head>
<%
	if(session.getAttribute("EXPSTUDENT")==null){
		
		out.println(JavaScript.alertandRedirect("����δ��¼�����ȵ�¼��","login.jsp"));
	}else{
 %>
<frameset cols="180,*" framespacing="0" frameborder="0" border="false" id="frame">
  <frame src="quality/left.jsp" name="left" marginwidth="0" marginheight="0" scrolling="no">
  <frame src="quality/info.jsp" name="main" scrolling="auto">
</frameset>
<noframes>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0">
<p>���������汾���ͣ�������ϵͳҪ��IE5�����ϰ汾����ʹ�ñ�ϵͳ��</p>
<%
	}
 %>
</body>
</noframes>
</html>
