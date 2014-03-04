<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.tmszsxt.tmnews.TmnewsList"%>
<%@page import="com.eaie.common.Page"%>
<%@page import="com.eaie.dbmanage.Tmnews"%>
<%@page import="com.eaie.dbmanage.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>电子信息工程学院推免生招生系统</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">
		<style type="text/css">
		a:link{font-size:12px;COLOR: #222222;TEXT-DECORATION: none;}
		a:visited{font-size:12px;COLOR: #222222;TEXT-DECORATION: none;}
		a:hover{font-size:12px;COLOR: red;TEXT-DECORATION: none;}
		a:active{font-size:12px;COLOR: #222222;TEXT-DECORATION: none;}		
		</style>
	</head>
	<%!List list;
	String cKeyWords, csearchpart;%>
		<%
		 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			TmnewsList clist = new TmnewsList();
			list = clist.getTmnewsList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
		%>
	<body bgcolor="#E9F2F9">
		<table width="765" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="76" align="center" class="sitenametitle">
					电子信息工程学院推免生招生系统
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
								<a href="StmnewsList.jsp">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>
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
														<a href="StmnewsList.jsp">查看推免生通知</a>
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
							<td style="padding: 0 20px 10px 25px" valign="top">
								<p>
									<span class="titlebold2">所有推免生通知</span>
									<br>

									<BR>
									<img src="images/hr_dotted.gif">
								</p>


			<form name="form2" method="post"
			action="tmszsxt/tmnews/TmnewsDel.jsp">
			<table width="100%" border="0"  cellpadding="2"
				cellspacing="1" class="border">

			
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Tmnews tmnews = (Tmnews) list.get(i);
				%>


				<tr  class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					
					
					<td>    
						<a href="StmnewsInfo.jsp?id=<%=tmnews.getId()%>">
						<%=tmnews.getTitle()%>
						</a>
					</td>
					<td width="80"><%=dateFormatStart.format(tmnews.getPubtime())%>
					</td>						
						<%
							}
							
							}
						%>
				
			</table>		
		</form>


		<form name="pageForm" action="">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<input type="hidden" id="keyword" name="keyword"
							value=<%=cKeyWords == null ? "" : cKeyWords%>>
						<input type="hidden" id="keyword" name="type"
							value=<%=csearchpart == null ? "" : csearchpart%>>
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
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
					版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
				</td>
			</tr>
		</table>
	</body>

</html>