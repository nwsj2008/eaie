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
			
			if(!isNull("title","请输入标题")){
				
				return false;
			}
			if(!isNull("content","请输入内容")){
				
				return false;
			}	
		}
</script>
		
		
		<title>查看个人申请信息</title>
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
  //out.print("没有记录");
  //}else{
  //Tmstudent tmstudent=(Tmstudent)list.get(0);
  
  String idString=session.getAttribute("id").toString();
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
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
						查看个人申请信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>基本信息</strong>
					
					</td>
					
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						
						<%=(tmstudent.getName()==null)?"":tmstudent.getName()%>
					</td>
					<td>
						联系电话：
						<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						毕业学校：
						<%=(tmstudent.getByschool() == null) ? "": tmstudent.getByschool()%>
					</td>
					<td>
						毕业专业：
						<%=(tmstudent.getByspeciality() == null) ? "": tmstudent.getByspeciality()%>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						报考学院：
						<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>
					</td>
					<td>
						报考专业：
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
