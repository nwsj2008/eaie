<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.tmszsxt.*" %>
<%@ page import="com.eaie.tools.*" %>


<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
	if(session.getAttribute("TMUSER")==null){
		
		out.println(JavaScript.alertandRedirect("您尚未登录，请先登录！","tmlogin.jsp"));
	}else{
 
			Tmstudent tmuser = (Tmstudent)session.getAttribute("TMUSER");		
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
							<li id="active">
								<a id="current" href="index.jsp">&nbsp;&nbsp;首&nbsp;&nbsp;页&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="stmnews/StmnewsList.jsp">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="tmusers/ModifyPwd.jsp">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="index.jsp">&nbsp;&nbsp;系统说明&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="tmlogout.jsp">&nbsp;&nbsp;退出系统&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="lianxi.jsp">&nbsp;&nbsp;联系我们&nbsp;&nbsp;</a>
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
														<a href="index.jsp">系统说明</a>
													</li>
													<li>
														<a href="tmusers/ModifyPwd.jsp">修改密码</a>
													</li>
													<li>
														<a href="tmlogout.jsp">退出系统</a>
													</li>
												</ul>
											</div>
										</td>
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
														<a href="stmnews/StmnewsList.jsp">查看推免生通知</a>
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
														<a href="stmstudent/StmstudentAdd.jsp">提交推免生申请</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentInfo.jsp">查看个人申请信息</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentEdit.jsp">修改个人申请信息</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentKaohe.jsp">查看考核通知</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentLuq.jsp">查看录取信息</a>
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
							<td style="font-size: 12px;padding: 0 20px 10px 25px" valign="top" >
								<p>
									<span class="titlebold2">欢迎登录电子信息工程学院推免生招生系统！</span>								
									<img src="images/hr_dotted.gif">
								</p>						
								<p>
									<span class="titlebold2">用户信息</span>
									<br>								
								</p>								
								 当前登录：学生
								 <br>
								 用户名：<%=tmuser.getUsername()%>	
								<br>
								 登陆地点：<%=request.getRemoteAddr() %>
								 <br>
								上次登陆时间：<%=session.getAttribute("TMLAST_LOGIN_TIME").toString() %>
								<br>
            登陆次数：<%=session.getAttribute("TMLOGIN_TIMES").toString() %>
           
								<img src="images/hr_dotted.gif">												
								<p>
									<span class="titlebold2">系统说明</span>
									<br>							
								</p>
								
								1.为使页面正常显示，推荐您使用1024x768或者更高的屏幕分辨率。
								 <br>
								 2.每次登录时间限为30分钟,请节约时间。
								 <br>
								 3.请您保护好自己的登录密码，离开时记得退出系统。
								<br>
								 4.登陆后请查看推免生通知，下载推免生表格，填写后打印出来交到研究生科。
								 <br>
								5.登陆后请及时提交推免生申请信息，并注意查看考核信息和录取信息。							
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
		<%
	}
 %>
	</body>
</html>
