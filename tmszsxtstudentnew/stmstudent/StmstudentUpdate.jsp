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
<%
    int id=Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String byschool = request.getParameter("byschool");
	String byspeciality = request.getParameter("byspeciality");
	String jsacademe = request.getParameter("jsacademe");
	String jsspeciality=request.getParameter("jsspeciality");
	String tel=request.getParameter("tel");
	String siji=request.getParameter("siji");
	String liuji=request.getParameter("liuji");
	String zypm=request.getParameter("zypm");
	String zyrs=request.getParameter("zyrs");
	String huoj=request.getParameter("huoj");
	//String shenheresult=request.getParameter("shenheresult");
	//String fushiresult=request.getParameter("fushiresult");
	//String sflq=request.getParameter("sflq");
	//String teacher=request.getParameter("teacher"); 
	Tmstudent tmstudent = (Tmstudent)BasicDAO.queryById(Tmstudent.class, id);
    tmstudent.setId(id);
	tmstudent.setName(name);
	tmstudent.setByschool(byschool);
	tmstudent.setByspeciality(byspeciality);
	tmstudent.setJsacademe(jsacademe);
	tmstudent.setJsspeciality(jsspeciality);
	tmstudent.setTel(tel);
	tmstudent.setSiji(siji);
	tmstudent.setLiuji(liuji);
	tmstudent.setZypm(zypm);
	tmstudent.setZyrs(zyrs);
	tmstudent.setHuoj(huoj);
	//tmstudent.setShenheresult(shenheresult);
	//tmstudent.setFushiresult(fushiresult);
	//tmstudent.setSflq(sflq);
	//tmstudent.setTeacher(teacher);	

	try {
		
		BasicDAO.update(tmstudent);
		out.println(JavaScript.alertandRedirect("保存成功", "StmstudentInfo.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>