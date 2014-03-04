<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%@ page import="com.eaie.sbldxt.sbldstudent.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
  String term = request.getParameter("term");
  int id=1;
  String openxt = "1";//opentx为1时开启系统，为0时关闭系统
   Gcxkopen Gcxkopen=(Gcxkopen)BasicDAO.queryById(Gcxkopen.class,id);
    Gcxkopen.setId(id);
    Gcxkopen.setTerm(term);
	Gcxkopen.setOpenxt(openxt);
	
	try {
	  BasicDAO.update(Gcxkopen);	
		out.println(JavaScript.alertandRedirect("开启成功", "gcxkopen.jsp"));

	} catch (Exception e) {
	
		e.printStackTrace();
		out.println(JavaScript.alertandBack("开启失败"));
	}
%>
