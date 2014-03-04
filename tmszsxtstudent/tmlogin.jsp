<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tmusers.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.tmusers.TmuserManage"%>
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
	if(session.getAttribute("TMUSER")!=null){		 
			
		 //out.print(JavaScript.alert("已经有用户登录"));		
		 //Teacher dd = (Teacher)session.getAttribute("USER");
		 //out.print(JavaScript.alert(dd.getTeacher()));
		 response.sendRedirect("tmindex.jsp");
		 
	}
	//没有用户登录
	else{
		String tmUserName = request.getParameter("tmusername");
		String tmPassWord = request.getParameter("tmpassword");
		Tmstudent tmuser;
		if(tmUserName!=null&&tmPassWord!=null){
			try{
			 	tmuser = TmuserManage.tmuserLogin(tmUserName,tmPassWord);
			 	if(tmuser!=null){	
			 		session.setAttribute("id",tmuser.getId());//得到用户的id，将id付给字符串"id"
			 		//更新登录时间、次数、主机IP	
			 		if(tmuser.getLogintimes()==null){//如果用户登陆次数为空
			 			session.setAttribute("TMLOGIN_TIMES","");
			 			tmuser.setLogintimes(1);//设置登陆次数为1
			 		}else{			 			
			 			tmuser.setLogintimes(tmuser.getLogintimes()+1);//登陆次数加1
			 			session.setAttribute("TMLOGIN_TIMES",tmuser.getLogintimes().toString());
			 		}			 		
			 		if(tmuser.getLastlogintime()==null){//如果上次登陆时间为空
			 			session.setAttribute("TMLAST_LOGIN_TIME","首次登录");
			 		}else{
			 			session.setAttribute("TMLAST_LOGIN_TIME",tmuser.getLastlogintime().toLocaleString());
			 		}
			 		tmuser.setLastloginip(request.getRemoteAddr());
			 		tmuser.setLastlogintime(new java.util.Date());//将现在时间设为上次登陆时间
			 		try{
			 			TmuserManage.UpDateUser(tmuser);
			 		}catch(Exception ex){
			 			ex.printStackTrace();
			 		}
			 		session.setAttribute("TMUSER",tmuser);		 		
			 		response.sendRedirect("tmindex.jsp");
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
			if (document.Login.username.evalue=="")
				document.Login.username.focus();
			else
				document.Login.username.select();
			}
			function CheckForm()
			{
				if(document.Login.tmusername.value=="")
				{
					alert("请输入用户名！");
					document.Login.tmusername.focus();
					return false;
				}
				if(document.Login.tmpassword.value == "")
				{
					alert("请输入密码！");
					document.Login.tmpassword.focus();
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
			<table width="762" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td colspan="3">
						<img src="admin/images/adminlogin_01.gif" width="762" height="125">
					</td>
				</tr>				
				<tr>
					<td width="247">
						<img src="admin/images/adminlogin_02.gif" width="247" height="180">
					</td>
					<td width="331">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>
									<table width="100%" border="0" cellspacing="4" cellpadding="4">
										<tr align="center">
											<td colspan="2">
												<b>用户登录</b>
											</td>
										</tr>
										<tr>
											<td align="right">
												用户名：
											</td>
											<td>
												<input name="tmusername" type="text" class="textinput"
													id="tmusername" onFocus="this.select(); " maxlength="12">
											</td>
										</tr>
										<tr>
											<td align="right">
												密&nbsp;&nbsp;码：
											</td>
											<td>
												<input name="tmpassword" type="password" class="textinput"
													id="tmpassword" onFocus="this.select(); " maxlength="15">
											</td>
										</tr>
										<tr align="center">
											<td colspan="2">
												<input name="Submit" type="submit" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="登&nbsp;录">
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input name="Submit2" type="reset" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="重&nbsp;置">
													&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" name="back"  class="submitinput" value="注&nbsp;册" onClick="window.location.href='tmusers/TmuserAdd.jsp'"
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
					版权所有：北京交通大学电子信息工程学院
				</td>
			</tr>
		</table>
	</body>
</html>
	  

   
	