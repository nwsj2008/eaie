<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.bszsxt.bsstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    int id=Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String bkzy = request.getParameter("bkzy");
	String bkds = request.getParameter("bkds");
	String waiyu = request.getParameter("waiyu");
	String yewu1 = request.getParameter("yewu1");
	String yewu2 = request.getParameter("yewu2");
	String zongfen = request.getParameter("zongfen");
	String mstz = request.getParameter("mstz");
	String lqzy = request.getParameter("lqzy");
	String lqds=request.getParameter("lqds");
	String lqlb=request.getParameter("lqlb");
	
	Bsstudent bsstudent = new Bsstudent();
	bsstudent.setId(id);
	bsstudent.setName(name);
	bsstudent.setPwd(pwd);
	bsstudent.setBkzy(bkzy);
	bsstudent.setBkds(bkds);
	bsstudent.setWaiyu(waiyu);
	bsstudent.setYewu1(yewu1);
	bsstudent.setYewu2(yewu2);
	bsstudent.setZongfen(zongfen);
	bsstudent.setMstz(mstz);
	bsstudent.setLqzy(lqzy);
	bsstudent.setLqds(lqds);
	bsstudent.setLqlb(lqlb);
	
	try {
	
		BasicDAO.update(bsstudent);
		out.println(JavaScript.alertandRedirect("±à¼­³É¹¦", "BsstudentListbj.jsp"));

	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("±à¼­Ê§°Ü"));
	}
%>
