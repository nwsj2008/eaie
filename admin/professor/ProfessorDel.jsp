<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*" %>

<%
		
	String[] ids = request.getParameterValues("id");
	
	if(ids==null||ids.length<1){	
		out.println(JavaScript.alertandBack("非法访问"));		
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
						System.out.println("删除文件：" + filetodel.toString());
						if(filetodel.exists()){
				
							boolean delok = filetodel.delete();					
							if(!delok){											
								out.println(JavaScript.alert("删除附件失败！"));	
							}										
						}				
					}	
					ProfessorManage.DeleteProfessor(professor);
				}catch(Exception ex){
				
					out.println(JavaScript.alert("导师"+ professor.getName()+ "删除失败"));
				}
			}	
	
		}
		out.println(JavaScript.alertandRedirect("删除导师成功！","ProfessorList.jsp"));
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("删除失败"));	
		
	}
	
 %>

