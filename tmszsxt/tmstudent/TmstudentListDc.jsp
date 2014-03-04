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
		<title>推免生信息列表</title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<base href="<%=basePath%>">

		<link href="tmszsxt/tm_style.css" rel="stylesheet"
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
			action="tmszsxt/tmstudent/TmstudentDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
						序号
					</td>
					<td width="80">
						姓名
					</td>
					<td>
						毕业学校
					</td>
					<td width="80">
						毕业专业
					</td>
					<td>
						接收学院
					</td>
					<td>
						接收专业
					</td>
					<td>
						联系电话
					</td>
					<td>
						复试成绩
					</td>
					<td>
						考核通知
					</td>
					<td>
						录取通知
					</td>
					<td>
						导师信息
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
					<td>
						<%=tmstudent.getId()%>
					</td>
					<td width="50">
					    <%=tmstudent.getName()%>
					</td>
					<td>
						<%=(tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool()%>
					</td>
					<td>
						<%=(tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality()%>
					</td>
					<td>
						<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>
					</td>
					<td>
						<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>
					</td>
					<td>
						<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>

					</td>
					<td>
						<%=(tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult()%>
					</td>
					<td>
						<%=(tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult()%>
					</td>
					<td>
						<%=(tmstudent.getSflq()==null)?"":tmstudent.getSflq()%>
					</td>
					<td>
						<%=(tmstudent.getTeacher()==null)?"":tmstudent.getTeacher()%>
					</td>
				</tr>
				<%
					}
					}
				%>

			</table>
			<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td align="right">
						<input type="button" name="Submit2" value="导出Excel列表"
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