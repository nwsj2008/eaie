<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.gcteacher.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>
<%@page import="com.eaie.gcxkxt.xkfenye.*"%>
<%@page import="com.eaie.gcxkxt.gcxkinfo.GcinfoList"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Gcteacher gcteacher = (Gcteacher) session.getAttribute("GCTEACHER");
%>
<html>

	<head>
		<title>电子信息工程学院工程硕士选课教师登陆系统</title>
		<LINK REL=StyleSheet HREF="../gctchstyle.css" TYPE="text/css"
			MEDIA=screen>
	</head>
	<%
		String xkid = "";
		String sName = "";
		String sScore = "";
		String beizhu="";
		String courseId = request.getParameter("id");
		String courseTitle = request.getParameter("csTitle");
		courseTitle = new String(courseTitle.getBytes("ISO-8859-1"),"GBK");
		//查询课程信息		
		String tchname = gcteacher.getName();
		
	%>
	<body>
	<div id="page">
			<div id="header">
				<h1 align="center">
					电子信息工程学院工程硕士选课教师登陆系统
				</h1>
			</div>
			<div id="mainarea">
				<div id="sidebar">
					<div id="sidebarnav">
						<br>
						<br>
						<a href="../index.jsp">首页</a>
						<a href="../ModifyPwd.jsp">修改登陆密码</a>
						<a href="../kcxx.jsp">查看课程信息</a>
						<a href="../score.jsp">编辑学生成绩</a>
						<a href="../lianxi.jsp">联系我们</a>
						<a href="../logout.jsp">退出系统</a>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</div>
				</div>

				<div id="contentarea">
					<form name="form" method="post" action="scoreExcel.jsp">
						<br>
						<table width="100%" border="1" align="center" cellpadding="2"
							cellspacing="1">
							<%if (courseId != null) {
								int tid = Integer.parseInt(courseId); 
								List list = BasicDAO.queryByHql("From Gccourse gccs where gccs.id='" + tid+ "'");
								if (list.size()>0) 
								{Gccourse gccs=(Gccourse)list.get(0);  beizhu=gccs.getBeizhu();}
							%>
							<tr align="center" >		
								<td >课程名称</td>
								<td colspan="3"><%=courseTitle %>
								<input name="tid" id="tid" type="hidden" value="<%=tid%>">
								<input name="csTitle" id="csTitle" type="hidden" value="<%=(courseTitle == null) ? "" : courseTitle%>">
								</td>					
							</tr>
							<tr align="center" >
								<td width="25%">
									序号
								</td>
								<td width="25%">
									姓名
								</td>
								<td width="25%">
									分数
								</td>
								<td width="25%">
									备注
								</td>
							</tr>
							<%
										List listc = BasicDAO
												.queryByHql("From Gcxk gcxk where gcxk.tid='" + tid
														+ "'");
										//对应课程下选课人数不为0
										if (listc.size() > 0) {
											for (int i = 0; i < listc.size(); i++) {
												Gcxk gcxk = (Gcxk) listc.get(i);
												xkid = gcxk.getId().toString();
												int sid = gcxk.getSid();
												//获取学生姓名
												List listd = BasicDAO
														.queryByHql("From Gcstudent gcstd where gcstd.id='"
																+ sid + "'");
												if (listd.size() != 0) {
													Gcstudent gcstd = (Gcstudent) listd.get(0);
													sName = gcstd.getName();
												}
												//获取该学生的分数
												List liste = BasicDAO
														.queryByHql("From Gcxk gcxk where gcxk.sid='"
																+ sid
																+ "'"
																+ "and gcxk.tid='"
																+ Integer.parseInt(courseId) + "'");
												if (liste.size() != 0) {
													Gcxk gcxkb = (Gcxk) liste.get(0);
													sScore = gcxkb.getScore();
													beizhu = gcxkb.getBeizhu();
												}
							%>

							<tr align="center">
								<td >
									<%=i + 1%>
									<input name="xuhao" id="xuhao" type="hidden" value="<%=i+1%>">
								</td>
								<td>
									<%=sName%>
									<input name="name" id="name" type="hidden" value="<%=sName%>">
								</td>
								<td>
									<%=(sScore == null) ? "未打分" : sScore%>
									<input name="score" id="score" type="hidden" value="<%=(sScore == null) ? "" : sScore%>">
									<input type="hidden" name="csid" id="csid" size=10
										value="<%=Integer.parseInt(courseId)%>">
								</td>
								<td >
									<%=(beizhu == null) ? "" : beizhu%>
									<input name="beizhu" id="beizhu" type="hidden" value="<%=(beizhu == null) ? "" : beizhu%>">&nbsp;
								</td>
								<%
									}
											}
								%>
							</tr>
						
						</table>
						<br>
						<table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
							<tr>
								<td align="center">
									<input type="submit" name="Submit" value="导出Excel列表">			
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