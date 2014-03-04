<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@page import="com.eaie.gcxkxt.gcstudent.GcstudentList"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title>工程硕士信息</title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<base href="<%=basePath%>">

		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script language="JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>
		<Script Language=JavaScript>
		function checkall()     
		{  var num;     
		   num=document.form2.elements.length;     
		        
		   if(document.form2.chkall.checked)     
		   {  var i;     
		      for(i=0;i<num;i++)     
		        if(document.form2.elements[i].type=="checkbox"&&document.form2.elements[i].name!="chkall")     
		           document.form2.elements[i].checked = true;     
		      return true;     
		   }     
		   else   
		   {  var j;     
		      for(i=0;i<num;i++)     
		        if(document.form2.elements[i].type == "checkbox"&&document.form2.elements[i].name!="chkall")     
		           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     
		      return true;     
		   }     
		     
		}     
		</Script>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<body>
		<%!List list;
	String cKeyWords, csearchpart;%>
		<%
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			
			GcstudentList gcstudentList = new GcstudentList();
			list = gcstudentList.getGcstudentList(curPage);

			Page pager = gcstudentList.getCurrentPage();
			Iterator it = list.iterator();
		%>


		<form name="form2" method="post"
			action="admin/gcxkxt/gcxkstudent/GcstudentDaoru.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					
					<td>
					<nobr>
						姓名</nobr>
					</td>
					<td>
					<nobr>
						学号</nobr>
					</td>
					
												
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Gcstudent gcstudent = (Gcstudent) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">			
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>					
							<%=(gcstudent.getName()==null)?"":gcstudent.getName()%>
					</nobr></div>
					</td>
					<td>
					<div style="width: 120px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcstudent.getPwd() == null) ? ""
							: gcstudent.getPwd()%>
							</nobr></div>
					</td>
					
					
				<%
					}
					}
				%>
			</table>	

					
					
				<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe id=d_file frameborder=0 src="upload/uploadxls3.jsp"
							width="650" height="25" scrolling=no frameborder="0" allowtransparency="yes"></iframe>
					</td>
					<td align="right">
					<input type="submit" name="Submit" value="导入数据库">
				&nbsp;&nbsp;				
				</td>
				</tr>
				<tr><td>注意：上传文件类型为xls,包含姓名,学号两列 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" name="Submit2" value="下载模板"
							onClick="location.href='download.jsp'"></td></tr>
			<tr>				
			</table>
		</form>

		<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>