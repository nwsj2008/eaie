<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<title>上传文件测试</title>
		<style type="text/css">
	<!--
	body {
		background-color: #FEFFED;
	}
	-->
	</style>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">

	</head>
	<body>	
	<form name="myform" method="post" action="admin/news/NewsSave.jsp"
			onSubmit="return CheckForm();">
			<table width="730" border="0" align="left" cellpadding="5"
				cellspacing="0">
				
				<tr>
					<td width="80">
						粘贴附件：
					</td>
					<td>
						<input type=text name="filename" value="">
						<input type=text name="fileurl" value="">
						<input type=text name="filesize" value="">
						<iframe id=d_file frameborder=0 src="upload/upsinglepic.jsp"
							width="650" height="25" scrolling=no frameborder="0"></iframe>
					</td>
				</tr>
				<tr>
					<td width="80">
						添加图片：
					</td>
					<td>
						<input type=text name="imageurl" value="">
						<iframe id=d_pic frameborder=0 src="upload/uploadpic.jsp"
							width="650" 　height="25" scrolling=no frameborder="0" border="0"
							onload="SetWinHeight(this)"></iframe>

					</td>
				</tr>				
			</table>
		</form>	
	</body>
</html>
