<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String[] idStrings = request.getParameterValues("id");
	try {
		for (int i = 0; i < idStrings.length; i++) {
			int temp = Integer.parseInt(idStrings[i]);
			Tmnews tmnews = (Tmnews)BasicDAO.queryById(Tmnews.class, temp);
			//tmnews.setId(temp);
			BasicDAO.delete(tmnews);
			
			
			
			    String sFileUrl = tmnews.getFileurl();	
			String filepath = config.getServletContext().getRealPath("/UploadFiles/upfile/"+sFileUrl);	
				java.io.File filetodel = new java.io.File(filepath);
					System.out.println("É¾³ýÎÄ¼þ£º" + filetodel.toString());
					if(filetodel.exists()){
					
						boolean delok = filetodel.delete();					
						if(delok){	
						}else{						
							out.println(JavaScript.alert("É¾³ý¸½¼þÊ§°Ü£¡"));	
						}										
					}	
			
		}
		out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡",
				"TmnewsList.jsp"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¡"));

	}
%>
