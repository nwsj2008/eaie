<%@ page language="java" import="java.util.*,com.eaie.dbmanage.Bigclass" pageEncoding="GBK"%>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加二级分类</title>
    
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
        if(!isNull("smallclassid","栏目编号"))
            return false;
        if(!isTooLong("smallclassid",5,"栏目编号"))
            return false;
        if(!validateDig("smallclassid","栏目编号只能为数字"))
            return false; 
        return true;
    }
    </script>

  </head>
  
  <body>
  <% String bigClass = request.getParameter("bigClass"); 
     String bigClassId = request.getParameter("bigClassId"); 
  %>
    <form name="addSmallClass" method="post" action="servlet/AddSmallClass" onSubmit="return checkForm()">
  <table width="450" border="0" align="center" cellpadding="3" cellspacing="1" class="border" style="margin-top:80px">
    <tr align="center">
      <td colspan="2" class="titlebg">添加二级分类</td>
    </tr>
    <tr class="tdbg">
      <td align="right">栏目名称：</td>
      <td><%=bigClass%></td>
    </tr>
    <tr class="tdbg">
      <td align="right">分类名称：</td>
      <td><input name="className" type="text" id="smallClass" size="30"></td>
    </tr>
    <tr class="tdbg">
      <td align="right">分类编号：</td>
      <td><input name="smallclassid" type="text" id="smallclassid" size="20"></td>
    </tr>
    <tr align="right" class="tdbg">
      <td colspan="2"><input name="bigClassId" type="hidden" id="bigClassId" value="<%=bigClassId%>">
      <input type="submit" name="Submit" class="button" value="确  定">
      <input type="reset" name="reset" class="button" value="取  消">
      <input type="button" name="back" class="button" value="返  回" onClick="window.location.href='ClassList.jsp'">
      </td>
    </tr>
  </table>
</form>
  </body>
</html>
