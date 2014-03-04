<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>

<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>电子信息工程学院工程硕士招生系统</title>
<LINK REL=StyleSheet HREF="../gcssstyle.css" TYPE="text/css" MEDIA=screen>
<%
	String idString = session.getAttribute("id").toString();
	int id = Integer.parseInt(idString);
	List list = BasicDAO
			.queryByHql("From Gcss gcssstudent where gcssstudent.id='"
					+ id + "'");
	if (list.size() == 0) {
		out.print("没有记录");
	} else {
		Gcss gcssstudent = (Gcss) list.get(0);
%>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="../index.jsp">首页</a>
		<a href="../newslist.jsp">查看复试通知</a>
		<a href="../cscj.jsp">查看GCT成绩</a>
		<a href="fskcAdd.jsp">申报复试课程</a>
		<a href="../lqjg.jsp">查看录取结果</a>
		<a href="../lianxi.jsp">联系我们</a>
		<a href="../gcsslogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<form name="form1" method="post" action="#">
	  
									<font size=3 face="黑体">
									<table align="center">
										<tr class="tdbg" height="50px">
											<td width="30">

												<input name="id" id="id" type="hidden" value="<%=id%>">
											</td>
										</tr>
										
										<tr height="50px">
											<td >
												课程名称：
											</td>
											<td>
												<%=(gcssstudent.getZyk()== null) ? ""
						: gcssstudent.getZyk()%>
											</td>
										</tr>
										
										<tr height="50px">
											<td >
												联系电话：
											</td>
											<td>
												<%=(gcssstudent.getTel() == null) ? ""
						: gcssstudent.getTel()%>
											</td>
										</tr>
										
									</table>
									</font>
									<BR>
								</form>
	</div>
	
	
	</div>
	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
</body>
	<%
		}
	%>
</html>