<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.gcssxt.gcssstudent.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	String[] idStrings = request.getParameterValues("id");
	try {
		for (int i = 0; i < idStrings.length; i++) {
			int temp = Integer.parseInt(idStrings[i]);
			 Gcss gcss= (Gcss)BasicDAO.queryById(Gcss.class, temp);

			BasicDAO.delete(gcss);
			
		}
		out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡",
				"gcssStudentList.jsp"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¡"));

	}
%>