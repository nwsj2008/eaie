<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("title","���������")){
				
				return false;
			}
			if(!isNull("content","����������")){
				
				return false;
			}	
		}
</script>
		
		
		<title>�鿴����������Ϣ</title>
		<base href="<%=basePath%>">
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  //String idString=request.getParameter("id");
  //int id=Integer.parseInt(idString);
  //List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  //if(list.size()==0){
  //out.print("û�м�¼");
  //}else{
  //Tmstudent tmstudent=(Tmstudent)list.get(0);
  
  String idString=session.getAttribute("id").toString();
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }else{
  Tmstudent tmstudent=(Tmstudent)list.get(0);

  
  
 %>

 	<body>
		<BR>
		<form name="form1" method="post" action="admin/tmszsxt/tmstudent/TmstudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						�鿴����������Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>������Ϣ</strong>
					
					</td>
					
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						
						<%=(tmstudent.getName()==null)?"":tmstudent.getName()%>
					</td>
					<td>
						��ϵ�绰��
						<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ҵѧУ��
						<%=(tmstudent.getByschool() == null) ? "": tmstudent.getByschool()%>
					</td>
					<td>
						��ҵרҵ��
						<%=(tmstudent.getByspeciality() == null) ? "": tmstudent.getByspeciality()%>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						����ѧԺ��
						<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>
					</td>
					<td>
						����רҵ��
						<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>
					</td>
				</tr>				
			</table>
			<BR>	
		</form>
	</body>
  

	
		<%
 }
 %>

</html>
