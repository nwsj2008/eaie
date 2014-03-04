<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%@ page import="com.eaie.tmszsxt.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
  int id=1;
  String openxt = "1";//opentx为1时开启系统，为0时关闭系统
	Tmopen tmopen=(Tmopen)BasicDAO.queryById(Tmopen.class,id);
  tmopen.setId(id);
  //Tmopen tmopen=new Tmopen();
	tmopen.setOpenxt(openxt);
	
	try {
	  BasicDAO.update(tmopen);	
		out.println(JavaScript.alertandRedirect("开启成功", "Open.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("开启失败"));
	}
%>
