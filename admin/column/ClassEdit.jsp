<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.column.ClassImp" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>栏目编辑</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	 
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {
        if(!isNull("className","栏目"))
            return false;
        if(!isTooLong("className",40,"栏目"))
            return false;          
        if(!isNull("classid","栏目编号"))
            return false;
        if(!isTooLong("classid",5,"栏目编号"))
            return false;
        if(!validateDig("classid","栏目编号只能为数字"))
            return false; 
        return true;
    }
    </script>

  </head>
  
  <body>
  <% String name = request.getParameter("name"); 
     String id = request.getParameter("id");
     String table = request.getParameter("table");
     int classid = ClassImp.getClassId(id,table);

  %>
  
  <form name="EditClass" method="post" action="servlet/EditClass" onSubmit="return checkForm()">
  <table width="450" border="0" align="center" cellpadding="3" cellspacing="1" class="border" style="margin-top:80px">
    <tr align="center">
      <td colspan="2" class="titlebg">栏目编辑</td>
    </tr>
    <tr class="tdbg">
      <td align="right">栏目名称：</td>
      <td><input name="className" type="text" id="class" size="30" value=<%=name%>></td>
    </tr>
    <tr class="tdbg">
      <td align="right">栏目编号：</td>
      <td><input name="classid" type="text" id="classid" size="20" value="<%=classid==-1?"":classid%>"></td>
    </tr>
    <tr align="right" class="tdbg">
      <td colspan="2">
      <input type="hidden" name="id" value=<%=id %>>
      <input type="hidden" name="table" value=<%=table %>>
      <input type="submit" name="Submit" value="确  定" class="button" onClick="{if(confirm('请确定您输入的栏目编号与其他所有栏目编号不重复,否则系统可能会产生严重错误,您要继续提交么?')){return true;}return false;}">
      <input type="reset" name="reset" value="取  消" class="button">
      <input type="button" name="back" class="button" value="返  回" onclick="window.location.href='ClassList.jsp'">
      </td>
    </tr>
  </table>
  </form>
  </body>
</html>
