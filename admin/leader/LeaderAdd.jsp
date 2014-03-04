<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<base href="<%=basePath%>">
		<title>添加领导信息</title>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/basicJS.js"></script>
		<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("name","领导姓名")){
				
				return false;
			}
			if(!isNull("post","职务")){
				
				return false;
			}
			if(!validateDig("postid","职务编号不合法")){
				
				var tel = document.getElementById("postid");
				tel.focus();
				tel.value="";
				return false;
			}		
			if(!isTooLong("charge",50,"主要职责")){				
				return false;
			}			
			if(document.getElementById("email").value !='')	
			{
				if(!isEmail("email")){
				
					return false;
				}	
			}				
		
		}
</script>
	</head>

	<body>
		<form name="myform" method="post" action="servlet/AddLeader" onSubmit="return formCheck()">
			<table width="500" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center">
					<td colspan="2" class="titlebg">
						添加领导
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
					</td>
					<td>
						<input name="name" type="text" id="name" maxlength="4">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						职&nbsp;&nbsp;&nbsp;&nbsp;务：
					</td>
					<td>
						<input name="post" type="text" id="post" maxlength="10">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						职务编号：
					</td>
					<td>
						<input name="postid" type="text" id="postid" maxlength="10">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						办公地址：
					</td>
					<td>
						<input name="address" type="text" id="address" size="40" maxlength="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						联系电话：
					</td>
					<td>
						<input name="tel" type="text" id="tel" size="40" maxlength="15">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						电子邮箱：
					</td>
					<td>
						<input name="email" type="text" id="email" size="40" maxlength="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						主要职责：
					</td>
					<td>
						<textarea name="charge" cols="40" rows="4" id="charge"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						上传照片：
					</td>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe name="uploadpic" src="upload/upsinglepic.jsp" marginWidth=0
							marginHeight=3 frameborder=0 width="320" height="25" scrolling=no
							framespacing=0 allowtransparency="yes"></iframe>
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="添&nbsp;加">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="重&nbsp;置">					
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
