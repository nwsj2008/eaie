<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<title></title>
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet" type="text/css">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
	

  </head>
  
  <body>
   <div align="left"><br> 
		</div>
		<form name="form1" method="post" action="admin/gcxkxt/gcxkcourse/GccourseList.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						选择年度课程
					</td>
				</tr>
			</table>
			<BR>
			<center> 
				显示 &nbsp;&nbsp;<select name="term" >
				
				<option value="1">2009上</option>
				<option value="2">2009下</option>
				<option value="3">2010上</option>
				<option value="4">2010下</option>
				<option value="5">2011上</option>
				<option value="6">2011下</option>
				<option value="7">2012上</option>
				<option value="8">2012下</option>
				<option value="9">2013上</option>
				<option value="10">2013下</option>
				</select> 
				学期课程 &nbsp; &nbsp; 
				<input type="submit" name="Submit" value="确定">&nbsp;&nbsp;&nbsp;
				</center>
		</form>
  </body>
</html>
