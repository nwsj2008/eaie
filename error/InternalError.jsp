<%@ page language="java" import="java.util.*" pageEncoding="GBK" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PageNotFound</title>
	<link href="css/style.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
    <table width="450" border="0" align="center" cellpadding="3" cellspacing="1" class="border" style="margin-top:80px">
    <tr align="center">
      <td class="titlebg">ϵͳ�ڲ�����</td>
    </tr>
    <tr class="tdbg">
      <td align="center">ϵͳ�������ڲ��������Ժ�����</td>
    </tr>
    <tr class="tdbg">
      <td align="center">���������Ȼ���ڣ����뿪����Ա��ϵ��hugo_lian@163.com</td>
    </tr>  
    <tr align="center" class="tdbg">
      <td>
      <input type="button" name="back" class="button" value="��  ��" onclick="history.back"></td>
    </tr>
  </table>
  </body>
</html>