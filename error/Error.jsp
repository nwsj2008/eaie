<%@ page language="java" import="java.io.*" pageEncoding="GBK" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>UnkownError</title>
	<link href="css/style.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
    <table width="450" border="0" align="center" cellpadding="3" cellspacing="1" class="border" style="margin-top:80px">
    <tr align="center">
      <td class="titlebg">系统错误</td>
    </tr>
    <tr class="tdbg">
      <td align="center">你的操作发生了错误</td>
    </tr>
    <tr class="tdbg">
      <td align="center">错误原因：<%=exception.getLocalizedMessage() %></td>
    </tr>
    <tr class="tdbg">
      <td align="center">如果错误一直存在，请将下列代码复制粘贴到邮件中，与设计人员联系：hugo_lian@163.com</td>
    </tr>
    <% StringWriter sw = new StringWriter();
       PrintWriter pw = new PrintWriter(sw);
       exception.printStackTrace(pw);   
     %>
     <tr class="tdbg">
      <td align="center"><textarea rows="15" cols="55"><% out.println(sw); %></textarea></td>
    </tr>
    <tr align="center" class="tdbg">
      <td>
      <input type="button" name="back" class="button" value="返  回" onclick="history.back"></td>
    </tr>
  </table>
  </body>
</html>