<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@page import="com.eaie.gcxkxt.course.*"%>
<%@page import="com.eaie.gcxkxt.gcteacher.GcteacherList"%>
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
		<title>教师信息查询</title>
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
	%>
		<%
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			
			GcteacherList gcteacherList = new GcteacherList();
			list = gcteacherList.getGcteacherList(curPage);

			Page pager = gcteacherList.getCurrentPage();
			Iterator it = list.iterator();//遍历list
		%>
		<form name="form2" method="post"
			action="admin/gcxkxt/gcxkteacher/GcteacherDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td >
					<nobr>
						选中
						</nobr>
					</td>		
					<td >
					<nobr>
						任课教师
						</nobr>
					</td>	
					<td >
					<nobr>
					密码</nobr>
					</td>		
					
					<td >
					<nobr>
						操作</nobr>
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Gcteacher gcteacher = (Gcteacher) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td>
						<input name="id" type="checkbox" id="id"
							value="<%=gcteacher.getId()%>">
					</td>
					
					
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a
							href="admin/gcxkxt/gcxkteacher/GcteacherEdit.jsp?id=<%=gcteacher.getId()%>"><%=(gcteacher.getName()==null)?"":gcteacher.getName()%></a>
					</nobr>
					</div>
					</td>	
					<td >
					<div style="width: 120px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcteacher.getPwd()==null)?"":gcteacher.getPwd()%>					
					</nobr></div>
					</td>		
					
					
					
					<td >
						<a
							href="admin/gcxkxt/gcxkteacher/GcteacherEdit.jsp?id=<%=gcteacher.getId()%>">编辑</a>
				</tr>
				<%
					}
					}
				%>

			</table>
			<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input name="chkall" type="checkbox" id="chkall" value="checkbox"
							onclick="checkall();">
						选取所有的教师信息&nbsp;&nbsp;
						<input type="submit" name="Submit" value="删除所选的教师信息"
							onclick="{if(confirm('确定删除选中的教师吗？')){return true;}return false;}">
					</td>
					<td align="right">
						<input type="button" name="Submit2" value="添加教师信息"
							onClick="location.href='Newteacher.jsp'">
						&nbsp; &nbsp;
					</td>
				</tr>
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