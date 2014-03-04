<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
	String id = request.getParameter("id");
	String sAction = request.getParameter("action");
	if(id==null){
		return;
	}	
	try{
	
		Innovativelexp exp = ExpManage.getExp(Integer.valueOf(id));
		if(exp==null){ return; }
		if(sAction!=null){
			exp.setIspass(new Short("0"));
		}else{
			exp.setIspass(new Short("1"));
		}
		ExpManage.UpdateInnovativelexp(exp);
		out.println(JavaScript.alertandRedirect("操作成功","ExpList.jsp"));
		
	}catch(Exception ex){
		out.println(JavaScript.alertandBack("操作失败"));
	}
	
%>