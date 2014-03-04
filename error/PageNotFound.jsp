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
      <td class="titlebg">出错了，您访问的页面不存在</td>
    </tr>
    <tr class="tdbg">
      <td align="center">如果您的正确操作没有找到相关页面，请与设计人员联系：</td>
    </tr>
    <tr class="tdbg">
      <td align="center">邮箱：hugo_lian@163.com</td>
    </tr>  
    <tr align="center" class="tdbg">
      <td>
      <input type="button" name="back" class="button" value="返  回" onclick="history.back"></td>
    </tr>
  </table>
  </body>
</html>
