<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<%@ page import="com.eaie.admin.news.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

		<title>�鿴������֪ͨ</title>
		<base href="<%=basePath%>">
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

	<%
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Tmnews tmnews where tmnews.id='" + id
						+ "'");
		if (list.size() == 0) {
			out.print("û�м�¼");
		} else {
			Tmnews tmnews = (Tmnews) list.get(0);
	%>




	<body>
		<form name="myform" id="myform" method="post"
			action="tmszsxt/tmnews/TmnewsUpate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						�鿴������֪ͨ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;�⣺
					</td>
					<td>
						<input name="id" id="id" type="hidden" value="<%=id%>">
						<%=(tmnews.getTitle()==null)?"":tmnews.getTitle()%>
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						��&nbsp;�ݣ�
					</td>
					<td valign="top">
						<%=(tmnews.getContent()==null)?"":tmnews.getContent()%>
					</td>
				</tr>


<%
						if (tmnews.getFileurl() != null
									&& !tmnews.getFileurl().equals("")) {
					%>
				<tr class="tdbg">
					
					<td>
						��&nbsp;����
					</td>


					<td>			
						<a href="download.jsp?id=<%=tmnews.getId()%>&type=tmnews"><%=tmnews.getFilename()%>
						</a>
					</td>

					

				</tr>
				<%
						}
					%>

				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="button" name="back" value="��&nbsp;��"
							onClick="window.location.href='StmnewsList.jsp'">
						<input name="filename" type="hidden" id="filename" value="">
						<input name="fileurl" type="hidden" id="fileurl" value="">
					</td>
				</tr>
			</table>
		</form>
		<%
			}
		%>
	</body>
</html>