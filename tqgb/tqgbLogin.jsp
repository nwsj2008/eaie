<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tqgb.*" %>
<%@ page import="com.eaie.tools.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  
	//���û���¼	
	if(session.getAttribute("TQGBUSER")!=null){		 
		 response.sendRedirect("index.jsp");
		 
	}
	//û���û���¼
	else{
		String tqgbUserName = request.getParameter("tqgbusername");
		String tqgbPassWord = request.getParameter("tqgbpassword");
		Tqgb tqgbuser;
		if(tqgbUserName!=null&&tqgbPassWord!=null){
			try{
			 	tqgbuser = TqgbManage.tqgbUserLogin(tqgbUserName,tqgbPassWord);
			 	if(tqgbuser!=null){	
			 		session.setAttribute("id",tqgbuser.getId());//�õ��û���id����id�����ַ���"id"
			 		session.setAttribute("TQGBUSER",tqgbuser);		 		
			 		response.sendRedirect("index.jsp");
			 	}else{
			 		out.print(JavaScript.alert("��¼ʧ�ܣ������û���������!"));
			 	}
			}catch(Exception ex){				
				out.print(JavaScript.alert("��¼ʧ�ܣ������û���������!"));
				ex.printStackTrace();
			}
		}
	}
	
	
	
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
		<base href="<%=basePath%>">
		<title>�û���¼</title>
		<style type="text/css">
		<!--
		body,td,th{
			margin-top: 50px;
			font-size: 12px;
			color: #000000;
		}
		.textinput {
			font-size: 12px;
			height: 20px;
			width: 150px;
			padding-top: 1px;
			padding-right: 4px;
			padding-bottom: 1px;
			padding-left: 4px;
			border: 1px dashed #18669a;
		}
		.submitinput {
			font-size: 12px;
			color: #000000;
			height: 20px;
			width: 60px;
			padding-top: 2px;
			border: 1px solid #E1F4EE;
		}
		-->
		</style>
		<script language=javascript>
			<!--
			function SetFocus()
			{
			if (document.Login.tqgbusername.evalue=="")
				document.Login.tqgbusername.focus();
			else
				document.Login.tqgbusername.select();
			}
			function CheckForm()
			{
				if(document.Login.tqgbusername.value=="")
				{
					alert("������������");
					document.Login.tqgbusername.focus();
					return false;
				}
				if(document.Login.tqgbpassword.value == "")
				{
					alert("�����뿼�ţ�");
					document.Login.tqgbpassword.focus();
					return false;
				}
			}
			function CheckBrowser() 
			{
			  var app=navigator.appName;
			  var verStr=navigator.appVersion;
			  if (app.indexOf('Netscape') != -1)
			  {
			    alert("������ʾ��\n    ��ʹ�õ���Netscape��FireFox����������ܻᵼ���޷�ʹ�ú�̨�Ĳ��ֹ��ܡ�������ʹ�� IE6.0 �����ϰ汾��");
			  } 
			  else if (app.indexOf('Microsoft') != -1)
			  {
			    if (verStr.indexOf("MSIE 3.0")!=-1 || verStr.indexOf("MSIE 4.0") != -1 || verStr.indexOf("MSIE 5.0") != -1 || verStr.indexOf("MSIE 5.1") != -1)
			      alert("������ʾ��\n    ����������汾̫�ͣ����ܻᵼ���޷�ʹ�ú�̨�Ĳ��ֹ��ܡ�������ʹ�� IE6.0 �����ϰ汾��");
			  }
			}
			//-->
		</script>
</head>
	<body>
		<form name="Login" method="post" action=""
			onSubmit="return CheckForm();">
			<table width="331" border="0" align="center" cellpadding="0"
				cellspacing="0">	
				<tr>
					<td colspan="3">
						<img src="admin/images/tqgb.gif" width="762" height="125">
					</td>
				</tr>			
				<tr align="center">
				<td width="247">
						<img src="admin/images/adminlogin_02.gif" width="247" height="180">
					</td>
					<td width="331">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr  align="center">
								<td  align="center">
									<table width="100%" border="1" cellspacing="4" cellpadding="4"  align="center">
										<tr align="center">
											<td colspan="2">
												<b>�û���¼</b>
											</td>
										</tr>
										<tr>
											<td align="right">
												�û�����
											</td>
											<td>
												<input name="tqgbusername" type="text" class="textinput"
													id="tqgbusername" onFocus="this.select(); " maxlength="500">
											</td>
										</tr>
										<tr>
											<td align="right">
												��&nbsp;&nbsp;�룺
											</td>
											<td>
												<input name="tqgbpassword" type="password" class="textinput"
													id="tqgbpassword" onFocus="this.select(); " maxlength="500">
											</td>
										</tr>
										<tr align="center">
											<td colspan="2">
												<input name="Submit" type="submit" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="��&nbsp;¼">
											&nbsp;&nbsp;&nbsp;&nbsp;
												<input name="Submit2" type="reset" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="��&nbsp;��">
								     &nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" name="back"  class="submitinput" value="ע&nbsp;��" onClick="window.location.href='tqgbUsers/tqgbUserAdd.jsp'"
												onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'">
								
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width="184">
						<img src="admin/images/adminlogin_04.gif" width="184" height="180">
					</td>
				</tr>			
				<tr>
					<td height="52" colspan="3">
						<img src="admin/images/adminlogin_05.gif" width="762" height="52">
					</td>
				</tr>	
			</table>
			
		</form>
		<script language="JavaScript" type="text/JavaScript">
			CheckBrowser();
			SetFocus(); 
		</script>
		<table width="500" border="0" align="center" cellpadding="4"
			cellspacing="0">
			<tr>
				<td align="center">
					��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
				</td>
			</tr>
		</table>
	</body>
</html>
