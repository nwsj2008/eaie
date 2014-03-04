<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>北京交通大学电子信息工程学院</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
</style>
		<script language="JavaScript">
<!--


// end hiding script -->
</script>
	</head>
<body topmargin="0" rightmargin="0" leftmargin="0" rightmargin="0">
		<%
			int type = Integer.parseInt(request.getParameter("type"));
			if (type != 0) {

				if (type == 1) {
		%>
		<table border="0" cellpadding="0" cellspacing="0" valign=top
			align=left bgcolor=#f8f9fb width=210>
			<tr height=8 width=242>
				<td colspan=2 valign="bottom" background="images/left-top.jpg"
					height=8></td>
			</tr>
			<tr height=60>
				<Td colspan=2 valign="top"
					bgcolor="#FFFFFF">
					<img src="images/corner_1.jpg">
				</Td>
			</tr>
			<TR align=left>
				<TD width=10></TD>
				<TD background="images/menu-.jpg" width=170 height=30>
					<a href="ShowContent.jsp?smallclassid=91&type=1" class="leftcolumn"
						target="_parent">&nbsp;&nbsp;&nbsp;学院简介</a>
				</TD>
				<TD width=30></TD>
			</TR>
			<TR align=left>
				<TD width=10></TD>
				<TD background="images/menu-.jpg" width=170 height=30>
					<a href="ShowLeader.jsp?type=1" class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;学院领导</a>
				</TD>
				<TD width=30></TD>
			</TR>
			<TR align=left>
				<TD width=10></TD>
				<TD background="images/menu-.jpg" width=170 height=30>
					<a href="InstitutionList.jsp?type=1" class="leftcolumn"
						target="_parent">&nbsp;&nbsp;&nbsp;机构设置</a>
				</TD>
				<TD width=30></TD>
			</TR>

			<%
			} else if (type == 2) {
			%>
			<table border="0" cellpadding="0" cellspacing="0" valign=top align=left bgcolor=#f8f9fb width=220>
				<tr height=8 width=242>
				<td colspan=2 valign="bottom" background="images/left-top.jpg"
					height=8></td>
			</tr>
			<tr height=60>
				<Td colspan=2 valign="top"
					bgcolor="#FFFFFF">
					<img src="images/corner_1.jpg">
				</Td>
			</tr>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowClass.jsp?id=21&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;教学公告栏</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowClass.jsp?id=25&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;办公流程</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowClass.jsp?id=23&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;管理规定</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="downlist.jsp?bigclass=2&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;资料下载</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowContent.jsp?smallclassid=26&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;学院学科建设</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="UnderConstruction.jsp?type=2" class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;主讲介绍</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="course/CourseAll.jsp?type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;课程简介</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30
						onClick="javascript:spread('list21','img1');" class="columns">
						&nbsp;&nbsp;&nbsp;质量工程
					</TD>
					<TD width=30></TD>
				</TR>
			<td align="center" colspan=3>
					<div style="width:220">
						<table width="220" border="0" align="center" cellpadding="0"
							cellspacing="0" id="list21" style="display:">
							<TR align=left>
								<TD width=20></TD>
								<TD background="images/menu--.jpg" width=170 height=20>
									<a href="quality/ExpList.jsp?type=2" class="leftcolumns"
										target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大学生创新实验</a>
								</TD>
								<TD width=30></TD>
							</TR>
						</table>
					</div>
				</td>
				</tr>

				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="message/MsgShow.jsp?id=2&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;学生留言</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="http://202.112.146.32:8081/BS/" class="leftcolumn"
							target="_blank">&nbsp;&nbsp;&nbsp;本科生论文选题系统</a>
					</TD>
					<TD width=30></TD>
				</TR>

				<%
				} else if (type == 3) {
				%>
				<table border="0" cellpadding="0" cellspacing="0" valign=top
					align=left bgcolor=#f8f9fb width=220>
					<tr height=8 width=242>
				      <td colspan=2 valign="bottom" background="images/left-top.jpg" height=8></td>
			        </tr>
			        <tr height=60>
				     <Td colspan=2 valign="top" bgcolor="#FFFFFF">
					    <img src="images/corner_1.jpg">
				      </Td>
			        </tr>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=31&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;研究生公告栏</a>
						</TD>
						<TD width=30></TD>
					</TR>
					
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=32&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;研究生招生</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="tmszsxtstudentnew/tmlogin.jsp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;推免生招生系统</a>
						</TD>
						<TD width=30></TD></TR>
						<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.njtu.edu.cn/yanjiu/enrolment/index.asp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;研究生招生系统</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=33&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;研究生培养</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.bjtu.edu.cn/yanjiu/course/index.asp" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;研究生课程评价系统</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.njtu.edu.cn/lwtj/" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;研究生答辩论文提交</a>
						</TD>
						<TD width=30></TD>
					</TR>
					
						
						<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.njtu.edu.cn/bslwtj/" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;博士生答辩论文提交</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.bjtu.edu.cn/yanjiu/lwps/index.asp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;研究生网上论文评审</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.bjtu.edu.cn/yanjiu/assistant/index.asp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;研究生三助系统</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=37&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;工程硕士</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="downlist.jsp?bigclass=3&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;常用资料</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="message/MsgShow.jsp?id=3&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;站内留言</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowContent.jsp?smallclassid=38&type=3"
								class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;热点解答</a>
						</TD>
						<TD width=30></TD>
					</TR>
					
						
						
					<%
					} else if (type == 4) {
					%>
					<table border="0" cellpadding="0" cellspacing="0" valign=top
						align=left bgcolor=#f8f9fb width=210>
				       <tr height=8 width=242>
				      <td colspan=2 valign="bottom" background="images/left-top.jpg" height=8></td>
			        </tr>
			        <tr height=60>
				     <Td colspan=2 valign="top" bgcolor="#FFFFFF">
					    <img src="images/corner_1.jpg">
				      </Td>
			        </tr>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="ShowClass.jsp?id=41&type=4" class="leftcolumn"
									target="_parent">&nbsp;&nbsp;&nbsp;科研公告</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="LectureList.jsp?type=4" class="leftcolumn"
									target="_parent">&nbsp;&nbsp;&nbsp;学术活动</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="downlist.jsp?bigclass=4&type=4" class="leftcolumn"
									target="_parent">&nbsp;&nbsp;&nbsp;常用资料</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="http://www.njtu.edu.cn/jg/jgkj/paper/index.html"
									class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;论文检索</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<%
						} else if (type == 5) {
						%>
						<table border="0" cellpadding="0" cellspacing="0" valign=top
							align=left bgcolor=#f8f9fb width=210>
							<tr height=8 width=242>
				      <td colspan=2 valign="bottom" background="images/left-top.jpg" height=8></td>
			        </tr>
			        <tr height=60>
				     <Td colspan=2 valign="top" bgcolor="#FFFFFF">
					    <img src="images/corner_1.jpg">
				      </Td>
			        </tr>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=1&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;院士风采</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=2&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;博导风采</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=3&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;硕导风采</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=4&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;其他教师</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/login.jsp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;--
										教师登录 --</a>
								</TD>
								<TD width=30></TD>
							</TR>

							<%
							} else if (type == 6) {
							%>

							<table border="0" cellpadding="0" cellspacing="0" valign=top
								align=left bgcolor=#f8f9fb width=200>
								<tr height=8 width=242>
				                <td colspan=2 valign="bottom" background="images/left-top.jpg" height=8></td>
			                 </tr>
			                <tr height=60>
				              <Td colspan=2 valign="top" bgcolor="#FFFFFF">
					          <img src="images/corner_1.jpg">
				                </Td>
			                  </tr>
								<TR align=left>
									<TD width=10></TD>
									<TD background="images/menu-l.jpg" width=200 height=30
										onClick="javascript:spread('list61','img1');" class="columns">
										&nbsp;&nbsp;&nbsp;学科建设
									</TD>
									<TD width=30></TD>
								</TR>
								<tr>
									<td align="center" colspan=3>
										<div style="width:220">
											<table width="220" border="0" align="center" cellpadding="0"
												cellspacing="0" id="list61" style="display:">
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=58&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家级重点学科</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=59&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部级重点学科</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=60&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;博士授权点</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=61&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;硕士授权点</a>
													</TD>
													<TD width=30></TD>
												</TR>
											</table>
										</div>
									</td>
								</tr>

								<TR align=left>
									<TD width=10></TD>
									<TD background="images/menu-l.jpg" width=200 height=30
										onClick="javascript:spread('list62','img1');" class="columns">
										&nbsp;&nbsp;&nbsp;实验室建设
									</TD>
									<TD width=30></TD>
								</TR>
								<tr>
									<td align="center" colspan=3>
										<div style="width:220">
											<table width="220" border="0" align="center" cellpadding="0"
												cellspacing="0" id="list62" style="display:">
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="http://iplab.bjtu.edu.cn/" class="leftcolumns"
															target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下一代互联网研究中心</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="emcsite/index.asp" class="leftcolumns"
															target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电磁兼容实验室</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="jxjd/index.htm" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家电工电子教学基地</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="http://ee.bjtu.edu.cn/dgjd/sfzx/index.htm"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家电工电子实验教学<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;示范中心</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="ShowContent.jsp?id=64" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全光网络与现代通信网<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实验室</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="ShowContent.jsp?id=65" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;运输自动化与通信<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实验室</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=66" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;光波技术工程研究中心</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="http://202.112.146.68:8082/web/"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通信与信息系统实验室</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="http://eaie.bjtu.edu.cn/zdhsys/index.asp"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;城市轨道交通<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;自动化与控制实验室</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=389" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子工程系实验室</a>
													</TD>
													<TD width=30></TD>
												</TR>
											</table>
										</div>
									</td>
								</tr>
								<TR align=left>
									<TD width=10></TD>
									<TD background="images/menu-l.jpg" width=200 height=30
										onClick="javascript:spread('list63','img1');" class="columns">
										&nbsp;&nbsp;&nbsp;- 临时链接 -
									</TD>
									<TD width=30></TD>
								</TR>
								<tr>
									<td align="center" colspan=3>
										<div style="width:220">
											<table width="220" border="0" align="center" cellpadding="0"
												cellspacing="0" id="list63" style="display:">

												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a
															href="http://col.njtu.edu.cn/course/xnjp/dzxy/txxtyl/index.htm"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通信系统原理教学网站</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="http://col.njtu.edu.cn/jingpinke/08jpsb/mndzjs/index.html" class="leftcolumns"
															target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;模拟电子技术教学网站</a>
													</TD>
													<TD width=30></TD>
												</TR>
											</table>
										</div>
									</td>
								</tr>


								<%
								} else if (type == 7) {
								%>
								<table border="0" cellpadding="0" cellspacing="0" valign=top align=left bgcolor=#f8f9fb width=210>
									<tr height=8 width=252>
				     				 <td colspan=2 valign="bottom" background="images/left-top.jpg" height=8></td>
			        				</tr>
			       				 <tr height=60>
				    				 <Td colspan=2 valign="top" bgcolor="#FFFFFF">
					  				  <img src="images/corner_1.jpg">
				    				  </Td>
			       				 </tr>
									<TR align=left>
										<td width=10></td>
										<TD left-cellpadding=10 background="images/menu-l.jpg"
											width=170 height=30
											onClick="javascript:spread('list71','img1');" class="columns">
											&nbsp;&nbsp;&nbsp;学生活动
										</TD>
										<TD width=40></TD>
									</TR>

									<tr>
										<td align="center" colspan=3>
											<div style="width:220">
												<table width="220" border="0" align="center" cellpadding="0"
													cellspacing="0" id="list71" style="display:">

													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="ShowClass.jsp?id=81&type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;活动报道</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="student/Apply.jsp?type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;活动申请</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="ShowClass.jsp?id=82&type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生作品</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="ShowClass.jsp?id=83&type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;奥运专栏</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="vote/VoteList.jsp?type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调查专区</a>
														</TD>
														<TD width=30></TD>
													</TR>
												</table>
											</div>
										</td>
									</tr>

									<TR align=left>
										<TD width=10></TD>
										<TD background="images/menu-l.jpg" width=170 height=30
											onClick="javascript:spread('list72','img1');" class="columns">
											&nbsp;&nbsp;&nbsp;学生组织
										</TD>
										<TD width=40></TD>
									</TR>
									<tr>
										<td align="center" colspan=3>
											<div style="width:220">
												<table width="220" border="0" align="center" cellpadding="0"
													cellspacing="0" id="list72" style="display:">

													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生会</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/kexie/index.htm"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生科协</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76-d.jpg" width=220
															height=35>
															<a href="http://eaie.bjtu.edu.cn/study/items/index.html"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三个代表重要思想<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;研究协会</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/volunteer/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;青年志愿者服务团</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/zuzhi/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;班级风采</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.njtu.edu.cn/ieee/"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE北京交大学生支会</a>
														</TD>
														<TD width=30></TD>
													</TR>
												</table>
											</div>
										</td>
									</tr>

									<TR align=left>
										<TD width=10></TD>
										<TD background="images/menu-l.jpg" width=170 height=30
											onClick="javascript:spread('list73','img1');" class="columns">
											&nbsp;&nbsp;&nbsp;生活服务
										</TD>
										<TD width=40></TD>
									</TR>

									<tr>
										<td align="center" colspan=3>
											<div style="width:220">
												<table width="220" border="0" align="center" cellpadding="0"
													cellspacing="0" id="list73" style="display:">

													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/st/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;同一趟车</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/jiaocai/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书籍交流</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/kejian/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课件下载</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/software/"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;常用软件</a>
														</TD>
														<TD width=30></TD>
													</TR>
												</table>
											</div>
										</td>
									</tr>

									<%
									} else if (type == 10) {
									%>
									<table border="0" cellpadding="0" cellspacing="0" valign=top align=left bgcolor=#f8f9fb width=210>
										<tr>
											<td>
												<img src="images/b.jpg">
											</td>
										</tr>
										<tr>
											<td>
												<a href="ShowClass.jsp?id=61&type=10" target="_parent"><img
														src="images/bzpxx.jpg">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/b-bottom.jpg">
											</td>
										</tr>

										<tr>
											<td>
												<a href="ShowClass.jsp?id=62&type=10" target="_parent"><img
														src="images/bjyzd.jpg">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/b-bottom.jpg">
											</td>
										</tr>

										<tr>
											<td>
												<a href="downlist.jsp?bigclass=6&type=10" target="_parent"><img
														src="images/bcyzl.jpg">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/b-bottom.jpg">
											</td>
										</tr>

										<tr>
											<td>
												<a href="http://www.telehr.com/" target="_blank"><img
														src="images/btxrcw.jpg">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<img src="images/b-bottom.jpg">
											</td>
										</tr>

										<%
											}
											}
										%>


									</TABLE>
	</body>
</html>
