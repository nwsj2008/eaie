<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Hibernate"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String[] idStrings = request.getParameterValues("id");
	if (idStrings != null) {

		String hql = "delete from Bsstudent  where id in (:Ids)";
		EbasicDAO.mDeleteHQL(hql, idStrings);
		out.println(JavaScript.alertandRedirect("删除成功！",
				"BsstudentListbj.jsp"));

	} else {
		out.println(JavaScript.alertandBack("请选择要删除的博士生"));
	}
%>