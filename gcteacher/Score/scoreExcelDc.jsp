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
		<title>������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</title>
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
		//��ѯ�γ���Ϣ		
		String tchname = gcteacher.getName();
		
	%>
	<body>
	<div id="page">
			<div id="header">
				<h1 align="center">
					������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ
				</h1>
			</div>
			<div id="mainarea">
				<div id="sidebar">
					<div id="sidebarnav">
						<br>
						<br>
						<a href="../index.jsp">��ҳ</a>
						<a href="../ModifyPwd.jsp">�޸ĵ�½����</a>
						<a href="../kcxx.jsp">�鿴�γ���Ϣ</a>
						<a href="../score.jsp">�༭ѧ���ɼ�</a>
						<a href="../lianxi.jsp">��ϵ����</a>
						<a href="../logout.jsp">�˳�ϵͳ</a>
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
								<td >�γ�����</td>
								<td colspan="3"><%=courseTitle %>
								<input name="tid" id="tid" type="hidden" value="<%=tid%>">
								<input name="csTitle" id="csTitle" type="hidden" value="<%=(courseTitle == null) ? "" : courseTitle%>">
								</td>					
							</tr>
							<tr align="center" >
								<td width="25%">
									���
								</td>
								<td width="25%">
									����
								</td>
								<td width="25%">
									����
								</td>
								<td width="25%">
									��ע
								</td>
							</tr>
							<%
										List listc = BasicDAO
												.queryByHql("From Gcxk gcxk where gcxk.tid='" + tid
														+ "'");
										//��Ӧ�γ���ѡ��������Ϊ0
										if (listc.size() > 0) {
											for (int i = 0; i < listc.size(); i++) {
												Gcxk gcxk = (Gcxk) listc.get(i);
												xkid = gcxk.getId().toString();
												int sid = gcxk.getSid();
												//��ȡѧ������
												List listd = BasicDAO
														.queryByHql("From Gcstudent gcstd where gcstd.id='"
																+ sid + "'");
												if (listd.size() != 0) {
													Gcstudent gcstd = (Gcstudent) listd.get(0);
													sName = gcstd.getName();
												}
												//��ȡ��ѧ���ķ���
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
									<%=(sScore == null) ? "δ���" : sScore%>
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
									<input type="submit" name="Submit" value="����Excel�б�">			
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
			��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
	</div>
		</div>
	
	</body>

</html>