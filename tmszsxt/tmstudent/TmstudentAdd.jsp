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
		<title>���������</title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<link href="tmszsxt/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="javascript" src="js/basicJS.js"></script>
		<script language="javascript">
    function checkForm()
    {
        if(!isNull("name","����"))
            return false;
        if(!isNull("branch","��֧��"))
            return false;        
        if(!isNull("stuid","ѧ��"))
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
						���������
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>������Ϣ</strong>
					</td>
					
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						<input name="name" type="text" id="name" size="20">
					</td>
					<td>
						��ϵ�绰��
						<input name="tel" type="text" id="tel" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ҵѧУ��
						<input name="byschool" type="text" id="byschool" size="20">
					</td>
					<td>
						��ҵרҵ��
						<input name="byspeciality" type="text" id="byspeciality" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						����ѧԺ��
						<input name="jsacademe" type="text" id="jsacademe" size="20">
					</td>
					<td>
						����רҵ��
						<input name="jsspeciality" type="text" id="jsspeciality" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="2">
						<strong>¼ȡ��Ϣ</strong>
					</td>				
					<td>
						���Գɼ���
						<input name="fushiresult" type="text" id="fushiresult" size="20">
					</td>
					<td>
						����֪ͨ��
						<input name="shenheresult" type="text" id="shenheresult" size="20">
					</td>									
				</tr>
				<tr class="tdbg">
					<td>
						¼ȡ�����
						<input name="sflq" type="text" id="sflq" size="20">
					</td>
					<td>
						��ʦ��Ϣ��
						<input name="teacher" type="text" id="teacher" size="20">
					</td>
				</tr>
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ�����">
			</center>
		</form>
	</body>
</html>

