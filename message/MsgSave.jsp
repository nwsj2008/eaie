<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.dbmanage.Message" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="message" class="com.eaie.dbmanage.Message" scope="page">
<jsp:setProperty name="message" property="*" />
</jsp:useBean>

<%
	String id = request.getParameter("id");
	if(id!=null){
		message.setGivetime(new Date());
		message.setBigclassid(Integer.parseInt(id));
		try{
			BasicDAO.save(message);
			out.println(JavaScript.alertandRedirect("������Գɹ���","MsgShow.jsp?id="+id+"&type="+id));		
		}catch(Exception ex){
			out.println(JavaScript.alertandRedirect("�������ʧ�ܣ�","MsgShow.jsp?id="+id+"&type="+id));	
			out.println(ex.getMessage());	
		}
	}
	else{		
				
			Message msg = (Message)BasicDAO.queryById(Message.class,Integer.parseInt(id));
			msg.setReply(request.getParameter("reply"));
			msg.setReplytime(new Date());
			msg.setTeacher(request.getParameter("teacher"));
            msg.setIp(request.getRemoteAddr());
			if(msg!=null){						
				try{
					BasicDAO.update(msg);
					out.println(JavaScript.alertandRedirect("�ظ����Գɹ���","MsgShow.jsp?id="+id+"&type="+id));	
				}catch(Exception ex){	
					out.println(ex.getMessage());
					out.println(JavaScript.alertandRedirect("�ظ�����ʧ�ܣ�","MsgShow.jsp?id="+id+"&type="+id));	
				}
			}else{
			
				out.println(JavaScript.alertandRedirect("Ҫ�޸ĵ����Բ����ڣ�","MsgShow.jsp?id="+id+"&type="+id));	
			}	
	}
 %>
			

	
    


 