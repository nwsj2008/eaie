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
   // 	out.println(JavaScript.alertandRedirect("为了系统安全，请从首页链接进入管理页面!",basePath));    	
   //	}
   
	//有用户登录	
	if(session.getAttribute("GCTEACHER")!=null){		 
			
		 //out.print(JavaScript.alert("已经有用户登录"));		
		 //Teacher dd = (Teacher)session.getAttribute("USER");
		 //out.print(JavaScript.alert(dd.getTeacher()));
		 response.sendRedirect("index.jsp");
		 
	}
	//没有用户登录
	else{
		String gcTeacherName = request.getParameter("gcteachername");
		String gcTeacherPwd = request.getParameter("gcteacherpwd");
		Gcteacher gcuser;
		if(gcTeacherName!=null&&gcTeacherPwd!=null){
			try{
			 	gcuser = UserManage.userLogin(gcTeacherName,gcTeacherPwd);
			 	if(gcuser!=null){	
			 		session.setAttribute("id",gcuser.getId());//得到用户的id，将id付给字符串"id"
			 		session.setAttribute("GCTEACHER",gcuser);		 		
			 		response.sendRedirect("index.jsp");
			 	}else{
			 		//out.print("<script> alert('登录失败，请检查用户名及密码！')</script>");
			 		out.print(JavaScript.alert("登录失败，请检查用户名及密码!"));
			 	}
			}catch(Exception ex){				
				out.print(JavaScript.alert("登录失败，请检查用户名及密码!"));
				ex.printStackTrace();
			}
		}
	}
	
	
	
 %>
<html>
<head>
		<base href="<%=basePath%>">
		<title>用户登录</title>
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
					alert("请输入姓名！");
					document.Login.gcteachername.focus();
					return false;
				}
				if(document.Login.gcteacherpwd.value == "")
				{
					alert("请输入密码！");
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
			    alert("友情提示：\n    你使用的是Netscape或FireFox浏览器，可能会导致无法使用后台的部分功能。建议您使用 IE6.0 或以上版本。");
			  } 
			  else if (app.indexOf('Microsoft') != -1)
			  {
			    if (verStr.indexOf("MSIE 3.0")!=-1 || verStr.indexOf("MSIE 4.0") != -1 || verStr.indexOf("MSIE 5.0") != -1 || verStr.indexOf("MSIE 5.1") != -1)
			      alert("友情提示：\n    您的浏览器版本太低，可能会导致无法使用后台的部分功能。建议您使用 IE6.0 或以上版本。");
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
												<b>&nbsp;用户登录</b>
											</td>
										</tr>
										<tr>
											<td align="right">
												姓&nbsp;&nbsp;名：
											</td>
											<td>
												<input name="gcteachername" type="text" class="textinput"
													id="gcteachername" onFocus="this.select(); " maxlength="500">
											</td>
										</tr>
										<tr>
											<td align="right">
												密&nbsp;&nbsp;码：
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
													value="登&nbsp;录">
											
								
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
					版权所有：北京交通大学电子信息工程学院
				</td>
			</tr>
		</table>
	</body>
</html>
	  

   
	