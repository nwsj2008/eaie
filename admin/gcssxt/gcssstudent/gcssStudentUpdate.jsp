<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.gcssxt.gcssstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    int id=Integer.parseInt(request.getParameter("id"));
	
	String lqjg=request.getParameter("lqjg");
	
	Gcss gcss = (Gcss)BasicDAO.queryById(Gcss.class, id);
	
	//gcss.setZyk(zyk);
	//gcss.setTel(tel);
	gcss.setLqjg(lqjg);
	
	try {
	
		BasicDAO.update(gcss);
		out.println(JavaScript.alertandRedirect("±à¼­³É¹¦", "gcssStudentList.jsp"));

	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("±à¼­Ê§°Ü"));
	}
%>
