<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<title>添加学生党员</title>
		<link href="admin_style.css" rel="stylesheet" type="text/css">
		<link href="admin/css/admin_style.css" rel="stylesheet"
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
		<form name="form1" method="post" action="servlet/AddCommie">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						添加学生党员
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>基本信息</strong>
					</td>
					<td>
						学号：
						<input name="stuid" type="text" id="stuid" size="20">
					</td>
					<td>
						班级：
						<input name="banji" type="text" id="banji2" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						姓名：
						<input name="name" type="text" id="name" size="20">
					</td>
					<td>
						性别：
						<input type="radio" name="sex" value="男">
						男
						<input type="radio" name="sex" value="女">
						女
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						初始密码：
						<input name="pwd" type="text" id="pwd" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="2">
						<strong>党员信息</strong>
					</td>
					<td>
						支部名称：
						<input name="branch" type="text" id="branch" size="20">
					</td>
					<td>
						职务：
						<select name="post" id="post">
							<option value="9" selected>
								普通党员
							</option>
							<option value="1">
								书记
							</option>
							<option value="2">
								组委
							</option>
							<option value="3">
								宣委
							</option>
						</select>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						入党时间：
						<input name="addtime" type="text" id="addtime" size="20">
					</td>
					<td>
						是否正式：
						<input name="sfzs" type="checkbox" id="sfzs" value="1">
						<input name="zzsj" type="text" id="zzsj" size="14">
						（转正时间）
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="5">
						<strong>档案信息</strong>
					</td>
					<td>
						入党申请书：
						<input name="rdsqs" type="checkbox" id="rdsqs" value="1">
					</td>
					<td>
						函调：
						<input name="hd" type="checkbox" id="hd" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						入党志愿书：
						<input name="rdzys" type="checkbox" id="rdzys" value="1">
					</td>
					<td>
						自传：
						<input name="zz" type="checkbox" id="zz" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						党课结业证：
						<input name="dkjyz" type="checkbox" id="dkjyz" value="1">
					</td>
					<td>
						半年总结：
						<input name="bnzj" type="checkbox" id="bnzj" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						预备党员考察表：
						<input name="ybdykcb" type="checkbox" id="ybdykcb" value="1">
					</td>
					<td>
						全年总结：
						<input name="qnzj" type="checkbox" id="qnzj" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						转正申请书：
						<input name="zzsqs" type="checkbox" id="zzsqs" value="1">
					</td>
					<td>
						思想汇报：
						<input name="sxhb" type="text" id="sxhb" size="15">
						篇
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30">
						<strong>备注</strong>
					</td>
					<td colspan="2">
						<textarea name="beizhu" cols="40" rows="4" id="beizhu"></textarea>
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
