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
		<title>������Ϣ����ѧԺ����������ϵͳ</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">
	</head>
	<%
	if(session.getAttribute("TMUSER")==null){
		
		out.println(JavaScript.alertandRedirect("����δ��¼�����ȵ�¼��","tmlogin.jsp"));
	}else{
 
			Tmstudent tmuser = (Tmstudent)session.getAttribute("TMUSER");		
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
							<li id="active">
								<a id="current" href="index.jsp">&nbsp;&nbsp;��&nbsp;&nbsp;ҳ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="stmnews/StmnewsList.jsp">&nbsp;&nbsp;������֪ͨ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;������Ϣ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="tmusers/ModifyPwd.jsp">&nbsp;&nbsp;�޸�����&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="index.jsp">&nbsp;&nbsp;ϵͳ˵��&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="tmlogout.jsp">&nbsp;&nbsp;�˳�ϵͳ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="lianxi.jsp">&nbsp;&nbsp;��ϵ����&nbsp;&nbsp;</a>
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
														<a href="index.jsp">ϵͳ˵��</a>
													</li>
													<li>
														<a href="tmusers/ModifyPwd.jsp">�޸�����</a>
													</li>
													<li>
														<a href="tmlogout.jsp">�˳�ϵͳ</a>
													</li>
												</ul>
											</div>
										</td>
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
														<a href="stmnews/StmnewsList.jsp">�鿴������֪ͨ</a>
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
														<a href="stmstudent/StmstudentAdd.jsp">�ύ����������</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentInfo.jsp">�鿴����������Ϣ</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentEdit.jsp">�޸ĸ���������Ϣ</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentKaohe.jsp">�鿴����֪ͨ</a>
													</li>
													<li>
														<a href="stmstudent/StmstudentLuq.jsp">�鿴¼ȡ��Ϣ</a>
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
									<span class="titlebold2">��ӭ��¼������Ϣ����ѧԺ����������ϵͳ��</span>								
									<img src="images/hr_dotted.gif">
								</p>						
								<p>
									<span class="titlebold2">�û���Ϣ</span>
									<br>								
								</p>								
								 ��ǰ��¼��ѧ��
								 <br>
								 �û�����<%=tmuser.getUsername()%>	
								<br>
								 ��½�ص㣺<%=request.getRemoteAddr() %>
								 <br>
								�ϴε�½ʱ�䣺<%=session.getAttribute("TMLAST_LOGIN_TIME").toString() %>
								<br>
            ��½������<%=session.getAttribute("TMLOGIN_TIMES").toString() %>
           
								<img src="images/hr_dotted.gif">												
								<p>
									<span class="titlebold2">ϵͳ˵��</span>
									<br>							
								</p>
								
								1.Ϊʹҳ��������ʾ���Ƽ���ʹ��1024x768���߸��ߵ���Ļ�ֱ��ʡ�
								 <br>
								 2.ÿ�ε�¼ʱ����Ϊ30����,���Լʱ�䡣
								 <br>
								 3.�����������Լ��ĵ�¼���룬�뿪ʱ�ǵ��˳�ϵͳ��
								<br>
								 4.��½����鿴������֪ͨ������������������д���ӡ���������о����ơ�
								 <br>
								5.��½���뼰ʱ�ύ������������Ϣ����ע��鿴������Ϣ��¼ȡ��Ϣ��							
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
		<%
	}
 %>
	</body>
</html>