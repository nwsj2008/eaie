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
      <td class="titlebg">ϵͳ����</td>
    </tr>
    <tr class="tdbg">
      <td align="center">��Ĳ��������˴���</td>
    </tr>
    <tr class="tdbg">
      <td align="center">����ԭ��<%=exception.getLocalizedMessage() %></td>
    </tr>
    <tr class="tdbg">
      <td align="center">�������һֱ���ڣ��뽫���д��븴��ճ�����ʼ��У��������Ա��ϵ��hugo_lian@163.com</td>
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
      <input type="button" name="back" class="button" value="��  ��" onclick="history.back"></td>
    </tr>
  </table>
  </body>
</html>