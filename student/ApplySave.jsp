<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.admin.classroom.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="room" class="Classroom">
	<jsp:setProperty name="room" property="*"/>
</jsp:useBean>

<%
	String sTaketime = request.getParameter("taketime");
	int indexOfBar = sTaketime.indexOf("-");
	//System.out.println(indexOfBar);
	String sStarttime = sTaketime.substring(0,indexOfBar);	
	String sEndtime = sTaketime.substring(indexOfBar+1);
	
	room.setStarttime(sStarttime);
	room.setEndtime(sEndtime);
	room.setPubtime(new Date());
	try{
		ClassroomManage.SaveApply(room);
		out.println(JavaScript.alertandRedirect("提交申请成功！","ApplyList.jsp"));
	}catch(Exception ex){
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("提交申请失败，请重试"));
	}
	
	
	
%>