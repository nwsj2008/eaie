<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.lecture.*" %>
<%@ page import="java.io.*" %>
<% 
	Lecture lecture;
	int id;
    String	sFileUrl;
	String[] ids = request.getParameterValues("delid");	
	if(!ids.equals(null)){
		try{
			for(int i = 0;i<ids.length;i++){
			    id = Integer.parseInt(ids[i]);
			    lecture = LectureManage.getLecture(id);
			    sFileUrl = lecture.getFileurl();		    
			    if(sFileUrl!=null&&!sFileUrl.equals("")){
				
					String filepath = config.getServletContext().getRealPath("/UploadFiles/upfile/"+sFileUrl);					
					java.io.File filetodel = new java.io.File(filepath);
					System.out.println("ɾ���ļ���" + filetodel.toString());
					if(filetodel.exists()){
					
						boolean delok = filetodel.delete();					
						if(delok){	
						}else{						
							out.println(JavaScript.alert("ɾ������ʧ�ܣ�"));	
						}										
					}				
				}	
				//ɾ��һ����¼
				LectureManage.delLecture(id);
			}				
			out.println(JavaScript.alertandRedirect("ɾ��ѧ������ɹ���","lecture_list.jsp"));
		}catch(Exception ex){
		
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("ɾ��ѧ������ʧ�ܣ�"));
		}
	}
	 
	
%>

