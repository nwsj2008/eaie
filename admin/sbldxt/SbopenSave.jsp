<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
  int id=1;
  String openxt = "1";//opentxΪ1ʱ����ϵͳ��Ϊ0ʱ�ر�ϵͳ
   Sbopen sbopen=(Sbopen)BasicDAO.queryById(Sbopen.class,id);
    sbopen.setId(id);
  
	sbopen.setOpenxt(openxt);
	
	try {
	  BasicDAO.update(sbopen);	
		out.println(JavaScript.alertandRedirect("�����ɹ�", "Sbopen.jsp"));

	} catch (Exception e) {
	
		e.printStackTrace();
		out.println(JavaScript.alertandBack("����ʧ��"));
	}
%>
