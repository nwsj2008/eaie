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
    
    <title>��Ŀ�༭</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	 
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {
        if(!isNull("className","��Ŀ"))
            return false;
        if(!isTooLong("className",40,"��Ŀ"))
            return false;          
        if(!isNull("classid","��Ŀ���"))
            return false;
        if(!isTooLong("classid",5,"��Ŀ���"))
            return false;
        if(!validateDig("classid","��Ŀ���ֻ��Ϊ����"))
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
      <td colspan="2" class="titlebg">��Ŀ�༭</td>
    </tr>
    <tr class="tdbg">
      <td align="right">��Ŀ���ƣ�</td>
      <td><input name="className" type="text" id="class" size="30" value=<%=name%>></td>
    </tr>
    <tr class="tdbg">
      <td align="right">��Ŀ��ţ�</td>
      <td><input name="classid" type="text" id="classid" size="20" value="<%=classid==-1?"":classid%>"></td>
    </tr>
    <tr align="right" class="tdbg">
      <td colspan="2">
      <input type="hidden" name="id" value=<%=id %>>
      <input type="hidden" name="table" value=<%=table %>>
      <input type="submit" name="Submit" value="ȷ  ��" class="button" onClick="{if(confirm('��ȷ�����������Ŀ���������������Ŀ��Ų��ظ�,����ϵͳ���ܻ�������ش���,��Ҫ�����ύô?')){return true;}return false;}">
      <input type="reset" name="reset" value="ȡ  ��" class="button">
      <input type="button" name="back" class="button" value="��  ��" onclick="window.location.href='ClassList.jsp'">
      </td>
    </tr>
  </table>
  </form>
  </body>
</html>
