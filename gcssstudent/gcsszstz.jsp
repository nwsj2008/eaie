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
<title>������Ϣ����ѧԺ����˶ʿ����ϵͳ</title>
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
			out.print("û�м�¼");
		} else {
			Gcssnews gcssnews = (Gcssnews) list.get(0);
	%>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿ����ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
	    <a href="index.jsp">��ҳ</a>
		<a href="newslist.jsp">�鿴����֪ͨ</a>
		<a href="cscj.jsp">�鿴GCT�ɼ�</a>
		<a href="fskc/fskcAdd.jsp">�걨���Կγ�</a>
		<a href="lqjg.jsp">�鿴¼ȡ���</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="gcsslogout.jsp">�˳�ϵͳ</a>
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
									��&nbsp;����
									<a href="../gcssdownload.jsp?id=<%=gcssnews.getId()%>">
										<%=gcssnews.getFilename()%> </a>
								</td>
							</tr>
							<%
								}
							%>
							<tr>
								<td>
								
									����ʱ�䣺
									<%=dateFormatStart.format(gcssnews.getPubtime())%>
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