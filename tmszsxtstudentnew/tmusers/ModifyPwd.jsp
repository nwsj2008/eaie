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
		<title>������Ϣ����ѧԺ����������ϵͳ</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">
		<SCRIPT LANGUAGE="JavaScript">
				function formCheck()
				{
					if (document.form1.pwd.value == "")
					{
						alert("�����������!");
						return false;
					}
				
					if (document.form1.pwd1.value == "")
					{
						alert("������������!");
						return false;
					}
				
					if (document.form1.pwd2.value == "")
					{
						alert("������һ��!");
						return false;
					} 
				
					if (document.form1.pwd1.value != document.form1.pwd2.value)
					{
						alert("�����������벻һ�£�����������!");
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

				out.println(JavaScript.alert("�����޸ĳɹ���"));

			} else {

				out.println(JavaScript.alert("�����޸�ʧ�ܣ�"));
			}

		}
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
							<li>
								<a href="../stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;������Ϣ&nbsp;&nbsp;</a>
							</li>
							<li id="active">
								<a href="ModifyPwd.jsp">&nbsp;&nbsp;�޸�����&nbsp;&nbsp;</a>
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
														<a href="../stmstudent/StmstudentAdd.jsp">�ύ����������</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentInfo.jsp">�鿴����������Ϣ</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentEdit.jsp">�޸ĸ���������Ϣ</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentKaohe.jsp">�鿴����֪ͨ</a>
													</li>
													<li>
														<a href="../stmstudent/StmstudentLuq.jsp">�鿴¼ȡ��Ϣ</a>
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
									<span class="titlebold2">�޸��û�����</span>
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
										
												��&nbsp;��&nbsp;����
											
											</td>
											<td><font size=0.01><%=tmuser.getUsername()%></font></td>
											
										</tr>
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
											
												��&nbsp;��&nbsp;�룺
												
											</td>
											<td>
											
												<input name="pwd" type="password" id="pwd" size="20">
												
											</td>
										</tr>
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
											
												��&nbsp;��&nbsp;�룺
											
											</td>
											<td>
											<font size=0.01>
												<input name="pwd1" type="password" id="pwd1" size="20">
												</font>
											</td>
										</tr>
										<tr bgcolor="#e9f2f9" class="tdbg">
											<td align="right">
											
												ȷ�����룺
												
											</td>
											<td>
											<font size=0.01>
												<input name="pwd2" type="password" id="pwd2" size="20">
												</font>
											</td>
										</tr>
										<tr align="center" class="tdbg">
											<td colspan="2">
												<input type="submit" name="Submit" value="ȷ&nbsp;��">
												&nbsp;&nbsp;&nbsp;
												<input type="reset" name="Submit2" value="ȡ&nbsp;��">
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
					��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
				</td>
			</tr>
		</table>
	</body>

</html>
