<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.eaie.tmszsxt.tmstudent.TmstudentList"%>
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
		<title>推免生信息查询</title>
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
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			TmstudentList tmstudentList = new TmstudentList();
			list = tmstudentList.getTmstudentList(curPage, csearchpart,
					cKeyWords);

			Page pager = tmstudentList.getCurrentPage();
			Iterator it = list.iterator();
		%>
		<form name="form1" method="post" action="admin/commie/CommieList.jsp">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">

			</table>
		</form>


		<form name="form2" method="post"
			action="admin/tmszsxt/tmstudent/TmstudentDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
					<nobr>
						选中
						</nobr>
					</td>		
						
					<td width="80">
					<nobr>
						姓名
						</nobr>
					</td>			
					<td>
					<nobr>
						毕业学校
						</nobr>
					</td>				
					<td>
					<nobr>
						复试成绩</nobr>
					</td>
					<td>
					<nobr>
						考核通知</nobr>
					</td>
					<td>
					<nobr>
						录取结果</nobr>
					</td>
					<td>
					<nobr>
						导师信息</nobr>
					</td>
					<td>
					<nobr>
						操作</nobr>
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Tmstudent tmstudent = (Tmstudent) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="id" type="checkbox" id="id"
							value="<%=tmstudent.getId()%>">
					</td>
					
					<td width="80">
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a
							href="admin/tmszsxt/tmstudent/TmstudentEdit.jsp?id=<%=tmstudent.getId()%>"><%=(tmstudent.getName()==null)?"":tmstudent.getName()%></a>
					</nobr>
					</div>
					</td>		
					<td><div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getByschool()==null)?"":tmstudent.getByschool()%>
						</nobr></div>
					</td>	
					<td><div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult()%>
						</nobr></div>
					</td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult()%>					
					</nobr></div>
					</td>
					<td><div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getSflq()==null)?"":tmstudent.getSflq()%>
						</nobr></div>
					</td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getTeacher()==null)?"":tmstudent.getTeacher()%>
					</nobr></div></td>
					<td align="center">
						<a
							href="admin/tmszsxt/tmstudent/TmstudentEdit.jsp?id=<%=tmstudent.getId()%>">编辑</a>
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
						选取所有的推免生&nbsp;&nbsp;
						<input type="submit" name="Submit" value="删除所选的推免生"
							onclick="{if(confirm('确定删除选中的推免生吗？')){return true;}return false;}">


					</td>
					<td align="right">
						<input type="button" name="Submit2" value="添加推免生"
							onClick="location.href='TmstudentAdd.jsp'">
						&nbsp; &nbsp;
					</td>




				</tr>
			</table>
		</form>

		<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<input type="hidden" id="keyword" name="keyword"
							value=<%=cKeyWords == null ? "" : cKeyWords%>>
						<input type="hidden" id="keyword" name="searchpart"
							value=<%=csearchpart == null ? "" : csearchpart%>>
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>