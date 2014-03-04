<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.tmusers.*" %>
<%@ page import="com.eaie.tmszsxt.*" %>
<%@ page import="com.eaie.tools.*"%>
<%!List list;
	String cKeyWords, csearchpart;%>
		<%

  int id=1;
  List list=BasicDAO.queryByHql("From Tmopen tmopen where tmopen.id='"+id+"'");
							Tmopen tmopen = (Tmopen) list.get(0);
							if(tmopen.getOpenxt().equals("0")){
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
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		
		

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
		function CheckForm(){	
		     
			 if(!isNull("tmusername","用户名"))
			 {
			 	return false;
			 }			
			 if(!isNull("pwd","密码"))
			 {
			 	return false;
			 }
			 if(!isNull("pwd2","重复密码"))
			 {
			 	return false;
			 }
			 if(!isEqual("pwd","pwd2","两次输入密码不一致！"))
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
	
	<form name="userform" method="post" action="tmszsxtstudentnew/tmusers/TmuserSave.jsp"
			onSubmit="return CheckForm()">
			<table width="762" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td colspan="3">
						<img src="admin/images/adminlogin_06.gif" width="762" height="125">
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
												<b>用户注册</b>
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
												初始密码：
											</td>
											<td>
												<input name="pwd" type="password" class="textinput"
													id="pwd" onFocus="this.select(); " maxlength="15">
											</td>
										</tr>
										
										
										<tr>
											<td align="right">
												重复密码：
											</td>
											<td>
												<input name="pwd2" type="password" class="textinput"
													id="pwd2" onFocus="this.select(); " maxlength="15">
											</td>
										</tr>
										
										<tr class="tdbg">
					
										
										
										
										<tr align="center">
											<td colspan="2">
												<input name="Submit" type="submit" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="确&nbsp;定">
												&nbsp;&nbsp;&nbsp;
												<input name="Submit2" type="reset" class="submitinput"
													onMouseOver="this.style.backgroundColor='#ffffff'"
													onMouseOut="this.style.backgroundColor='#E1F4EE'"
													value="重&nbsp;置">
					
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
	  
			<%
			
				%>

   
	