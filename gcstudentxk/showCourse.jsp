<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.xk.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
   Gcxkopen gcxkopen = new Gcxkopen();
  gcxkopen = (Gcxkopen)BasicDAO.queryById(Gcxkopen.class,1);
  String openxt = gcxkopen.getOpenxt();
  String term = gcxkopen.getTerm();
  String nian="";
  if(openxt.equals("0"))
    out.println(JavaScript.alertandRedirect("现在不是选课时间", "index.jsp"));
%>
<html>

<head>
<title>显示本学期课程</title>
<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士选课系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">首页</a>
		<a href="NewsList.jsp">查看通知</a>
		<a href="xk.jsp">选定本学期课程</a>	
		<a href="showCourse.jsp">显示本学期课程</a>	
	    <a href="showScore.jsp">查看分数</a>
	    <a href="help.jsp">选课帮助</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<form action="">

<table  border="0" align="center" cellpadding="1" cellspacing="1" >
			<tr align="center" class="titleheader">
			  <td><a style="font-size: 19px">本学期的课程如下:</a></td>
			</tr>
			</table>
			<table width="100%" border="1" align="left" cellpadding="1" cellspacing="1" class="border">
			<tr align="center">	
					<td>
					<nobr>
						课程名称
						</nobr>
					</td>
					<td>
					<nobr>
						教师</nobr>
					</td>
					<td>
					<nobr>
						学分</nobr>
					</td>
					<td>
					<nobr>
						上课地点</nobr>
					</td>
					<td>
					<nobr>
						上课时间</nobr>
					</td>
					<td>
					<nobr>
						操作</nobr>
					</td>
			</tr>
			<%
			    String HQL_GET_SID="From Gcxk as gcxk where gcxk.sid= '"+gc.getId()+"'";
			    List list = BasicDAO.queryByHql(HQL_GET_SID);
			  
			    if(list.size()!=0)
			    {
			    for(int i=0;i<list.size();i++)
			    {
			      Gcxk gcxk1 = (Gcxk)list.get(i);
			      int tid =gcxk1.getTid();
			      Gccourse course1 = (Gccourse)BasicDAO.queryById(Gccourse.class,tid);
			 %>
			  <tr align="center">	
					<td>
					<nobr>
						<%=course1.getTitle()==null?"":course1.getTitle() %>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getTeacher()==null?"":course1.getTeacher() %>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getCredit()==null?"":course1.getCredit() %></nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getPlace()==null?"":course1.getPlace() %></nobr>
					</td>
					<td>
					<nobr>
						详情见课表</nobr>
					</td>
					<td>
					<nobr>
						<a href="del.jsp?gcxkid=<%=gcxk1.getId() %>">删除</a></nobr>
					</td>
			</tr>
		      <%
		      }
		      }
		      
		       %>

			</table>	
		</form>

		<br><br>
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