<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
	
	String expid = request.getParameter("id");
	String order = request.getParameter("order");
	
	if(expid==null||order==null){	
		return;
	}
	Innovativelexp exp = ExpManage.getExp(Integer.valueOf(expid));
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");
	if(exp==null||student==null){
		
		return;
	}
	try{
		
		Expchose chose = new Expchose();
		chose.setApporder(Integer.valueOf(order));
		chose.setExpstudent(student);
		chose.setInnovativelexp(exp);
		ChoseManage.saveExpchose(chose);
		out.println(JavaScript.alertandRedirect("志愿添加成功!","ExpPassList.jsp"));
	
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("志愿添加失败!"));
		
	}

%>