<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.message.*" %>
<%!
		Message message;
%>
<%
			String id = request.getParameter("id");	
			String[] ids = request.getParameterValues("delid");				
			if (id != null) {					
				try{
					message = (Message) BasicDAO.queryById(Message.class,Integer.parseInt(id));				
				}catch(Exception ex){				
					ex.printStackTrace();				
				}
				if (message != null) {
					try{		
						BasicDAO.delete(message);
						out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","Msg_list.jsp"));	
					} catch (Exception ex) {					 
					 	ex.printStackTrace();
					 	out.println(JavaScript.alertandRedirect("É¾³ýÊ§°Ü£¡","Msg_list.jsp"));			
					}
				} else {
						out.println(JavaScript.alertandRedirect("ÒªÉ¾³ýµÄÁôÑÔ²»´æÔÚ£¡","Msg_list.jsp"));
				}
			}
			if(ids!=null){
				try{
					for(int i =0;i<ids.length;i++){					
					
						try{
							message = (Message) BasicDAO.queryById(Message.class,Integer.parseInt(ids[i]));				
						}catch(Exception ex){				
							ex.printStackTrace();				
						}
						if (message != null) {		
							BasicDAO.delete(message);											
						} 			
					}
					out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","Msg_list.jsp"));	
						
				} catch (Exception ex) {	
								 
					ex.printStackTrace();
					out.println(JavaScript.alertandRedirect("É¾³ýÊ§°Ü£¡","Msg_list.jsp"));
				}					
			}			
			out.println(JavaScript.alertandBack("·Ç·¨·ÃÎÊ"));
			
 %>

