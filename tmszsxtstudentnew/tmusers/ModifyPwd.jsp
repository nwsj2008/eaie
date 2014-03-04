<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.admin.tmusers.*"%>
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
		<SCRIPT LANGUAGE="JavaScript">
				function formCheck()
				{
					if (document.form1.pwd.value == "")
					{
						alert("请输入旧密码!");
						return false;
					}
				
					if (document.form1.pwd1.value == "")
					{
						alert("请输入新密码!");
						return false;
					}
				
					if (document.form1.pwd2.value == "")
					{
						alert("请再输一遍!");
						return false;
					} 
				
					if (document.form1.pwd1.value != document.form1.pwd2.value)
					{
						alert("两次输入密码不一致，请重新输入!");
						return false;
					} 
				}
			</SCRIPT>






	</head>
	<%
		Tmstudent tmuser = (Tmstudent) session.getAttribute("TMUSER");
		String tmoldPassword = request.getParameter("pwd");
		String tmnewPassword = request.getParameter("pwd1");
		if (tmoldPassword != null && tmnewPassword != null) {

			boolean isOK = TmuserManage.tmchangePassword(tmuser,
					tmoldPassword, tmnewPassword);
			if (isOK) {

				out.println(JavaScript.alert("密码修改成功！"));

			} else {

				out.println(JavaScript.alert("密码修改失败！"));
			}

		}
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
							<li>
								<a href="../stmnews/StmnewsList.jsp">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</a>
							</li>
							<li id="active">
								<a href="ModifyPwd.jsp">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</a>
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
							<td style="font-size: 20px;padding: 0 20px 10px 25px" valign="top">
								<p>
									<span class="titlebold2">修改用户密码</span>
									<br>

									<BR>
									<img src="images/hr_dotted.gif">
								</p>
								<form name="form1" method="post" action=""
									onSubmit="return formCheck()">
									<table width="350" border="0" align="center" cellpadding="4"
										cellspacing="1" class="border">
										
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
										
												用&nbsp;户&nbsp;名：
											
											</td>
											<td><font size=0.01><%=tmuser.getUsername()%></font></td>
											
										</tr>
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
											
												旧&nbsp;密&nbsp;码：
												
											</td>
											<td>
											
												<input name="pwd" type="password" id="pwd" size="20">
												
											</td>
										</tr>
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
											
												新&nbsp;密&nbsp;码：
											
											</td>
											<td>
											<font size=0.01>
												<input name="pwd1" type="password" id="pwd1" size="20">
												</font>
											</td>
										</tr>
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
											
												确认密码：
												
											</td>
											<td>
											<font size=0.01>
												<input name="pwd2" type="password" id="pwd2" size="20">
												</font>
											</td>
										</tr>
										<tr align="center" class="tdbg">
											<td colspan="2">
												<input type="submit" name="Submit" value="确&nbsp;定">
												&nbsp;&nbsp;&nbsp;
												<input type="reset" name="Submit2" value="取&nbsp;消">
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
