<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.tools.JavaScript" %>
<%@ page import="com.eaie.dbmanage.KxfzgNews"%>
<%@page import="com.eaie.dbmanage.KxfzgNews"%>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ɾ������</title>


  </head>
  
  <body>
    <% 
        String id = request.getParameter("id");
        int temp = Integer.parseInt(id);
        KxfzgNews n = new KxfzgNews();
    try {		
			 
			n=(KxfzgNews)BasicDAO.queryById(KxfzgNews.class, temp);
			BasicDAO.delete(n);			
			String sFileUrl = n.getFileurl();	
			String sImageUrl = n.getImageurl();
			String filepath = config.getServletContext().getRealPath("/UploadFiles/upfile/"+sFileUrl);
			//String imagepath = config.getServletContext().getRealPath("/UploadFiles/uppic/"+sImageUrl);	
				java.io.File filetodel = new java.io.File(filepath);
				//java.io.File imagetodel = new java.io.File(imagepath);
					System.out.println("ɾ���ļ���" + filetodel.toString());
					if(filetodel.exists()){
					
						boolean delFileOk = filetodel.delete();		
						//boolean delImageOk =imagetodel.delete();			
						if(delFileOk){	
						
						}else{						
							out.println(JavaScript.alert("ɾ������ʧ�ܣ�"));	
						}										
					}				
		out.println(JavaScript.alertandRedirect("ɾ���ɹ���","NewsList.jsp"));
	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("ɾ��ʧ�ܣ�"));

	}
  
     %>
  </body>
</html>
