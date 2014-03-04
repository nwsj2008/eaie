<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*" %>

<%
		
	String[] ids = request.getParameterValues("id");
	
	if(ids==null||ids.length<1){	
		out.println(JavaScript.alertandBack("�Ƿ�����"));		
		return;
	}
	try{
		for(int i = 0 ;i<ids.length; i++){
	
			Professor professor = ProfessorManage.getProfessor(Integer.parseInt(ids[i]));
			
			if(professor!=null){	
				try{			
					
					String sImage = professor.getImageurl();
				    if(sImage!=null){
			
						String filepath = config.getServletContext().getRealPath("/UploadFiles/uppic/"+sImage);					
						java.io.File filetodel = new java.io.File(filepath);
						System.out.println("ɾ���ļ���" + filetodel.toString());
						if(filetodel.exists()){
				
							boolean delok = filetodel.delete();					
							if(!delok){											
								out.println(JavaScript.alert("ɾ������ʧ�ܣ�"));	
							}										
						}				
					}	
					ProfessorManage.DeleteProfessor(professor);
				}catch(Exception ex){
				
					out.println(JavaScript.alert("��ʦ"+ professor.getName()+ "ɾ��ʧ��"));
				}
			}	
	
		}
		out.println(JavaScript.alertandRedirect("ɾ����ʦ�ɹ���","ProfessorList.jsp"));
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("ɾ��ʧ��"));	
		
	}
	
 %>

