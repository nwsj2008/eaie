<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.bszsxt.bsnews.*"%>
<%@ page import="com.eaie.admin.news.*"%>
<%@ page import="java.text.SimpleDateFormat"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Bsstudent bsuser = (Bsstudent)session.getAttribute("BSUSER");%>
<html>

<head>
<title>������Ϣ����ѧԺ��ʿ�о�������ϵͳ</title>
<LINK REL=StyleSheet HREF="bsstyle.css" TYPE="text/css" MEDIA=screen>
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
				.queryByHql("From Bsnews bsnews where bsnews.id='" + id
						+ "'");
		if (list.size() == 0) {
			out.print("û�м�¼");
		} else {
			Bsnews bsnews = (Bsnews) list.get(0);
	%>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ��ʿ�о�������ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">��ҳ</a>
		<a href="newslist.jsp">�鿴����֪ͨ</a>
		<a href="cscj.jsp">�鿴���Գɼ�</a>
		<a href="fstj.jsp">�鿴����֪ͨ</a>
		<a href="lqjg.jsp">�鿴¼ȡ���</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="bslogout.jsp">�˳�ϵͳ</a>
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
									<%=(bsnews.getTitle() == null) ? "" : bsnews
						.getTitle()%>
								</td>
							</tr>
							<br><br><br>
							<tr>
								<td>
									
									<br>
									&nbsp;&nbsp;&nbsp;&nbsp;<%=(bsnews.getContent() == null) ? "" : bsnews
						.getContent()%>
								</td>
							</tr>

							<%
								if (bsnews.getFileurl() != null
											&& !bsnews.getFileurl().equals("")) {
							%>
							<tr>
								<td>
									��&nbsp;����
									<a href="../do_download.jsp?id=<%=bsnews.getId()%>">
										<%=bsnews.getFilename()%> </a>
								</td>
							</tr>
							<%
								}
							%>
							<tr>
								<td>
									����ʱ�䣺
									<%=dateFormatStart.format(bsnews.getPubtime())%>
								</td>
							</tr>
							<%
								}
							%>
							<tr align="center">
								<td colspan="2">
									<input type="button" name="back" value="��&nbsp;��"
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
			��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
	</div>


</div>
</body>

</html>