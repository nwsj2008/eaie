<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>

<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String filename = request.getParameter("filename");
	String fileurl = request.getParameter("fileurl");
    Gcxknews gcxknews = (Gcxknews)BasicDAO.queryById(Gcxknews.class, id);

	gcxknews.setId(id);
	gcxknews.setTitle(title);
	gcxknews.setContent(content);
	gcxknews.setPubtime(new Date());
	gcxknews.setFilename(filename);
	gcxknews.setFileurl(fileurl);

	try {
		
		BasicDAO.update(gcxknews);
		out.println(JavaScript.alertandRedirect("保存成功", "gcxknewslist.jsp"));

	} catch (Exception e) {

		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>