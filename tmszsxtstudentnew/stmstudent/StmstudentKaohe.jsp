<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>������Ϣ����ѧԺ����������ϵͳ</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">
	</head>
	<%
		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Tmstudent tmstudent where tmstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("û�м�¼");
		} else {
			Tmstudent tmstudent = (Tmstudent) list.get(0);
	%>
	<body bgcolor="#E9F2F9">
		<table width="765" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="76" align="center">
					<a href="index.html" class="sitenametitle">������Ϣ����ѧԺ����������ϵͳ</a>
				</td>
			</tr>
			<tr>
				<td height="44">
					<div id="navcontainer">
						<ul id="navlist">
							<!-- CSS Tabs -->
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
							<li>
								<a id="current" href="../index.jsp">&nbsp;&nbsp;��&nbsp;&nbsp;ҳ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../stmnews/StmnewsList.jsp">&nbsp;&nbsp;������֪ͨ&nbsp;&nbsp;</a>
							</li>
							<li id="active">
								<a href="StmstudentInfo.jsp">&nbsp;&nbsp;������Ϣ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmusers/ModifyPwd.jsp">&nbsp;&nbsp;�޸�����&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../index.jsp">&nbsp;&nbsp;ϵͳ˵��&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmlogout.jsp">&nbsp;&nbsp;�˳�ϵͳ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../lianxi.jsp">&nbsp;&nbsp;��ϵ����&nbsp;&nbsp;</a>
							</li>
						</ul>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/img_banner.jpg" width="765" height="190">
				</td>
			</tr>
			<tr>
				<td valign="top" class="body_txt" background="images/ctnt_bg.gif"
					style="padding: 10px 10px 3px 10px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top">
								<table width="216" border="0" cellspacing="0" cellpadding="0">

									<tr>
										<td>
											<img src="images/leftbartop.gif" width="216" height="12">
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">�û��˵�</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../index.jsp">ϵͳ˵��</a>
													</li>
													<li>
														<a href="../tmusers/ModifyPwd.jsp">�޸�����</a>
													</li>
													<li>
														<a href="../tmlogout.jsp">�˳�ϵͳ</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">������֪ͨ</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
														<li>
														<a href="../stmnews/StmnewsList.jsp">�鿴������֪ͨ</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">������Ϣ</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
												<li>
														<a href="StmstudentAdd.jsp">�ύ����������</a>
													</li>
													<li>
														<a href="StmstudentInfo.jsp">�鿴����������Ϣ</a>
													</li>
													<li>
														<a href="StmstudentEdit.jsp">�޸ĸ���������Ϣ</a>
													</li>
													<li>
														<a href="StmstudentKaohe.jsp">�鿴����֪ͨ</a>
													</li>
													<li>
														<a href="StmstudentLuq.jsp">�鿴¼ȡ��Ϣ</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>

									<tr>
										<td background="images/leftbarbg.gif">
											&nbsp;
										</td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>
											<img src="images/leftbarbtm.gif" width="216" height="12">
										</td>
									</tr>
								</table>
							</td>
							<td style="font-size: 12px;padding: 0 20px 10px 25px" valign="top">
								<p>
									<span class="titlebold2">�鿴������Ϣ</span>
									<br>

									<BR>
									<img src="images/hr_dotted.gif">
								</p>




								<form name="form1" method="post"
									action="tmszsxtstudentnew/stmstudent/StmstudentUpdate.jsp">
									<table align="center">
										<tr class="tdbg">

										</tr>
										<tr class="tdbg">
											<td width="30">

												<input name="id" id="id" type="hidden" value="<%=id%>">
											</td>
											<tr>


											<td align="center">
											
												���Գɼ���
												<br>
												<br>
												</td>
												<td width="150">
												
												<%=(tmstudent.getFushiresult() == null) ? ""
						: tmstudent.getFushiresult()%>
												<br>
												<br>
												
												</td>
												</tr>
												<tr>
												<td>
												����֪ͨ��
												<br>
												<br>
												</td>
												<td width="150">
												<%=(tmstudent.getShenheresult() == null) ? ""
						: tmstudent.getShenheresult()%>
						<br>
												<br>
											</td>
											</tr>
									</table>
									<BR>
								</form>


								<img src="images/hr_dotted.gif">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/ftr_btm.gif" width="765" height="27">
				</td>
			</tr>
			<tr>
				<td align="center" class="txt_copyright"
					style="padding: 3px 10px 10px 10px;">
					��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
				</td>
			</tr>
		</table>
	</body>
	<%
		}
	%>
</html>