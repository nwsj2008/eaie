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
		
		
		<title>修改推免生信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  String idString=request.getParameter("id");
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
						编辑推免生信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="6">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						
						<input name="name" type="text" id="name" size="20" value="<%=(tmstudent.getName()==null)?"":tmstudent.getName()%>">
					</td>
					<td>
						联系电话：
						<input name="tel" type="text" id="tel" size="20" value="<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						毕业学校：
						<input name="byschool" type="text" id="byschool" size="20" value="<%=(tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool()%>">
					</td>
					<td>
						毕业专业：
						<input name="byspeciality" type="text" id="byspeciality" size="20" value="<%=(tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						接收学院：
						<input name="jsacademe" type="text" id="jsacademe" size="20" value="<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>">
					</td>
					<td>
						接收专业：
						<input name="jsspeciality" type="text" id="jsspeciality" size="20" value="<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						四级成绩：
						<input name="siji" type="text" id="siji" size="20" value="<%=(tmstudent.getSiji()==null)?"":tmstudent.getSiji()%>">
					</td>
					<td>
						六级成绩：
						<input name="liuji" type="text" id="liuji" size="20" value="<%=(tmstudent.getLiuji()==null)?"":tmstudent.getLiuji()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						专业排名：
						<input name="zypm" type="text" id="zypm" size="20" value="<%=(tmstudent.getZypm()==null)?"":tmstudent.getZypm()%>">
					</td>
					<td>
						专业人数：
						<input name="zyrs" type="text" id="zyrs" size="20" value="<%=(tmstudent.getZyrs()==null)?"":tmstudent.getZyrs()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
					<div style="float:left">
						获奖情况(字数在100字内)：
						</div>
	
						<textarea name="huoj" rows="5" cols="62" onKeyDown='if (this.value.length>=100){event.returnValue=false}'> <%=(tmstudent.getHuoj() == null) ? ""
						: tmstudent.getHuoj()%></textarea>
				
					
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="2">
						<strong>录取信息</strong>
					</td>				
					<td>
						复试成绩：
						<input name="fushiresult" type="text" id="fushiresult" size="20" value=<%=(tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult()%>>
					</td>
					<td>
						考核通知：
						<input name="shenheresult" type="text" id="shenheresult" size="20" value="<%=(tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult()%>">
					</td>									
				</tr>
				<tr class="tdbg">
					<td>
						录取结果：
						<input name="sflq" type="text" id="sflq" size="20" value="<%=(tmstudent.getSflq()==null)?"":tmstudent.getSflq()%>">
					</td>
					<td>
						导师信息：
						<input name="teacher" type="text" id="teacher" size="20" value="<%=(tmstudent.getTeacher()==null)?"":tmstudent.getTeacher()%>">
					</td>
				</tr>
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定修改">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='TmstudentList.jsp'">
			</center>
		</form>
	</body>
  

	
		<%
 }
 %>

</html>