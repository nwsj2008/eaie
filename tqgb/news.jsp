<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbnews.*"%>
<%@ page import="com.eaie.admin.news.*"%>
<%@ page import="java.text.SimpleDateFormat"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Tqgb tqgbUser = (Tqgb)session.getAttribute("TQGBUSER");%>
<html>

<head>
<title>电子信息工程学院提前攻博招生系统</title>
<LINK REL=StyleSheet HREF="tqgbstyle.css" TYPE="text/css" MEDIA=screen>
<script language="JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>

</head>
<%
		SimpleDateFormat dateFormatStart = new SimpleDateFormat(
				"yyyy-MM-dd");
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Tqgbnews tqgbnews where tqgbnews.id='" + id
						+ "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Tqgbnews tqgbnews = (Tqgbnews) list.get(0);
	%>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院提前攻博系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">首页</a>
		<a href="newslist.jsp">查看通知</a>
		<a href="application/ApplicationAdd.jsp">提交申请</a>
		<a href="application/ApplicationInfo.jsp">查看申请</a>
		<a href="application/ApplicationEdit.jsp">修改申请</a>
		<a href="result.jsp">查看结果</a>
		<a href="tqgbLogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
					<br><br>
					
					<form name="form" method="post" action="#">

						<table width="100%" border="0" align="center" cellpadding="2"
							cellspacing="1">

							<tr >
								<td align=center>
									<input name="id" id="id" type="hidden" value="<%=id%>">
									<%=(tqgbnews.getTitle() == null) ? "" : tqgbnews
						.getTitle()%>
								</td>
							</tr>
							<br><br><br>
							<tr>
								<td>
									
									<br>
									&nbsp;&nbsp;&nbsp;&nbsp;<%=(tqgbnews.getContent() == null) ? "" : tqgbnews
						.getContent()%>
								</td>
							</tr>

							<%
								if (tqgbnews.getFileurl() != null
											&& !tqgbnews.getFileurl().equals("")) {
							%>
							<tr>
								<td>
									附&nbsp;件：
									<a href="../tqgb_download.jsp?id=<%=tqgbnews.getId()%>">
										<%=tqgbnews.getFilename()%> </a>
								</td>
							</tr>
							<%
								}
							%>
							<tr>
								<td>
									发布时间：
									<%=dateFormatStart.format(tqgbnews.getPubtime())%>
								</td>
							</tr>
							<%
								}
							%>
							<tr align="center">
								<td colspan="2">
									<input type="button" name="back" value="返&nbsp;回"
										onClick="window.location.href='newslist.jsp'">
									<input name="filename" type="hidden" id="filename" value="">
									<input name="fileurl" type="hidden" id="fileurl" value="">
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