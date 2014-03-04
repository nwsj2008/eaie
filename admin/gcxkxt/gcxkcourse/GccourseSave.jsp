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
	String title = request.getParameter("title");
	String teacher = request.getParameter("teacher");
	String credit = request.getParameter("credit");
	String book = request.getParameter("book");
	String nian = request.getParameter("nian");
	String shijian = request.getParameter("shijian");
	String place = request.getParameter("place");
	String test = request.getParameter("test");
	String beizhu = request.getParameter("beizhu");
	
	
	Gccourse gccourse = new Gccourse();
    gccourse.setTitle(title);
	gccourse.setTeacher(teacher);
	gccourse.setCredit(credit);
	gccourse.setBook(book);
	gccourse.setNian(nian);
	gccourse.setShijian(shijian);
	gccourse.setPlace(place);
	gccourse.setTest(test);
	gccourse.setBeizhu(beizhu);
	try {
	
		BasicDAO.save(gccourse);
		out.println(JavaScript.alertandRedirect("保存成功", "Gcchoose.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>
