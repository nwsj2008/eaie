<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>

<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    int id=Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	Gcteacher gcteacher = new Gcteacher();
	gcteacher.setId(id);
	gcteacher.setName(name);
	gcteacher.setPwd(pwd);
	
	try {
	
		BasicDAO.update(gcteacher);
		out.println(JavaScript.alertandRedirect("±à¼­³É¹¦", "GcteacherList.jsp"));

	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("±à¼­Ê§°Ü"));
	}
%>
