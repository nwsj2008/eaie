<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");%>
<html>

<head>
<title>电子信息工程学院工程硕士选课教师登陆系统</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
<script language=javascript> 
function getSelect(){

           var factor=document.getElementById('nianfen');
           var fa=factor.selectedIndex;
           username= factor.options[fa].value;

           user=document.getElementById('nianfen').options[document.getElementById('nianfen').selectedIndex].text;
           document.getElementById('nian').value = username;
           document.all.form1.submit();
     }
</script>
</head>


<%
		//查询课程信息		
		String tchname=gcteacher.getName();
		List lista = BasicDAO
				.queryByHql("Select distinct nian from Gccourse gccourse where gccourse.teacher='"
						+ tchname + "'");
		String year="";
		int courseid;
		String nianfen=request.getParameter("nian");
	%>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士选课教师登陆系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="index.jsp">首页</a>
		<a href="ModifyPwd.jsp">修改登陆密码</a>
		<a href="kcxx.jsp" >查看课程信息</a>
		<a href="score.jsp">编辑学生成绩</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcteacher.getName() %>老师,你好：</h2>
		<form name="form1" method="post" action="score.jsp">
		<select name="nianfen" id="nianfen" style="width: 150px" onChange="return getSelect()">
		<option >请选择课程年份</option>
		<%
		if (lista.size() == 0) {
						out.print("没有记录");}
					else
					   {
					   for (int k=0;k<lista.size();k++)
					   {
                        year = lista.get(k).toString();	
					    %>
					<option value="<%=year %>" 
					<% if (nianfen!=null&&(nianfen.equals(year)))
												{%>
												selected="selected" <%}%>
					><%=year %></option>
															
			<%} %>
		</select>
		<input type="hidden" name="nian" id="nian" value="">
		</form>
		<table border="1">
			<tr height="20">
				<td width="140" align="center">
				课程名称
				</td>			
				<td width="140" align="center">
				选课人数
				</td>
				<td colspan="3" width="240" align="center">
				学生成绩
				</td>
			
			</tr>
			<%List listb = BasicDAO
				.queryByHql("From Gccourse gccourse where gccourse.teacher='"
						+ tchname + "'"+"and gccourse.nian='"+ nianfen + "'");
			 if (listb.size() == 0) 
				{
				
				} 
				else {
					for (int i=0;i<listb.size();i++)
					{
					Gccourse gccourse = (Gccourse) listb.get(i);
					//统计选课人数		
					courseid=gccourse.getId();	
					List listc = BasicDAO.queryByHql("From Gcxk gcxk where gcxk.tid='"+ courseid + "'");
					int number=0;
					if (listc.size() == 0) {
					} else 
					{
					number=listc.size();
					}		
			%>
			<tr align="center" height="25">
				<td >
				<%= gccourse.getTitle()==null?"":gccourse.getTitle() %>
				</td>				
				<td>
				<%= number %>
				</td>
				<td>
				<a href="Score/ViewScr.jsp?id=<%=courseid %>">查看</a>
				</td>
				<td>
				<a href="Score/EditScr.jsp?id=<%=courseid %>">修改</a>
				</td>
				<td>
				<a href="Score/scoreExcelDc.jsp?id=<%=courseid %>&csTitle=<%=gccourse.getTitle() %>">导出</a>
				</td>
			</tr>
			<%}} }%>
		</table>
		</select>
	</div>
	
	</div>
	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
</body>
   

</html>