<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>

<%@ page import="com.eaie.tools.*"%>

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
			Bsnews bsnews = (Bsnews)BasicDAO.queryById(Bsnews.class, temp);
			//tmnews.setId(temp);
			BasicDAO.delete(bsnews);
			
			
			
			    String sFileUrl = bsnews.getFileurl();	
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
				"BsnewsList.jsp"));
	} catch (Exception e) {
		
		e.printStackTrace();
		out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¡"));

	}
%>
