<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.lecture.*"%>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%!public String getFileExt(String fileName) {

		int indexOfDot = fileName.indexOf('.');
		return fileName.substring(indexOfDot + 1);
	}%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		out
		.println("<center><font color='#333333'><h3>û����Ҫ�ҵ�����</h3></font></center>");
		return;
	}
	Lecture lecture = LectureManage.getLecture(Integer.valueOf(id));
	if (lecture == null) {
		out
		.println("<center><font color='#333333'><h3>û����Ҫ�ҵ�����</h3></font></center>");
		return;
	}
	if (lecture.getHits() == null) {
		lecture.setHits(1);
	} else {
		lecture.setHits(lecture.getHits() + 1);
	}
	LectureManage.updateLecture(lecture);
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<title><%=lecture.getSubject()%></title>
	</head>
	<body>
		<%@ include file="head.jsp"%>
		<table width=780 height="100%" border=0 cellpadding=0 cellspacing=0
			align="center" background="images/blank-backpic.jpg" >
			<tr>
				<td width="1" bgcolor="#000000" rowspan="100">
					<img src="images/spacer.gif" width="1" height="1">
				</td>
				<td width=780 height=100% valign=top align=left>

					<table width="762" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="0" class="right_bg">
									<tr align="center">
										<td class="news_title">
											<%=lecture.getSubject()%>
										</td>
									</tr>
									<tr>
										<td class="news_content">
											<table width="70%" border="0" align="center" cellpadding="4"
												cellspacing="0" class="content">
												<tr>
													<td width="80" align="center" valign="top">
														�����ˣ�
													</td>
													<td>
														<%=lecture.getLecturer()%>
													</td>
												</tr>
												<tr>
													<td width="80" align="center">
														ʱ&nbsp;&nbsp;�䣺
													</td>
													<td>
														<%=lecture.getGivetime()%>
													</td>
												</tr>
												<tr>
													<td width="80" align="center">
														��&nbsp;&nbsp;�㣺
													</td>
													<td>
														<%=lecture.getGivesite()%>
													</td>
												</tr>
												<%if(lecture.getContent()!=null && !lecture.getContent().equals("")){ %>
												<tr>
													<td width="80" align="center">
														���ݼ�飺
													</td>
													<td>
														<%=lecture.getContent()%>

													</td>
												</tr>
												<%} %>
												<%
															if (lecture.getFilename() != null && lecture.getFileurl() != null
															&& !lecture.getFilename().equals("")
															&& !lecture.getFileurl().equals("")) {
												%>
												<tr>
													<td align="center">
														��&nbsp;&nbsp;��:														
													</td>
													<td>														
														<img
															src="images/filepic/<%=getFileExt(lecture.getFileurl())%>.gif">
														<a
															href="download.jsp?id=<%=lecture.getId()%>&type=lecture"><%=lecture.getFilename()%>
														</a>
													</td>
												</tr>
												<%
												}
												%>
											</table>


										</td>
									</tr>
									<tr>
										<td align="center">
											<table width="80%" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td align="right" class="news_time">
														����ʱ�䣺
														<%=lecture.getPubtime().toString()%>
														&nbsp;&nbsp;�����
														<%=lecture.getHits()%>
														&nbsp;��
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

				</td>
				<td width="1" bgcolor="#000000" rowspan="100">
					<img src="images/spacer.gif" width="1" height="1">
				</td>
			</tr>
		</table>
		<jsp:include page="foot.jsp" flush="true" />


	</body>
</html>
