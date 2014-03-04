<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="com.eaie.gcxknews.GcxknewsList"%>
<%@ page import="java.text.SimpleDateFormat"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gcUser = (Gcstudent)session.getAttribute("GCUSER");

%>
<html>


<head>
		
		<title>通知具体信息</title>
		
		<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
<script language="JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>

</head>



<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
 List list=BasicDAO.queryByHql("From Gcxknews Gcxknews where Gcxknews.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Gcxknews gcnews=(Gcxknews)list.get(0);
 %>

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
	<form name="myform" id="myform" method="post"
			action="#">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						电子信息工程学院工程硕士选课通知
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						标&nbsp;&nbsp;题：
					</td>
					<td>
					    <input name="id" id="id" type="hidden" value="<%=id%>">
						
																	
					<%=(gcnews.getTitle() == null) ? "" : gcnews.getTitle()%>
								
				
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						内&nbsp;&nbsp;容：
					</td>
			
					
						<td valign="top">
																	
					<%=(gcnews.getContent() == null) ? "" : gcnews.getContent()%>
								
					</td>
				</tr>


				
				<%
								if (gcnews.getFileurl() != null
											&& !gcnews.getFileurl().equals("")) {
							%>
							<tr>
								<td>
									附&nbsp;件：
									<a href="../sb_download.jsp?id=<%=gcnews.getId()%>">
										<%=gcnews.getFilename()%> </a>
								</td>
							</tr>
							<%
								}
							%>
				
<tr align="center" class="tdbg">
					<td colspan="2">
						
						<input type="button" name="back" value="返&nbsp;回"  onClick="window.location.href='NewsList.jsp'">
					</td>
				</tr>
				
			</table>
		</form>
		<%
 }
 %>
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