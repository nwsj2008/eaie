<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
	String[] id = request.getParameterValues("id");
	if(id==null||id.length==0){
		return;
	}	
	try{
		for(int i = 0;i<id.length;i++){
			Innovativelexp exp = ExpManage.getExp(Integer.valueOf(id[i]));	
			if(exp!=null){
				ExpManage.DeleteInnovativelexp(exp);
			}
		}
		out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦","ExpList.jsp"));
				
	}catch(Exception ex){
	
		out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü"));
	}
	
%>