<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
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
		<title>提交个人申请信息</title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet"
			type="text/css">
		  
    <script language="JavaScript" src="js/basicJS.js"></script>
		<script language = "JavaScript">
		function formCheck(){
			if(!isNull("name","姓名")){			
				return false;
			}	
			if(!isNull("tel","电话")){			
				return false;
			}				
			if(!isNull("byschool","毕业学校")){			
				return false;
			}	
			if(!isNull("byspeciality","毕业专业")){			
				return false;
			}	
			if(!isNull("jsacademe","报考学院")){			
				return false;
			}	
			if(!isNull("byschool","毕业学校")){			
				return false;
			}	
			if(!isNull("jsspeciality","报考专业")){			
				return false;
			}	
		}		
		</script>
    
    
	</head>

<%  
  String idString=session.getAttribute("id").toString();
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Tmstudent tmstudent=(Tmstudent)list.get(0);

  
  
 %>
	<body>
		<BR>
		<form name="form1" method="post" action="tmszsxtstudent/stmstudent/StmstudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						提交个人申请信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						<input name="name" type="text" id="name" size="20">
					</td>
					<td>
						联系电话：
						<input name="tel" type="text" id="tel" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						毕业学校：
						<input name="byschool" type="text" id="byschool" size="20">
					</td>
					<td>
						毕业专业：
						<input name="byspeciality" type="text" id="byspeciality" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						报考学院：
						<input name="jsacademe" type="text" id="jsacademe" size="20">
					</td>
					<td>
						报考专业：
						<input name="jsspeciality" type="text" id="jsspeciality" size="20">
					</td>
				</tr>			
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定提交" onclick="return formCheck()">
				&nbsp;&nbsp;&nbsp;
				<input name="Submit2" type="reset" class="submitinput" value="重&nbsp;&nbsp;&nbsp;&nbsp;置">
				
				
			</center>
		</form>
	</body>
			<%
 }
 %>
	
</html>

