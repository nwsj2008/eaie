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
		<title>������ͨ��ѧ������Ϣ����ѧԺ</title>
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
						target="_parent">&nbsp;&nbsp;&nbsp;ѧԺ���</a>
				</TD>
				<TD width=30></TD>
			</TR>
			<TR align=left>
				<TD width=10></TD>
				<TD background="images/menu-.jpg" width=170 height=30>
					<a href="ShowLeader.jsp?type=1" class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;ѧԺ�쵼</a>
				</TD>
				<TD width=30></TD>
			</TR>
			<TR align=left>
				<TD width=10></TD>
				<TD background="images/menu-.jpg" width=170 height=30>
					<a href="InstitutionList.jsp?type=1" class="leftcolumn"
						target="_parent">&nbsp;&nbsp;&nbsp;��������</a>
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
							target="_parent">&nbsp;&nbsp;&nbsp;��ѧ������</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowClass.jsp?id=25&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;�칫����</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowClass.jsp?id=23&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;����涨</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="downlist.jsp?bigclass=2&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;��������</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="ShowContent.jsp?smallclassid=26&type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;ѧԺѧ�ƽ���</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="UnderConstruction.jsp?type=2" class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;��������</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="course/CourseAll.jsp?type=2" class="leftcolumn"
							target="_parent">&nbsp;&nbsp;&nbsp;�γ̼��</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30
						onClick="javascript:spread('list21','img1');" class="columns">
						&nbsp;&nbsp;&nbsp;��������
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
										target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ѧ������ʵ��</a>
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
							target="_parent">&nbsp;&nbsp;&nbsp;ѧ������</a>
					</TD>
					<TD width=30></TD>
				</TR>
				<TR align=left>
					<TD width=20></TD>
					<TD background="images/menu-.jpg" width=170 height=30>
						<a href="http://202.112.146.32:8081/BS/" class="leftcolumn"
							target="_blank">&nbsp;&nbsp;&nbsp;����������ѡ��ϵͳ</a>
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
								target="_parent">&nbsp;&nbsp;&nbsp;�о���������</a>
						</TD>
						<TD width=30></TD>
					</TR>
					
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=32&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;�о�������</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="tmszsxtstudentnew/tmlogin.jsp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;����������ϵͳ</a>
						</TD>
						<TD width=30></TD></TR>
						<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.njtu.edu.cn/yanjiu/enrolment/index.asp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;�о�������ϵͳ</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=33&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;�о�������</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.bjtu.edu.cn/yanjiu/course/index.asp" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;�о����γ�����ϵͳ</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.njtu.edu.cn/lwtj/" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;�о�����������ύ</a>
						</TD>
						<TD width=30></TD>
					</TR>
					
						
						<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.njtu.edu.cn/bslwtj/" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;��ʿ����������ύ</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.bjtu.edu.cn/yanjiu/lwps/index.asp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;�о���������������</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="http://eaie.bjtu.edu.cn/yanjiu/assistant/index.asp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;�о�������ϵͳ</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowClass.jsp?id=37&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;����˶ʿ</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="downlist.jsp?bigclass=3&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;��������</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="message/MsgShow.jsp?id=3&type=3" class="leftcolumn"
								target="_parent">&nbsp;&nbsp;&nbsp;վ������</a>
						</TD>
						<TD width=30></TD>
					</TR>
					<TR align=left>
						<TD width=20></TD>
						<TD background="images/menu-.jpg" width=170 height=30>
							<a href="ShowContent.jsp?smallclassid=38&type=3"
								class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;�ȵ���</a>
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
									target="_parent">&nbsp;&nbsp;&nbsp;���й���</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="LectureList.jsp?type=4" class="leftcolumn"
									target="_parent">&nbsp;&nbsp;&nbsp;ѧ���</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="downlist.jsp?bigclass=4&type=4" class="leftcolumn"
									target="_parent">&nbsp;&nbsp;&nbsp;��������</a>
							</TD>
							<TD width=30></TD>
						</TR>
						<TR align=left>
							<TD width=10></TD>
							<TD background="images/menu-.jpg" width=170 height=30>
								<a href="http://www.njtu.edu.cn/jg/jgkj/paper/index.html"
									class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;���ļ���</a>
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
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;Ժʿ���</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=2&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;�������</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=3&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;˶�����</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/teachers.jsp?gradeid=4&type=5"
										class="leftcolumn" target="_parent">&nbsp;&nbsp;&nbsp;������ʦ</a>
								</TD>
								<TD width=30></TD>
							</TR>
							<TR align=left>
								<TD width=10></TD>
								<TD background="images/menu-.jpg" width=170 height=30>
									<a href="teacher/login.jsp" class="leftcolumn" target="_blank">&nbsp;&nbsp;&nbsp;--
										��ʦ��¼ --</a>
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
										&nbsp;&nbsp;&nbsp;ѧ�ƽ���
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
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Ҽ��ص�ѧ��</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=59&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ص�ѧ��</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=60&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ʿ��Ȩ��</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=61&type=6" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;˶ʿ��Ȩ��</a>
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
										&nbsp;&nbsp;&nbsp;ʵ���ҽ���
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
															target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��һ���������о�����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="emcsite/index.asp" class="leftcolumns"
															target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ż���ʵ����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="jxjd/index.htm" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ҵ繤���ӽ�ѧ����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="http://ee.bjtu.edu.cn/dgjd/sfzx/index.htm"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ҵ繤����ʵ���ѧ<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ʾ������</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="ShowContent.jsp?id=64" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȫ���������ִ�ͨ����<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ʵ����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="ShowContent.jsp?id=65" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����Զ�����ͨ��<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ʵ����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=66" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ⲩ���������о�����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="http://202.112.146.68:8082/web/"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ͨ������Ϣϵͳʵ����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--l-double.jpg" width=170
														height=35>
														<a href="http://eaie.bjtu.edu.cn/zdhsys/index.asp"
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���й����ͨ<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Զ��������ʵ����</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="ShowContent.jsp?id=389" class="leftcolumns"
															target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ӹ���ϵʵ����</a>
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
										&nbsp;&nbsp;&nbsp;- ��ʱ���� -
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
															class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ͨ��ϵͳԭ���ѧ��վ</a>
													</TD>
													<TD width=30></TD>
												</TR>
												<TR align=left>
													<TD background="images/menu--.jpg" width=170 height=20>
														<a href="http://col.njtu.edu.cn/jingpinke/08jpsb/mndzjs/index.html" class="leftcolumns"
															target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ģ����Ӽ�����ѧ��վ</a>
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
											&nbsp;&nbsp;&nbsp;ѧ���
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
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="student/Apply.jsp?type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="ShowClass.jsp?id=82&type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ѧ����Ʒ</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="ShowClass.jsp?id=83&type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ר��</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="vote/VoteList.jsp?type=7" class="leftcolumns"
																target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ר��</a>
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
											&nbsp;&nbsp;&nbsp;ѧ����֯
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
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ѧ����</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/kexie/index.htm"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ѧ����Э</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76-d.jpg" width=220
															height=35>
															<a href="http://eaie.bjtu.edu.cn/study/items/index.html"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����������Ҫ˼��<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�о�Э��</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/volunteer/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����־Ը�߷�����</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/zuzhi/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�༶���</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.njtu.edu.cn/ieee/"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE��������ѧ��֧��</a>
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
											&nbsp;&nbsp;&nbsp;�������
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
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ͬһ�˳�</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/jiaocai/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�鼮����</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/kejian/index.asp"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�μ�����</a>
														</TD>
														<TD width=30></TD>
													</TR>
													<TR align=left>
														<TD width=10></TD>
														<TD background="images/menu--l-76.jpg" width=220 height=20>
															<a href="http://eaie.bjtu.edu.cn/eaiesu/software/"
																class="leftcolumns" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������</a>
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
