<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.message.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="message" class="com.eaie.dbmanage.Message" scope="page">
<jsp:setProperty name="message" property="*" />
</jsp:useBean>

<%
	String id = request.getParameter("id");
	if(id==null){
		message.setGivetime(new Date());
		if(MessageManage.SaveMessage(message)==true)
		{
		      out.println(JavaScript.alertandRedirect("��ӳɹ�","Msg_list.jsp"));
	    }else{
%>
    <script language="JavaScript">
       document.myform.reset();
       alert("���ʧ��");
       return;
    </script>
<%	
	    }
	}else{		
				
			Message msg = (Message)BasicDAO.queryById(Message.class,Integer.parseInt(id));
			msg.setReply(request.getParameter("reply"));
			msg.setReplytime(new Date());
			msg.setTeacher(request.getParameter("teacher"));
            msg.setIp(request.getRemoteAddr());
			if(msg!=null){						
				try{
					BasicDAO.update(msg);
					out.println(JavaScript.alertandRedirect("�ظ����Գɹ���","Msg_list.jsp"));	
				}catch(Exception ex){	
					out.println(ex.getMessage());
					out.println(JavaScript.alertandRedirect("�ظ�����ʧ�ܣ�","Msg_list.jsp"));		
				}
			}else{
			
				out.println(JavaScript.alertandRedirect("Ҫ�޸ĵ����Բ����ڣ�","Msg_list.jsp"));	
			}	
	}
 %>
			

	
    


 