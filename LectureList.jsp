<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.admin.lecture.*"%>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		 <base href="<%=basePath%>">
		<title>北京交通大学电子信息工程学院-学术报告</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
	<%
				int curPage = (request.getParameter("curPage") == null ? 1
				: Integer.parseInt(request.getParameter("curPage")));
		LectureList lectureList = new LectureList();
		List list = lectureList.getLectureList(curPage);
		Page pager = lectureList.getCurrentPage();
        String type = request.getParameter("type");
		if(type==null)
		{
		return;
		}
%>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
			
			<table width="540" border="0" align="center" cellpadding="0"
			cellspacing="0" class="right_bg">
			<tr>
				<td height="40" align="center" class="news_title">
					学术报告
				</td>
			</tr>
			<tr>
				<td height="540" align="center" valign="top">
					<%
							if (list.size() == 0) {

							out
							.println("<center><font color='#333333'><h3>暂无学术报告</h3></font></center>");
							return;
						}
					%>
					<table width="90%" border="0" align="center" cellpadding="4"
						cellspacing="1" bgcolor="#666666">
						<tr align="center" bgcolor="#c6cbd1" class="maintext">
							<td width="30">
								<strong>序号</strong>
							</td>
							<td>
								<strong>报告题目</strong>
							</td>
							<td>
								<strong>报告人</strong>
							</td>
							<td>
								<strong>时间</strong>
							</td>
							<td>
								<strong>地点</strong>
							</td>
						</tr>
						<%
								for (int i = 0; i < list.size(); i++) {
								Lecture lecture = (Lecture) list.get(i);
						%>
						<tr bgcolor="#FFFFFF" class="maintext">
							<td width="25" align="center">
								<%=i+1%>
							</td>
							<td>
								<a class=news href="ShowLecture.jsp?id=<%=lecture.getId()%>"
									target="_blank"><%=lecture.getSubject()%>
								</a>
							</td>
							<td>
								<%=lecture.getLecturer()%>
							</td>
							<td>
								<%=lecture.getGivetime()%>
							</td>
							<td>
								<%=lecture.getGivesite()%>
							</td>
						</tr>
						<%
						}
						%>
					</table>
					<form name="pageForm" action="" method="post">
						<table align="center" width="96%">
							<tr>
								<td align="center">
									<%@include file="admin/common/Pager.jsp"%>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
			
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>


		
	</body>
</html>
