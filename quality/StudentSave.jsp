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
				out.println(JavaScript.alertandBack("已有用户使用该学号注册，请检查输入！"));
				return;
			}
			ExpstudentManage.SaveStudent(expstudent);
			out.println(JavaScript.alertandRedirect("用户注册成功","login.jsp"));
		}catch(Exception ex){	
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("用户注册失败，请重试"));
		}
	}else{		
		try{			
		
			Expstudent temstudent = ExpstudentManage.getStudent(expstudent.getStuid());
			
			String password = temstudent.getPwd();			
			expstudent.setPwd(password);
			ExpstudentManage.UpdateStudent(expstudent);
			session.setAttribute("EXPSTUDENT",expstudent);
			out.println(JavaScript.alertandRedirect("用户信息修改成功","info.jsp"));
		}catch(Exception ex){	
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("用户信息修改失败，请重试"));
		}
	}
	

%>