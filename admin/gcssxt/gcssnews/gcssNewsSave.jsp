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
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String filename = request.getParameter("filename");
	String fileurl = request.getParameter("fileurl");
	
	Gcssnews gcssnews = new Gcssnews();
	gcssnews.setTitle(title);
	gcssnews.setContent(content);
	gcssnews.setPubtime(new Date());
	gcssnews.setFilename(filename);
	gcssnews.setFileurl(fileurl);

	try {
	
		BasicDAO.save(gcssnews);
		out.println(JavaScript.alertandRedirect("保存成功", "gcssNewsList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>

