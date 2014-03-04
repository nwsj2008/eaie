<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		%>
		<title>��ʦ��¼</title>
		<base href="<%=basePath%>">
		<style type="text/css">
<!--
body,td,th {
	font-size: 9pt;
	color: #FFFFFF;
}
body {
	margin-top: 50px;
	background-color: #0099CC;
}
Input
{
	FONT-SIZE: 9pt;
	HEIGHT: 20px;
}-->
</style>
		<script language="JavaScript" src="js/basicJS.js"></script>
		<script language="JavaScript">
function formCheck()
{
	if(!isNull("name","��ʦ����"))
	{
		return false;
	}	
	if(!isNull("pwd","��¼����"))
	{
		return false;
	}	

}
</script>
	</head>
<%
		//���û���¼	
	if(session.getAttribute("TEACHER")!=null){	
	
		 response.sendRedirect("ProfessorEdit.jsp");
		 
	}
	//û���û���¼
	else{
		String sUserName = request.getParameter("name");
		String sPassWord = request.getParameter("pwd");
		Professor professor;
		if(sUserName!=null&&sPassWord!=null){						
			try{
			 	professor = ProfessorManage.professorLogin(sUserName,sPassWord);
			 	if(professor!=null){	
			 					 		
			 		session.setAttribute("TEACHER",professor);		 		
			 		response.sendRedirect("ProfessorEdit.jsp");
			 	}else{			 	
			 		out.print(JavaScript.alertandBack("��¼ʧ�ܣ���������������!"));
			 	}
			}catch(Exception ex){				
				out.print(JavaScript.alertandBack("��¼ʧ�ܣ���������������!"));				
			}
		}
	}
	
 %>
	<body>
		<form name="form1" method="post" action=""
			onSubmit="return formCheck()">
			<table width="200" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<table width="100%" border="0" cellspacing="2" cellpadding="4">
							<tr align="center">
								<td colspan="2">
									<strong>��ʦ��¼</strong>
								</td>
							</tr>
							<tr>
								<td align="right">
									��&nbsp;��
								</td>
								<td>
									<input name="name" type="text" id="name"
										style="width:100px;border-style:solid;border-width:1;padding-left:4;padding-right:4;padding-top:1;padding-bottom:1"
										onFocus="this.select(); "
										onMouseOver="this.style.background='#E1F4EE';"
										onMouseOut="this.style.background='#FFFFFF'" size="15"
										maxlength="10">
								</td>
							</tr>
							<tr>
								<td align="right">
									��&nbsp;��
								</td>
								<td>
									<input name="pwd" type="password" id="pwd"
										style="width:100px;border-style:solid;border-width:1;padding-left:4;padding-right:4;padding-top:1;padding-bottom:1"
										onFocus="this.select(); "
										onMouseOver="this.style.background='#E1F4EE';"
										onMouseOut="this.style.background='#FFFFFF'" size="15"
										maxlength="15">
								</td>
							</tr>
							<tr align="center">
								<td height="37" colspan="2">
									<input type="submit" name="Submit" value="��¼"
										style="font-size: 9pt; height: 19; width: 60; color: #000000; background-color: #E1F4EE; border: 1 solid #E1F4EE"
										onMouseOver="this.style.backgroundColor='#ffffff'"
										onMouseOut="this.style.backgroundColor='#E1F4EE'">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
