<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="expstudent" class="Expstudent">
<jsp:setProperty name="expstudent" property="*"/>
</jsp:useBean>
<%
	String sAction = request.getParameter("action");	
	if(sAction==null){
		try{
			if(ExpstudentManage.isExist(expstudent.getStuid())){
				out.println(JavaScript.alertandBack("�����û�ʹ�ø�ѧ��ע�ᣬ�������룡"));
				return;
			}
			ExpstudentManage.SaveStudent(expstudent);
			out.println(JavaScript.alertandRedirect("�û�ע��ɹ�","login.jsp"));
		}catch(Exception ex){	
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("�û�ע��ʧ�ܣ�������"));
		}
	}else{		
		try{			
		
			Expstudent temstudent = ExpstudentManage.getStudent(expstudent.getStuid());
			
			String password = temstudent.getPwd();			
			expstudent.setPwd(password);
			ExpstudentManage.UpdateStudent(expstudent);
			session.setAttribute("EXPSTUDENT",expstudent);
			out.println(JavaScript.alertandRedirect("�û���Ϣ�޸ĳɹ�","info.jsp"));
		}catch(Exception ex){	
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("�û���Ϣ�޸�ʧ�ܣ�������"));
		}
	}
	

%>