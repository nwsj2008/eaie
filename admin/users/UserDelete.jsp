<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<%!
		Teacher user;
%>
<%
			String id = request.getParameter("id");	
			String[] ids = request.getParameterValues("delid");				
			if (id != null) {					
				try{
					user = (Teacher) BasicDAO.queryById(Teacher.class,Integer.parseInt(id));				
				}catch(Exception ex){				
					ex.printStackTrace();				
				}
				if (user != null) {
				
					try{		
						
						BasicDAO.delete(user);
						out.println(JavaScript.alertandRedirect("ɾ���ɹ���","UserList.jsp"));	
					} catch (Exception ex) {					 
					 	ex.printStackTrace();
					 	out.println(JavaScript.alertandRedirect("ɾ��ʧ�ܣ�","UserList.jsp"));			
					}
				} else {
						out.println(JavaScript.alertandRedirect("Ҫɾ�����û������ڣ�","UserList.jsp"));
				}
			}
			if(ids!=null){
				try{
					for(int i =0;i<ids.length;i++){					
					
						try{
							user = (Teacher) BasicDAO.queryById(Teacher.class,Integer.parseInt(ids[i]));				
						}catch(Exception ex){				
							ex.printStackTrace();				
						}
						if (user != null) {		
							BasicDAO.delete(user);											
						} 			
					}
					out.println(JavaScript.alertandRedirect("ɾ���ɹ���","UserList.jsp"));	
						
				} catch (Exception ex) {	
								 
					ex.printStackTrace();
					out.println(JavaScript.alertandRedirect("ɾ��ʧ�ܣ�","UserList.jsp"));
				}					
			}			
			out.println(JavaScript.alertandBack("�Ƿ�����"));
			
 %>

