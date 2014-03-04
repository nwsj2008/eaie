<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.upfile.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.tools.*" %>
<html>
<head>
<title>常用文件删除</title>
</head>

<body>
<%! 
	
	String sFilePath;
 %>
<%
	
	String[] ids = request.getParameterValues("id");
	if(ids==null){return;}
	try{
		for(int i = 0;i<ids.length;i++){
			
			Upfile file = UpFileManage.getFile(Integer.parseInt(ids[i]));
			if(file!=null){			
				
					
					sFilePath = config.getServletContext().getRealPath("/UploadFiles/upfile/"+file.getFileurl());	
					UpFileManage.DeleteFile(file,sFilePath);
					out.println(JavaScript.alertandRedirect("文件删除成功！","FileList.jsp"));			
				
			}	
		}
	}catch(Exception ex){		
				ex.printStackTrace();
				out.println(JavaScript.alertandBack("文件删除失败！"));		
	}

 %>
</body>
</html>
