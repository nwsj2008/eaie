<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.bszsxt.bsstudent.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%Bsstudent bsstudent; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
	
</script>
		
		
		<title>博士生信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
		<script language=javascript> 
		   function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"不能为空!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  	
		function formCheck(){
			//return false;
			if(!isNull("name","姓名")){			
				return false;
			}	
			if(!isNull("pwd","身份证号")){			
				return false;
			}		
			}			
			</script>	
	</head>

    <body>
		<BR>
		<form name="form1" method="post" action="admin/bszsxt/bsstudent/BsstudentSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
					上传博士生信息
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						<input name="name" type="text" id="name" size="20" >
					</td>
					<td>
						身份证号：
						<input name="pwd" type="text" id="pwd" size="20" >
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					报考专业：
						<input name="bkzy" type="text">	
						</td>	
				
					<td >
				报考导师：
					<input name="bkds" type="text">	
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				总&nbsp;&nbsp;&nbsp; 分： 
				<input name="zongfen" type="text">	
						</td >
						<td>
						外语成绩：
					<input name="waiyu" type="text">
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						业务课1：&nbsp; 
			<input name="yewu1" type="text" >
						</td>	
				<td> 
                     业务课2：&nbsp; 
					<input name="yewu2" type="text">
				</td>	
			</tr>		
			     <tr class="tdbg">
					<td >
						录取导师：
				<input name="lqds" type="text">	
						</td>	
				
					<td >
                     录取类别：
                  <input name="lqlb" type="text">	
						</td>			
				</tr>
					<tr class="tdbg">
					<td colspan="2">
					<div style="float:middle">
						面试通知：
						</div>
						<textarea name="mstz" rows="4" cols="62"> </textarea>			
				</tr>
				
				 
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定上传" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='BsstudentListbj.jsp'">
			</center>
		</form>
	</body>
  

	


</html>