<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.tools.*" %>
<%!
	String stuid,sHomeInfo,sIsLoan,sAid,sBeiZhu;
	Student student;
 %>
<%	
	stuid = request.getParameter("stuid");
	sHomeInfo = request.getParameter("homeinfo"); 	
 	sIsLoan = request.getParameter("isloan"); 
 	sAid = request.getParameter("aid"); 
 	sBeiZhu = request.getParameter("beizhu"); 	
 	System.out.println(sBeiZhu);
	if(stuid!=null){	
 		
 		try{
 			student = StudentManage.getStudent(stuid);
 			if(student!=null){ 				
 				student.setHomeinfo(sHomeInfo);
 				student.setIsloan(sIsLoan);
 				student.setAid(sAid);
 				if(sBeiZhu!=null){
 					student.setBeizhu(sBeiZhu);	
 				}	
 				student.setIsaid("1");
 				StudentManage.UpdateStudent(student);
 				out.println(JavaScript.alertandRedirect("����ɹ���","AidStudentList.jsp"));
 			}else{ 				
 				out.println(JavaScript.alertandBack("û�и�ѧ����Ϣ������ѧ�ţ�"));
 			}
 		}catch(Exception ex){
 	
 		 	ex.printStackTrace();
 		 	out.println(JavaScript.alertandBack("����ʧ�ܣ������Ի�������"));
 		}
 	}else{
 		
 		out.println("<script> window.close(); </script>");
 	}
%>