<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>������ͨ��ѧ������Ϣ����ѧԺ</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
%>
<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
		
		
   <table width="100%"  border="0" cellspacing="0" cellpadding="8">
  <tr>
    <td align="center"><span class="style1">��������</span></td>
  </tr>
</table>
<table width="400"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#999999">
  <tr bgcolor="#FFFFFF" class="maintext">
    <td width="100" rowspan="4" align="center">�������</td>
    <td><a class=news href="ShowContent.jsp?id=52&type=1">ѧԺ�칫��</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=53&type=1">��ѧ�칫��</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=54&type=1">�������о����칫��</a></td>
  </tr>

  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=56&type=1">ѧ�������칫��</a></td>
  </tr>
  <tr bgcolor="#FFFFFF" class="maintext">
    <td width="100" rowspan="5" align="center">��������</td>
    <td class="maintext"><a class=news href="ShowContent.jsp?id=29&type=1">��Ϣ��ͨ�Ź���ϵ</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=30&type=1">�Զ����ƹ���ϵ</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=31&type=1">���ӹ���ϵ</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=50&type=1">�Ⲩ�����о���</a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td class="maintext"><a class=news href="ShowContent.jsp?id=51&type=1">���ҵ繤���ӽ�ѧ����</a></td>
  </tr>
</table>

</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>
  </body>
</html>
