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
						out.println(JavaScript.alertandRedirect("删除成功！","UserList.jsp"));	
					} catch (Exception ex) {					 
					 	ex.printStackTrace();
					 	out.println(JavaScript.alertandRedirect("删除失败！","UserList.jsp"));			
					}
				} else {
						out.println(JavaScript.alertandRedirect("要删除的用户不存在！","UserList.jsp"));
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
					out.println(JavaScript.alertandRedirect("删除成功！","UserList.jsp"));	
						
				} catch (Exception ex) {	
								 
					ex.printStackTrace();
					out.println(JavaScript.alertandRedirect("删除失败！","UserList.jsp"));
				}					
			}			
			out.println(JavaScript.alertandBack("非法访问"));
			
 %>

