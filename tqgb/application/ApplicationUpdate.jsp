<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String xuehao = request.getParameter("number");
	String sex = request.getParameter("sex");
	String sszy = request.getParameter("master");
	String nbzy=request.getParameter("doctor");
	String sd=request.getParameter("masterTeacher");
	String nbbd=request.getParameter("doctorTeacher");
	String tel=request.getParameter("tel");
	String cjpm=request.getParameter("cjpm");
	String beizhu=request.getParameter("beizhu");
	String male="男";
	String female="女";

    
    Tqgb tqgbstudent = (Tqgb)BasicDAO.queryById(Tqgb.class, id);
    tqgbstudent.setId(id);
	tqgbstudent.setName(name);
	tqgbstudent.setXuehao(xuehao);
	if(sex.equals("male"))
    { 
       tqgbstudent.setSex(male);
    }
    else
    {
       tqgbstudent.setSex(female);
    }
	tqgbstudent.setSszy(sszy);
	tqgbstudent.setNbzy(nbzy);
	tqgbstudent.setSd(sd);
	tqgbstudent.setNbbd(nbbd);
	tqgbstudent.setTel(tel);
	tqgbstudent.setCjpm(cjpm);
	tqgbstudent.setBeizhu(beizhu);
try {
		
		BasicDAO.update(tqgbstudent);
		out.println(JavaScript.alertandRedirect("保存成功", "ApplicationInfo.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>