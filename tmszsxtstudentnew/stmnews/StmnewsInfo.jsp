<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<%@ page import="com.eaie.admin.news.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>电子信息工程学院推免生招生系统</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">
		
	</head>
	<%
		SimpleDateFormat dateFormatStart = new SimpleDateFormat(
				"yyyy-MM-dd");
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Tmnews tmnews where tmnews.id='" + id
						+ "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Tmnews tmnews = (Tmnews) list.get(0);
	%>
	<body bgcolor="#E9F2F9">
		<table width="765" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="76" align="center">
					<a href="index.html" class="sitenametitle">电子信息工程学院推免生招生系统</a>
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
								<a id="current" href="../index.jsp">&nbsp;&nbsp;首&nbsp;&nbsp;页&nbsp;&nbsp;</a>
							</li>
							<li id="active">
								<a href="../stmnews/StmnewsList.jsp">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmusers/ModifyPwd.jsp">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../index.jsp">&nbsp;&nbsp;系统说明&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmlogout.jsp">&nbsp;&nbsp;退出系统&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../lianxi.jsp">&nbsp;&nbsp;联系我们&nbsp;&nbsp;</a>
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
											<span class="columntitle">用户菜单</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../index.jsp">系统说明</a>
													</li>
													<li>
														<a href="../tmusers/ModifyPwd.jsp">修改密码</a>
													</li>
													<li>
														<a href="../tmlogout.jsp">退出系统</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">推免生通知</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../stmnews/StmnewsList.jsp">查看推免生通知</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">个人信息</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../stmstudent/StmstudentAdd.jsp">提交推免生申请</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentInfo.jsp">查看个人申请信息</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentEdit.jsp">修改个人申请信息</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentKaohe.jsp">查看考核通知</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentLuq.jsp">查看录取信息</a>
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
							<td style="padding: 0 20px 10px 25px"
								valign="top">
								<p>
									<span class="titlebold2">查看推免生通知</span>
									<br>
									<BR>
									<img src="images/hr_dotted.gif">
								</p>
								<table style="font-size:20px;" align="center">
									<tr>
										<td>
											<input name="id" id="id" type="hidden" value="<%=id%>">
											<%=(tmnews.getTitle() == null) ? "" : tmnews.getTitle()%>
										</td>
									</tr>
									<tr>
										<td>
											发布时间：								
											<%=dateFormatStart.format(tmnews.getPubtime())%>
										</td>
									</tr>
									<tr>
										<td>
											<%=(tmnews.getContent() == null) ? "" : tmnews.getContent()%>
										</td>
									</tr>
									<%
										if (tmnews.getFileurl() != null
													&& !tmnews.getFileurl().equals("")) {
									%>
									<tr>
										<td>
											附&nbsp;件：
											<a href="../../download.jsp?id=<%=tmnews.getId()%>&type=tmnews">
												<%=tmnews.getFilename()%>
											</a>
										</td>
									</tr>
									<%
										}
									%>
									<tr align="center" class="tdbg">
										<td colspan="2">
											<input type="button" name="back" value="返&nbsp;回"
												onClick="window.location.href='StmnewsList.jsp'">
											<input name="filename" type="hidden" id="filename" value="">
											<input name="fileurl" type="hidden" id="fileurl" value="">
										</td>
									</tr>
								</table>
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
					版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
				</td>
			</tr>
		</table>
	</body>
	<%
		}
	%>
</html>