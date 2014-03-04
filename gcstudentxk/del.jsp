<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.xk.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>

<%
	String gcxkid = request.getParameter("gcxkid");
	if (gcxkid != null) {
		try {

			Gcxk gcxk2 = (Gcxk) BasicDAO.queryById(Gcxk.class, Integer
					.parseInt(gcxkid));
			BasicDAO.delete(gcxk2);
			out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦","showCourse.jsp"));

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü"));
		}

	}
%>