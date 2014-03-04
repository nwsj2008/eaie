<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加大类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {
        if(!isNull("className","栏目名称"))
            return false;
        if(!isTooLong("className",40,"栏目名称"))
            return false;
        if(!isNull("bigclassid","栏目编号"))
            return false;
        if(!isTooLong("bigclassid",5,"栏目编号"))
            return false;
        if(!validateDig("bigclassid","栏目编号只能为数字"))
            return false;    
        return true;
    }
    </script>

  </head>
  
  <body>
 
    <form name="addBigClass" method="post" action="servlet/AddBigClass" onSubmit="return checkForm()">
  <table width="450" border="0" align="center" cellpadding="3" cellspacing="1" class="border" style="margin-top:80px">
    <tr align="center">
      <td colspan="2" class="titlebg">添加栏目</td>
    </tr>
    <tr class="tdbg">
      <td align="right">栏目名称：</td>
      <td><input name="className" type="text" id="bigClass" size="30"></td>
    </tr>
    <tr class="tdbg">
      <td align="right">栏目编号：</td>
      <td><input name="bigclassid" type="text" id="bigclassid" size="20"></td>
    </tr>
    <tr align="right" class="tdbg">
      <td colspan="2"><input type="submit" name="Submit" value="确  定" class="button">
      <input type="reset" name="reset" value="取  消" class="button">
      <input type="button" name="back" class="button" value="返  回" onclick="window.location.href='ClassList.jsp'"></td>
    </tr>
  </table>
</form>
</body>
</html>
