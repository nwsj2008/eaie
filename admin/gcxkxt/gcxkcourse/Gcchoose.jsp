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
						ѡ����ȿγ�
					</td>
				</tr>
			</table>
			<BR>
			<center> 
				��ʾ &nbsp;&nbsp;<select name="term" >
				
				<option value="1">2009��</option>
				<option value="2">2009��</option>
				<option value="3">2010��</option>
				<option value="4">2010��</option>
				<option value="5">2011��</option>
				<option value="6">2011��</option>
				<option value="7">2012��</option>
				<option value="8">2012��</option>
				<option value="9">2013��</option>
				<option value="10">2013��</option>
				</select> 
				ѧ�ڿγ� &nbsp; &nbsp; 
				<input type="submit" name="Submit" value="ȷ��">&nbsp;&nbsp;&nbsp;
				</center>
		</form>
  </body>
</html>
