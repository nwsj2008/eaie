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
		<title>���ѧ����Ա</title>
		<link href="admin_style.css" rel="stylesheet" type="text/css">
		<link href="admin/css/admin_style.css" rel="stylesheet"
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
		<form name="form1" method="post" action="servlet/AddCommie">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						���ѧ����Ա
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>������Ϣ</strong>
					</td>
					<td>
						ѧ�ţ�
						<input name="stuid" type="text" id="stuid" size="20">
					</td>
					<td>
						�༶��
						<input name="banji" type="text" id="banji2" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						������
						<input name="name" type="text" id="name" size="20">
					</td>
					<td>
						�Ա�
						<input type="radio" name="sex" value="��">
						��
						<input type="radio" name="sex" value="Ů">
						Ů
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						��ʼ���룺
						<input name="pwd" type="text" id="pwd" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="2">
						<strong>��Ա��Ϣ</strong>
					</td>
					<td>
						֧�����ƣ�
						<input name="branch" type="text" id="branch" size="20">
					</td>
					<td>
						ְ��
						<select name="post" id="post">
							<option value="9" selected>
								��ͨ��Ա
							</option>
							<option value="1">
								���
							</option>
							<option value="2">
								��ί
							</option>
							<option value="3">
								��ί
							</option>
						</select>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�뵳ʱ�䣺
						<input name="addtime" type="text" id="addtime" size="20">
					</td>
					<td>
						�Ƿ���ʽ��
						<input name="sfzs" type="checkbox" id="sfzs" value="1">
						<input name="zzsj" type="text" id="zzsj" size="14">
						��ת��ʱ�䣩
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="5">
						<strong>������Ϣ</strong>
					</td>
					<td>
						�뵳�����飺
						<input name="rdsqs" type="checkbox" id="rdsqs" value="1">
					</td>
					<td>
						������
						<input name="hd" type="checkbox" id="hd" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�뵳־Ը�飺
						<input name="rdzys" type="checkbox" id="rdzys" value="1">
					</td>
					<td>
						�Դ���
						<input name="zz" type="checkbox" id="zz" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						���ν�ҵ֤��
						<input name="dkjyz" type="checkbox" id="dkjyz" value="1">
					</td>
					<td>
						�����ܽ᣺
						<input name="bnzj" type="checkbox" id="bnzj" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						Ԥ����Ա�����
						<input name="ybdykcb" type="checkbox" id="ybdykcb" value="1">
					</td>
					<td>
						ȫ���ܽ᣺
						<input name="qnzj" type="checkbox" id="qnzj" value="1">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						ת�������飺
						<input name="zzsqs" type="checkbox" id="zzsqs" value="1">
					</td>
					<td>
						˼��㱨��
						<input name="sxhb" type="text" id="sxhb" size="15">
						ƪ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30">
						<strong>��ע</strong>
					</td>
					<td colspan="2">
						<textarea name="beizhu" cols="40" rows="4" id="beizhu"></textarea>
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
