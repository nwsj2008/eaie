<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.sbldxt.sbnews.*"%>
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
    Sbnews sbnews = (Sbnews)BasicDAO.queryById(Sbnews.class, id);

	sbnews.setId(id);
	sbnews.setTitle(title);
	sbnews.setContent(content);
	sbnews.setPubtime(new Date());
	sbnews.setFilename(filename);
	sbnews.setFileurl(fileurl);

	try {
		
		BasicDAO.update(sbnews);
		out.println(JavaScript.alertandRedirect("保存成功", "SbnewsList.jsp"));

	} catch (Exception e) {

		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>