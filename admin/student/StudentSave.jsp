<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.tools.*" %>
<%!
	String sParty,sMajor,sBanji,sDorm,sDormTel,sMobileTel,sAddress,sHomeTel,sPostcode,sFatherJob,sMotherJob,sTeChang,sBeiZhu;
 %>
<%
 
 	String stuid = request.getParameter("stuid");
 	sParty = request.getParameter("party"); 	
 	sMajor = request.getParameter("major"); 
 	sBanji = request.getParameter("banji"); 	
 	sDorm = request.getParameter("dorm"); 	
 	sDormTel = request.getParameter("dormtel"); 
 	sMobileTel = request.getParameter("mobiletel"); 	
 	sAddress = request.getParameter("address"); 	
 	sHomeTel = request.getParameter("hometel"); 	
 	sPostcode = request.getParameter("postcode"); 	
 	sFatherJob = request.getParameter("fatherjob"); 	
 	sMotherJob = request.getParameter("motherjob"); 	
 	sTeChang = request.getParameter("techang"); 	
 	sBeiZhu = request.getParameter("beizhu");
 	System.out.println("The " + sBeiZhu);
 	
 	if(stuid!=null){	
 		
 		try{
 			Student student = StudentManage.getStudent(stuid);
 			if(student!=null){
 				
 				student.setParty(sParty);
 				student.setAddress(sAddress);
 				student.setBanji(sBanji);
 				if(sBeiZhu!=null||!sBeiZhu.equalsIgnoreCase("")){
 					student.setBeizhu(sBeiZhu);
 				}
 				student.setDegree(sDorm);
 				student.setDormtel(sDormTel);
 				student.setFatherjob(sFatherJob);
 				student.setMobiletel(sMobileTel);
 				student.setMotherjob(sMotherJob);
 				student.setHometel(sHomeTel);
 				student.setMajor(sMajor);
 				student.setTechang(sTeChang);
 				student.setPostcode(sPostcode);
 				
 				StudentManage.UpdateStudent(student);
 				out.println(JavaScript.alertandRedirect("修改成功！","StudentList.jsp"));
 			}else{ 				
 				out.println(JavaScript.alertandBack("修改失败，要修改的学生信息可能不存在！"));
 			}
 		}catch(Exception ex){
 	
 		 	ex.printStackTrace();
 		 	out.println(JavaScript.alertandBack("修改学生信息失败，请重试或检查输入"));
 		}
 	}else{
 		
 		out.println("<script> window.close(); </script>");
 	}

%>