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
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	
	Gcstudent gcstudent = new Gcstudent();
    gcstudent.setName(name);
	gcstudent.setPwd(pwd);
	
	try {
	
		BasicDAO.save(gcstudent);
		out.println(JavaScript.alertandRedirect("����ɹ�", "GcstudentList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("����ʧ��"));
	}
%>