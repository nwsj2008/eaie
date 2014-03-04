<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>

<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.List"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

		<script language="JavaScript">
	
</script>


		<title>课程信息</title>
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
			if(!isNull("title","课程名称")){			
				return false;
			}	
					
			}			
			</script>	
		  
			
	</head>
	<%
		
		String hql = "From Gcteacher As Gt ";
		List listA = BasicDAO.queryByHql(hql);
	%>
	<body>
		<br>
		<BR>
		<form name="form1" method="post"
			action="admin/gcxkxt/gcxkcourse/GccourseSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						上传课程信息
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						课&nbsp;&nbsp;&nbsp;&nbsp;名：
						<input name="title" type="text" id="title" size="20">
					</td>
					<td>
						任课教师：
						<select name="teacher">
							<%
								for (int j = 0; j < listA.size(); j++) {
									Gcteacher gcteacher = (Gcteacher) listA.get(j);
							%>
							<option value=<%=gcteacher.getName()%>>
								<%=gcteacher.getName()%></option>

								<%
									}
								%>
							
						</select>


					</td>
				</tr>

				<tr class="tdbg">
					<td>
						学&nbsp;&nbsp;&nbsp; 分：
						<input name="credit" type="text" id="credit">
					</td>

					<td>
						教&nbsp;&nbsp;&nbsp; 材：
						<input name="book" type="text">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						年&nbsp;&nbsp;&nbsp; 度：
						<select name = "nian">
						<option value="2009上" selected>2009上</option>
						<option value="2009下">2009下</option>
						<option value="2010上">2010上</option>
						<option value="2010下">2010下</option>
						<option value="2011上">2011上</option>
				        <option value="2011下">2011下</option>
				        <option value="2012上">2012上</option>
				         <option value="2012下">2002下</option>
				        <option value="2013上">2013上</option>
				        <option value="2013下">2013下</option>
						</select>
					</td>
					<td>
						上课时间：
						<input name="shijian" type="text">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						上课地点：&nbsp;
						<input name="place" type="text">
					</td>
					<td>
						考试信息：
						<input name="test" type="text">
					</td>
				</tr>

				<tr class="tdbg">
					<td colspan="2">
						<div style="float: middle">
							备注：
						</div>
						<textarea name="beizhu" rows="4" cols="68"> </textarea>
				</tr>


			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定上传"
					onclick="return formCheck();">
				&nbsp;&nbsp;&nbsp;
				<input type="button" name="back" value="返&nbsp;&nbsp;&nbsp;&nbsp;回"
					onClick="window.location.href='Gcchoose.jsp'">
			</center>
		</form>
	</body>





</html>