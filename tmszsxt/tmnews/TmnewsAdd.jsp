<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("title","���������")){
				
				return false;
			}
			if(!isNull("content","����������")){
				
				return false;
			}	
		}
</script>
		
		
		<title>���������֪ͨ</title>
		<base href="<%=basePath%>">
		<link href="tmszsxt/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

	<body>
		<form name="myform" id="myform" method="post"
			action="tmszsxt/tmnews/TmnewsSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						���������֪ͨ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;�⣺
					</td>
					<td>
						<input name="title" type="text" id="subject" size="90">
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						��&nbsp;�ݣ�
					</td>
					<td valign="top">
						<INPUT type="hidden" name="content" value="">
						<IFRAME ID="eWebEditor1"
							src="eWebEditor/eWebEditor.jsp?id=content&style=standard"
							frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
					</td>


				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;����
					</td>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp"
							width="650" height="25" scrolling=no frameborder="0"
							allowtransparency="yes"></iframe>
					</td>
				</tr>

				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="��&nbsp;��" onClick="check()">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="��&nbsp;��">
						<input name="filename" type="hidden" id="filename" value="">
						<input name="fileurl" type="hidden" id="fileurl" value="">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>