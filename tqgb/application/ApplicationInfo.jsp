<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tqgb.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>电子信息工程学院提前攻博招生系统</title>
<LINK REL=StyleSheet HREF="../tqgbstyle.css" TYPE="text/css" MEDIA=screen>
<%
	String idString = session.getAttribute("id").toString();
	int id = Integer.parseInt(idString);
	List list = BasicDAO
			.queryByHql("From Tqgb tqgbstudent where tqgbstudent.id='"
					+ id + "'");
	if (list.size() == 0) {
		out.print("没有记录");
	} else {
		Tqgb tqgbstudent = (Tqgb) list.get(0);
%>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院提前攻博招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="../index.jsp">首页</a>
		<a href="../newslist.jsp">查看通知</a>
		<a href="ApplicationAdd.jsp">提交申请</a>
		<a href="ApplicationInfo.jsp">查看申请</a>
		<a href="ApplicationEdit.jsp">修改申请</a>
		<a href="../result.jsp">查看结果</a>
		<a href="../tqgbLogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<form name="form1" method="post" action="#">
	  <h2>查看申请</h2>
									<table align="center">
										<tr class="tdbg">
											<td width="30">

												<input name="id" id="id" type="hidden" value="<%=id%>">
											</td>
										</tr>
										<tr>
											<td >
												姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
											</td>
											<td>
												<%=(tqgbstudent.getName() == null) ? ""
						: tqgbstudent.getName()%>
											</td>

										</tr>
										<tr>
											<td >
												学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
											</td>
											<td>
												<%=(tqgbstudent.getXuehao() == null) ? ""
						: tqgbstudent.getXuehao()%>
											</td>
										</tr>
										<tr>
											<td >
												性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
											</td>
											<td>
												<%=(tqgbstudent.getSex() == null) ? ""
						: tqgbstudent.getSex()%>
											</td>
										</tr>
										<tr>
											<td >
												硕士专业：
											</td>
											<td>
												<%=(tqgbstudent.getSszy() == null) ? ""
						: tqgbstudent.getSszy()%>
											</td>
										</tr>
										<tr>
											<td >
												拟报博士专业：
											</td>
											<td>
												<%=(tqgbstudent.getNbzy() == null) ? ""
						: tqgbstudent.getNbzy()%>
											</td>
										</tr>
										<tr>
											<td>
												原硕导：
											</td>
											<td>
												<%=(tqgbstudent.getSd() == null) ? "" : tqgbstudent
						.getSd()%>
											</td>
										</tr>
										<tr>
											<td>
												拟报博导：
											</td>
											<td>
												<%=(tqgbstudent.getNbbd() == null) ? ""
						: tqgbstudent.getNbbd()%>
											</td>
										</tr>
										<tr>
											<td>
												联系方式：
											</td>
											<td>
												<%=(tqgbstudent.getTel() == null) ? ""
						: tqgbstudent.getTel()%>
											</td>
										</tr>
										<tr>
											<td >
												学位课加权成绩排名：
											</td>
											<td>
												<%=(tqgbstudent.getCjpm() == null) ? ""
						: tqgbstudent.getCjpm()%>
											</td>
										</tr>
										<tr>
											<td>
												备注：
											</td>
											<td width=150>
						<textarea name="huoj" rows="5" cols="30" readonly 
						style="background-color:#e9f2f9;"> <%=(tqgbstudent.getBeizhu() == null) ? ""
						: tqgbstudent.getBeizhu()%></textarea>	
											</td>
											
										</tr>
									</table>
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