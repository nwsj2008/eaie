<%@ page language="java" contentType="text/html"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">	
		<title>添加博士生通知</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">	
		<script language="JavaScript" src="js/basicJS.js"></script>
		<script language = "JavaScript">
		function formCheck(){
			if(!isNull("title","标题")){			
				return false;
			}				
		}		
		</script>
	</head>

	<body>
		<form name="myform" id="myform" method="post"
			action="admin/bszsxt/bsnews/BsnewsSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						添加博士生通知
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						标&nbsp;题：
					</td>
					<td>
						<input name="title" type="text" id="title" size="90">
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						内&nbsp;容：
					</td>
					<td valign="top">
						<INPUT type="hidden" name="content">
						<IFRAME ID="eWebEditor1"
							src="eWebEditor/eWebEditor.jsp?id=content&style=standard"
							frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
					</td>


				</tr>
				<tr class="tdbg">
					<td>
						附&nbsp;件：
					</td>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp"
							width="650" height="25" scrolling=no frameborder="0" allowtransparency="yes"></iframe>
					</td>
				
				</tr>

				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="添&nbsp;加" onclick="return formCheck()">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="重&nbsp;置">					
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>