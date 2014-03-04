<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<title>添加推免生</title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<link href="tmszsxt/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="javascript" src="js/basicJS.js"></script>
		<script language="javascript">
    function checkForm()
    {
        if(!isNull("name","姓名"))
            return false;
        if(!isNull("branch","党支部"))
            return false;        
        if(!isNull("stuid","学号"))
            return false;
        return true;
    }
    </script>
	</head>

	<body>
		<BR>
		<form name="form1" method="post" action="tmszsxt/tmstudent/TmstudentSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						添加推免生
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>基本信息</strong>
					</td>
					
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						<input name="name" type="text" id="name" size="20">
					</td>
					<td>
						联系电话：
						<input name="tel" type="text" id="tel" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						毕业学校：
						<input name="byschool" type="text" id="byschool" size="20">
					</td>
					<td>
						毕业专业：
						<input name="byspeciality" type="text" id="byspeciality" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						接收学院：
						<input name="jsacademe" type="text" id="jsacademe" size="20">
					</td>
					<td>
						接收专业：
						<input name="jsspeciality" type="text" id="jsspeciality" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="2">
						<strong>录取信息</strong>
					</td>				
					<td>
						复试成绩：
						<input name="fushiresult" type="text" id="fushiresult" size="20">
					</td>
					<td>
						考核通知：
						<input name="shenheresult" type="text" id="shenheresult" size="20">
					</td>									
				</tr>
				<tr class="tdbg">
					<td>
						录取结果：
						<input name="sflq" type="text" id="sflq" size="20">
					</td>
					<td>
						导师信息：
						<input name="teacher" type="text" id="teacher" size="20">
					</td>
				</tr>
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定添加">
			</center>
		</form>
	</body>
</html>

