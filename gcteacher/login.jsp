<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		
		
<%
   // String sReffer = request.getHeader("Referer");   
   // String sHost = "http://" + request.getHeader("Host");  
  	//if(sReffer==null||sReffer.indexOf(sHost)< 0){        	
   // 	out.println(JavaScript.alertandRedirect("Ϊ��ϵͳ��ȫ�������ҳ���ӽ������ҳ��!",basePath));    	
   //	}
   
	//���û���¼	
	if(session.getAttribute("GCTEACHER")!=null){		 
			
		 //out.print(JavaScript.alert("�Ѿ����û���¼"));		
		 //Teacher dd = (Teacher)session.getAttribute("USER");
		 //out.print(JavaScript.alert(dd.getTeacher()));
		 response.sendRedirect("index.jsp");
		 
	}
	//û���û���¼
	else{
		String gcTeacherName = request.getParameter("gcteachername");
		String gcTeacherPwd = request.getParameter("gcteacherpwd");
		Gcteacher gcuser;
		if(gcTeacherName!=null&&gcTeacherPwd!=null){
			try{
			 	gcuser = UserManage.userLogin(gcTeacherName,gcTeacherPwd);
			 	if(gcuser!=null){	
			 		session.setAttribute("id",gcuser.getId());//�õ��û���id����id�����ַ���"id"
			 		session.setAttribute("GCTEACHER",gcuser);		 		
			 		response.sendRedirect("index.jsp");
			 	}else{
			 		//out.print("<script> alert('��¼ʧ�ܣ������û��������룡')</script>");
			 		out.print(JavaScript.alert("��¼ʧ�ܣ������û���������!"));
			 	}
			}catch(Exception ex){				
				out.print(JavaScript.alert("��¼ʧ�ܣ������û���������!"));
				ex.printStackTrace();
			}
		}
	}
	
	
	
 %>
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
			if (document.Login.gcteachername.evalue=="")
				document.Login.gcteachername.focus();
			else
				document.Login.gcteachername.select();
			}
			function CheckForm()
			{
				if(document.Login.gcteachername.value=="")
				{
					alert("������������");
					document.Login.gcteachername.focus();
					return false;
				}
				if(document.Login.gcteacherpwd.value == "")
				{
					alert("���������룡");
					document.Login.gcteacherpwd.focus();
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
			<table width="777" border="0" align="center" cellpadding="0"
				cellspacing="0">	
				<tr>
					<td colspan="3">
						<img src="/eaie/gcteacher/images/header.gif" width="750" height="120">
					</td>
				</tr>			
				<tr >
				<td width="268">
						<img src="/eaie/gcteacher/images/left.gif"  width="268" height="194">
				</td>
					<td width="245">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr  align="center">
								<td  align="center">
									<table width="100%" border="0" cellspacing="4" cellpadding="4"  align="center">
										<tr align="left">
											<td colspan="2">
												<b>&nbsp;�û���¼</b>
											</td>
										</tr>
										<tr>
											<td align="right">
												��&nbsp;&nbsp;����
											</td>
											<td>
												<input name="gcteachername" type="text" class="textinput"
													id="gcteachername" onFocus="this.select(); " maxlength="500">
											</td>
										</tr>
										<tr>
											<td align="right">
												��&nbsp;&nbsp;�룺
											</td>
											<td>
												<input name="gcteacherpwd" type="password" class="textinput"
													id="gcteacherpwd" onFocus="this.select(); " maxlength="500">
											</td>
										</tr>
										<tr align="center">
											<td colspan="2">
												<input name="Submit" type="submit" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="��&nbsp;¼">
											
								
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width="244">
						<img src="/eaie/gcteacher/images/right.gif"  width="222" height="194">
					</td>
				</tr>			
				<tr>
					<td colspan="3">
						<img src="/eaie/gcteacher/images/footer.gif"  width="750" height="55">
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
	  

   
	