<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
  int id=1;
  String openxt = "0";//opentxΪ1ʱ����ϵͳ��Ϊ0ʱ�ر�ϵͳ
	Tmopen tmopen=(Tmopen)BasicDAO.queryById(Tmopen.class,id);
  tmopen.setId(id);
	tmopen.setOpenxt(openxt);
	
	try {
	  BasicDAO.update(tmopen);	
		out.println(JavaScript.alertandRedirect("�رճɹ�", "Close.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("�ر�ʧ��"));
	}
%>
