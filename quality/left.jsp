<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
%>		

<html>
	<head>
		<base href="<%=basePath%>">
		<title>��ർ��</title>
		<style type=text/css>
			body  {
				margin:0px;
				background-color: #0080C0;
			}
			table  { border:0px; }
			td  { font:normal 12px ����; }
			img  { vertical-align:bottom; border:0px; }
			a  { font:normal 12px ����; color:#000000; text-decoration:none; }
			a:hover  { color:#cc0000;text-decoration:underline; }
			.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#EAEAEA; }
			.menu_title  {
				padding-left: 20px;
			}
		</style>		
	</head>
	<body>
	<%	
			Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");
			if(student!=null){
			
		
	 %>
	 	<br>
	 	<br>
		<table width="158" border="0" align="center" cellpadding="0"
			cellspacing="0">			
			<tr>
				<td height="25" class="menu_title">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<a href="quality/info.jsp" target="main"><b>������Ϣ</b>
								</a> |
								<a href="quality/logout.jsp" target="_parent"><b>�˳�</b>
								</a>
							</td>
							<td width="40" align="center">
								<img src="admin/images/up.gif" width="12" height="12" border="0" id="img0" onClick="javascript:spread('list0',this)" style="cursor:hand">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<div class="sec_menu" style="width:158">
						<table width="130" border="0" align="center" cellpadding="0"
							cellspacing="0" id="list0" style="display:">
							<tr>
								<td height="20">
									��ǰ��¼��	<%=student.getStuid() %>								
								</td>
							</tr>	
							<tr>
								<td height="20">
									<a href="quality/StudentEdit.jsp" target="main">�޸ĸ�����Ϣ</a>
								</td>
							</tr>
							<tr>
								<td height="20">
									<a href="quality/ChangePwd.jsp" target="main">�޸ĵ�¼����</a>
								</td>
							</tr>
							<tr>
								<td height="20">
									<a href="quality/ExpPassList.jsp" target="main">ѡ��ʵ��</a>
								</td>
							</tr>
							<tr>
								<td height="20">
									<a href="quality/ChoseResualt.jsp" target="main">�ҵ�־Ը</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td height="20">&nbsp;
					
				</td>
			</tr>
		</table>
	
<%
		}
%>
	</body>
</html>
