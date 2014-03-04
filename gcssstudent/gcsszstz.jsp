<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.gcssxt.gcssnews.*"%>
<%@ page import="com.eaie.admin.news.*"%>
<%@ page import="java.text.SimpleDateFormat"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcss gcssuser = (Gcss)session.getAttribute("GCSSUSER");%>
<html>

<head>
<title>电子信息工程学院工程硕士招生系统</title>
<LINK REL=StyleSheet HREF="gcssstyle.css" TYPE="text/css" MEDIA=screen>
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
				.queryByHql("From Gcssnews gcssnews where gcssnews.id='" + id
						+ "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Gcssnews gcssnews = (Gcssnews) list.get(0);
	%>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院工程硕士招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
	    <a href="index.jsp">首页</a>
		<a href="newslist.jsp">查看复试通知</a>
		<a href="cscj.jsp">查看GCT成绩</a>
		<a href="fskc/fskcAdd.jsp">申报复试课程</a>
		<a href="lqjg.jsp">查看录取结果</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="gcsslogout.jsp">退出系统</a>
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
									<%=(gcssnews.getTitle() == null) ? "" : gcssnews
						.getTitle()%>
								</td>
							</tr>
							<br><br><br>
							<tr>
								<td>
									
									<br>
									&nbsp;&nbsp;&nbsp;&nbsp;<%=(gcssnews.getContent() == null) ? "" : gcssnews
						.getContent()%>
								</td>
							</tr>

							<%
								if (gcssnews.getFileurl() != null
											&& !gcssnews.getFileurl().equals("")) {
							%>
							<tr>
								<td>
									附&nbsp;件：
									<a href="../gcssdownload.jsp?id=<%=gcssnews.getId()%>">
										<%=gcssnews.getFilename()%> </a>
								</td>
							</tr>
							<%
								}
							%>
							<tr>
								<td>
								
									发布时间：
									<%=dateFormatStart.format(gcssnews.getPubtime())%>
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