<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");
String xuewei="";
%>
<html>

<head>
<title>电子信息工程学院工程硕士选课教师登陆系统</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
</head>


<%		String courseId=request.getParameter("id");
		//查询课程信息	
		List lista = BasicDAO
				.queryByHql("From Gccourse gccourse where gccourse.id='"
						+ courseId + "'");
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
		<a href="kcxx.jsp">查看课程信息</a>
		<a href="score.jsp">编辑学生成绩</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<h2><%=gcteacher.getName() %>老师,你好：</h2>
		<table border="1"  cellpadding="2" cellspacing="1">
			
			<% if (lista.size() == 0) 
				{
				out.print("没有记录");
				} 
				else {	
					Gccourse gccourse = (Gccourse) lista.get(0);
			%>
			<tr align="center" height="25">
				<td width="100"  align="center">
				课程名称
				</td>
				<td  width="200">
				<%= gccourse.getTitle()==null?"":gccourse.getTitle() %>
				</td>
				<td  width="100" align="center">
				学分
				</td>
				<td width="200">
				<%= gccourse.getCredit()==null?"": gccourse.getCredit()%>
				</td>				
			</tr>
			<tr align="center" height="25">
				<td width="100"  align="center">
				学时
				</td>
				<td  width="200">
				<%= gccourse.getXueshi()==null?"":gccourse.getXueshi() %>
				</td>
				<td  width="100" align="center">
				是否学位课
				</td>
				<td width="200">
				<%if (gccourse.getIsxuewei().equals("1"))  {xuewei="是";}
				  else { xuewei="否";}
				%>
				<%= xuewei %>
				</td>				
			</tr>
			<tr align="center" height="25">
				<td width="100" align="center">
				教师用书
				</td>
				<td width="200">
				<%= gccourse.getBook()==null?"":gccourse.getBook() %>
				</td>
				<td width="100" align="center">
				上课地点
				</td>
				<td width="200">
				<%= gccourse.getPlace()==null?"":gccourse.getPlace() %>
				</td>	
			</tr>
			<tr align="center" height="25">
				<td width="100" align="center">
				上课时间
				</td>
				<td width="200">
				<%= gccourse.getShijian()==null?"": gccourse.getShijian()%>
				</td>
				<td align="center">
				考试时间
				</td>
				<td>
				<%= gccourse.getTest()==null?"":gccourse.getTest() %>
				</td>
			</tr>
			<%} %>
		</table>
		<br><br><center>
		<input type="button" name="back" value="返&nbsp;回"  onClick="history.back(-1)">
		</center>
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