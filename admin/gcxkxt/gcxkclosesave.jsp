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
  int id=1;
  String openxt = "0";//opentxΪ1ʱ����ϵͳ��Ϊ0ʱ�ر�ϵͳ
	Gcxkopen Gcxkopen=(Gcxkopen)BasicDAO.queryById(Gcxkopen.class,id);
    Gcxkopen.setId(id);
	Gcxkopen.setOpenxt(openxt);
	
	try {
	  BasicDAO.update(Gcxkopen);	
		out.println(JavaScript.alertandRedirect("�رճɹ�", "gcxkclose.jsp"));
		
		System.out.print("ok");

	} catch (Exception e) {
	
		e.printStackTrace();
		out.println(JavaScript.alertandBack("�ر�ʧ��"));
	}
%>
