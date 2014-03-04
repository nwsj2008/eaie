<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.jspsmart.upload.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.upfile.*" %>
<%@ page import="com.eaie.admin.news.*" %>
<%@ page import="com.eaie.admin.lecture.*" %>

<%!
	String sTruePath;
	String sFileName;
	String sFileType;
	SmartUpload su = new SmartUpload();
 %>
<%
	String id = request.getParameter("id");
	String type = request.getParameter("type");
	if(id==null){		
		return;
	}
	try{
		if(type!=null){
		
			if(type.equalsIgnoreCase("news")){
				News news = NewsImp.getNews(Integer.valueOf(id));
				if(news!=null){
			    
			   	 	sTruePath= config.getServletContext().getRealPath("/UploadFiles/upfile/"+news.getFileurl());
			    	sFileName = news.getFilename();			
				}
			}
			if(type.equalsIgnoreCase("lecture")){
			
				Lecture lecture = LectureManage.getLecture(Integer.valueOf(id));
				if(lecture!=null){
				 	sTruePath= config.getServletContext().getRealPath("/UploadFiles/upfile/"+lecture.getFileurl());
				    sFileName = lecture.getFilename();				
				}		
			}
	
		}else {
		
			Upfile upfile = UpFileManage.getFile(Integer.parseInt(id));
			if(upfile!=null){
				sTruePath= config.getServletContext().getRealPath("/UploadFiles/upfile/"+upfile.getFileurl());
				sFileName = upfile.getFilename();
				int newdownnum = upfile.getDownnum()==null?1:upfile.getDownnum()+1;
				upfile.setDownnum(newdownnum);
				UpFileManage.updateFile(upfile);
			}				
		}		
		su.initialize(pageContext);
		su.setContentDisposition(null);			
		su.downloadFile(sTruePath,"",sFileName);				
	}catch(Exception ex){				
		out.println(JavaScript.alertandBack("ÏÂÔØ´íÎó,ÇëÖØÊÔ£¡"));
	}
 %>

