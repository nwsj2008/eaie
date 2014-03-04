<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
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
    Tmnews tmnews = (Tmnews)BasicDAO.queryById(Tmnews.class, id);
	//Tmnews tmnews = new Tmnews();
	tmnews.setId(id);
	tmnews.setTitle(title);
	tmnews.setContent(content);
	tmnews.setPubtime(new Date());
	tmnews.setFilename(filename);
	tmnews.setFileurl(fileurl);

	try {
		
		BasicDAO.update(tmnews);
		out.println(JavaScript.alertandRedirect("保存成功", "TmnewsList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>