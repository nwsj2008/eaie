<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbnews.*"%>
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
    Tqgbnews  tqgbnews = ( Tqgbnews)BasicDAO.queryById( Tqgbnews.class, id);
	//Tmnews tmnews = new Tmnews();
	tqgbnews.setId(id);
	tqgbnews.setTitle(title);
	tqgbnews.setContent(content);
	tqgbnews.setPubtime(new Date());
	tqgbnews.setFilename(filename);
	tqgbnews.setFileurl(fileurl);

	try {
		
		BasicDAO.update(tqgbnews);
		out.println(JavaScript.alertandRedirect("保存成功", "TqgbnewsList.jsp"));

	} catch (Exception e) {

		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>