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
	
	String lqzy = request.getParameter("lqzy");
	String dsxx=request.getParameter("dsxx");
	String lqlb=request.getParameter("lqlb");
	
	Tqgb tqgb = (Tqgb)BasicDAO.queryById(Tqgb.class, id);
	
	tqgb.setLqzy(lqzy);
	tqgb.setDsxx(dsxx);
	tqgb.setLqlb(lqlb);
	
	try {
	
		BasicDAO.update(tqgb);
		out.println(JavaScript.alertandRedirect("修改成功", "TqgbstudentListSq.jsp"));

	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("修改失败"));
	}
%>
