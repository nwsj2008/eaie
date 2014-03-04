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
	
	Bsnews bsnews=new Bsnews();
	bsnews.setTitle(title);
	bsnews.setContent(content);
	bsnews.setPubtime(new Date());
	bsnews.setFilename(filename);
	bsnews.setFileurl(fileurl);

	try {
	
		BasicDAO.save(bsnews);
		out.println(JavaScript.alertandRedirect("保存成功", "BsnewsList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>

