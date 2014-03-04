<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.sbld.*" %>
<%@ page import="com.eaie.tools.*"%>
<%@page import="org.apache.jsp.sbldstudent.sbldLogin_jsp"%>
<%!List list;
	String cKeyWords, csearchpart;%>
		<%

  
  int id =1 ;
 
  
    Sbopen sbopen = (Sbopen)BasicDAO.queryById(Sbopen.class,id);
  //List list=BasicDAO.queryByHql("From Sbopen sbopen where sbopen.id='"+id+"'");
							//Sbopen sbopen = (Sbopen) list.get(0);
							if(sbopen.getOpenxt().equals("0")){
							try {
             out.println(JavaScript.alertandBack("现在不能注册！"));
             
	  } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();	
	}
		
				}
	
				%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
		<title>用户注册</title>
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
		<base href="<%=basePath%>">
		<script language="javascript" src="js/basicJS.js"></script>
		<script type="text/javascript">   	
		function SetFocus()
			{
			if (document.Login.sbldusername.evalue=="")
				document.Login.sbldusername.focus();
			else
				document.Login.sbldusername.select();
			}
			function CheckForm()
			{
				if(document.Login.sbldusername.value=="")
				{
					alert("请输入用户名！");
					document.Login.sbldusername.focus();
					return false;
				}
				if(document.Login.sbldpassword.value == "")
				{
					alert("请输入密码！");
					document.Login.sbldpassword.focus();
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
			
		function CheckForm(){	
		     
			 if(!isNull("sbldusername","用户名"))
			 {
			 	return false;
			 }			
			 if(!isNull("sbldpassword","密码"))
			 {
			 	return false;
			 }
			 if(!isNull("sbldpassword2","重复密码"))
			 {
			 	return false;
			 }
			 if(!isEqual("sbldpassword","sbldpassword2","两次输入密码不一致！"))
			 {
			 	return false;
			 }	
			 var num; 
			 var flag = false;    
   			 num=document.userform.elements.length
			 for(var i=0;i<num;i++){     
				if(document.userform.elements[i].type=="checkbox"&&document.userform.elements[i].name!="isadmin"){     
				   if(document.userform.elements[i].checked ==true){
				   	 flag = true;
				   }
				}  		
			 }		
		} 
		</script>
  </head>
  
<body>
		<form name="Login" method="post" action="sbldstudent/sbldUsers/sbldUserSave.jsp"
			onSubmit="return CheckForm();" >
			<table width="331" border="0" align="center" cellpadding="0"
				cellspacing="0">	
				<tr>
					<td colspan="3">
						<img src="admin/images/sbld.gif" width="762" height="125">
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
												<b>用户注册</b>
											</td>
										</tr>
											<tr>
											<td align="right">
												用户名：
											</td>
											<td>
												<input name="sbldusername" type="text" class="textinput"
													id="sbldusername" onFocus="this.select(); " maxlength="12">
											</td>
										</tr>
										<tr>
											<td align="right">
												初始密码：
											</td>
											<td>
												<input name="sbldpassword" type="password" class="textinput"
													id="sbldpassword" onFocus="this.select(); " maxlength="15">
											</td>
										</tr>
										<tr>
											<td align="right">
												确认密码：
											</td>
											<td>
												<input name="sbldpassword2" type="password" class="textinput"
													id="sbldpassword2" onFocus="this.select(); " maxlength="15">
											</td>
										</tr>
										<tr align="center">
											<td colspan="2">
												<input name="Submit" type="submit" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="注&nbsp;册">
													&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="reset" name="back"  class="submitinput" value="重&nbsp;置" 
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
