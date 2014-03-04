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
	
	Tqgbnews tqgbnews = new Tqgbnews();
	tqgbnews.setTitle(title);
	tqgbnews.setContent(content);
	tqgbnews.setPubtime(new Date());
	tqgbnews.setFilename(filename);
	tqgbnews.setFileurl(fileurl);

	try {
	
		BasicDAO.save(tqgbnews);
		out.println(JavaScript.alertandRedirect("保存成功", "TqgbnewsList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>

