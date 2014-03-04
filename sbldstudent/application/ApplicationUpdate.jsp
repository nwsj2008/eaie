<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.sbldxt.sbldstudent.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String xuehao = request.getParameter("number");
	String sex = request.getParameter("sex");
	String sszy = request.getParameter("master");
	String bbzy=request.getParameter("doctor");
	String sd=request.getParameter("masterTeacher");
	String nbbd=request.getParameter("doctorTeacher");
	String tel=request.getParameter("tel");
	String rxcj=request.getParameter("score");
	String cjpm=request.getParameter("cjpm");
	String beizhu=request.getParameter("beizhu");
	String male="男";
	String female="女";

    
    Sbld sbldstudent = (Sbld)BasicDAO.queryById(Sbld.class, id);
    sbldstudent.setId(id);
	sbldstudent.setName(name);
	sbldstudent.setXuehao(xuehao);
	if(sex.equals("male"))
    { 
       sbldstudent.setSex(male);
    }
    else
    {
       sbldstudent.setSex(female);
    }
	sbldstudent.setSszy(sszy);
	sbldstudent.setBbzy(bbzy);
	sbldstudent.setSd(sd);
	sbldstudent.setNbbd(nbbd);
	sbldstudent.setTel(tel);
	sbldstudent.setRxcj(rxcj);
	sbldstudent.setCjpm(cjpm);
	sbldstudent.setBeizhu(beizhu);
try {
		
		BasicDAO.update(sbldstudent);
		out.println(JavaScript.alertandRedirect("保存成功", "ApplicationInfo.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>