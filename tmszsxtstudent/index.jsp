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
<title>电子信息工程学院推免生招生管理系统</title>
<base href="<%=basePath%>">
</head>
<%
	//if(session.getAttribute("USER")==null){
	//	
	//	out.println(JavaScript.alertandRedirect("您尚未登录，请先登录！","login.jsp"));
	//}else{
 %>
<frameset cols="180,*" framespacing="0" frameborder="0" border="false" id="frame">
  <frame src="tmszsxtstudent/left.jsp" name="left" marginwidth="0" marginheight="0" scrolling="no">
  <frame src="tmszsxtstudent/main.jsp" name="main" scrolling="auto">
</frameset>
<noframes>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0">
<p>你的浏览器版本过低！！！本系统要求IE5及以上版本才能使用本系统。</p>
<%
	//}
 %>
</body>
</noframes>
</html>
