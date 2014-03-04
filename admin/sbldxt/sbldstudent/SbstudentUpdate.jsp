<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.sbldxt.sbldstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    int id=Integer.parseInt(request.getParameter("id"));
	
	String lqzy = request.getParameter("lqzy");
	String dsxx=request.getParameter("dsxx");
	String lqlb=request.getParameter("lqlb");
	
	Sbld sbld = (Sbld)BasicDAO.queryById(Sbld.class, id);
	
	sbld.setLqzy(lqzy);
	sbld.setDsxx(dsxx);
	sbld.setLqlb(lqlb);
	
	try {
	
		BasicDAO.update(sbld);
		out.println(JavaScript.alertandRedirect("±à¼­³É¹¦", "SbstudentListSq.jsp"));

	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("±à¼­Ê§°Ü"));
	}
%>
