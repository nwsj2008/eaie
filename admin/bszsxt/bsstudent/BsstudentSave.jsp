<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.bszsxt.bsstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>

<jsp:useBean id="bsstudent" class="com.eaie.dbmanage.Bsstudent">
	<jsp:setProperty name="bsstudent" property="*" />
</jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% 
	  String id=request.getParameter("id");
	try {
	   if(id == null){
		BasicDAO.save(bsstudent);
		out.println(JavaScript.alertandRedirect("����ɹ�", "BsstudentListbj.jsp"));
        }
        else{
          BasicDAO.update(bsstudent);
          out.println(JavaScript.alertandRedirect("�޸ĳɹ�","BsstudentListbj.jsp"));
        }
	} catch (Exception ex) {
		// TODO Auto-generated catch block
		ex.printStackTrace();
		if(id == null){
		out.println(JavaScript.alertandBack("����ʧ��! �����Ի�������!"));
	}
	   else{
	    out.println(JavaScript.alertandBack("�޸�ʧ��! �����Ի�������!"));
	   }
	}
%>
