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
		int kcID;
		String courseId = request.getParameter("id");
		
		//查询课程信息		
		String tchname = gcteacher.getName();
	%>
	<script language=javascript> 
	 function formCheck(){
	 <%if (courseId==null) {
					out.print("没有记录");}
				  else
				   {
				  kcID=Integer.parseInt(courseId);
				  List listb = BasicDAO.queryByHql("From Gcxk gcxk where gcxk.tid='"+ kcID + "'");
				 //对应课程下选课人数不为0
				  if (listb.size() > 0) 
					{
					for (int i = 0; i < listb.size(); i++) 
					{
						Gcxk gcxk = (Gcxk) listb.get(i);
						xkid=gcxk.getId().toString();			
		%>
		//String string=document.getElementById("xkid").value();
		//int fenshu = Integer.parseInt(string);
        if(document.getElementById("<%=xkid%>").value=="")
        {
            alert("学生成绩不能为空!");
            document.getElementById("<%=xkid%>").focus();
            document.getElementById("<%=xkid%>").select();
            return false;
        }
        else if (document.getElementById("<%=xkid%>").value>100||document.getElementById("<%=xkid%>").value<0)
        {
         	alert("学生成绩必须在0——100之间");
            document.getElementById("<%=xkid%>").focus();
            document.getElementById("<%=xkid%>").select();
            return false;
        }
    	<%
    	}
    	%>
    	else return true;
    	<%
    	}}%>
    }
</script>

	<body>
	<%!List list;
	%>
		<%
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			GcxkfyList gcxkfyList = new GcxkfyList();
		   list = gcxkfyList.getGcxkfyList(curPage,courseId)  ;

			Page pager = gcxkfyList.getCurrentPage();
			Iterator it = list.iterator();//遍历list
		%>

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


					<form name="form" method="post" action="UpdateScr.jsp">
						<table width="100%" border="1" align="center" cellpadding="2"
							cellspacing="1">
							<tr align="center" class="">
								<td width="10%">
									序号
								</td>
								<td width="45%">
									姓名
								</td>
								<td width="20%">
									分数
								</td>
							</tr>
							<%
								if (courseId != null) {
										int tid = Integer.parseInt(courseId);
										List listc = BasicDAO
												.queryByHql("From Gcxk gcxk where gcxk.tid='" + tid
														+ "'");
										//对应课程下选课人数不为0
										if (list.size() > 0) {
											for (int i = 0; i < list.size(); i++) {
												Gcxk gcxk = (Gcxk) list.get(i);
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
												}
							%>

							<tr align="center">
								<td width="35">
									<%=i + 1%>
								</td>
								<td>
									<%=sName%>
								</td>
								<td>
									<%=(sScore == null) ? "未打分" : sScore%>
									<input type="hidden" name="csid" id="csid" size=10
										value="<%=Integer.parseInt(courseId)%>">
								</td>
								<%
									}
											}
								%>

							</tr>
						</table>
						<br>

					</form>

					<%
						}
						
					%>
				<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
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

</html>