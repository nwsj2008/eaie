<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.eaie.gcssxt.gcssstudent.GcssStudentList"%>

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
		<title>硕博连读生申请信息查询</title>
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
			GcssStudentList gcssStudentList = new GcssStudentList();
			list = gcssStudentList.getGcssStudentList(curPage, csearchpart,
					cKeyWords);

			Page pager = gcssStudentList.getCurrentPage();
			Iterator it = list.iterator();
		%>
		<form name="form1" method="post" action="admin/commie/CommieList.jsp">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">

			</table>
		</form>


		<form name="form2" method="post"
			action="admin/gcssxt/gcssstudent/gcssStudentDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">	
					<td width="80">
					<nobr>
						姓名
						</nobr>
					</td>
					<td>
					<nobr>
						身份证
						</nobr>
					</td>
					<td>
					<nobr>
						工程领域</nobr>
					</td>
					<td>
					<nobr>
						GCT成绩</nobr>
					</td>

				
				
					
					
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Gcss gcss = (Gcss) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">	
							
						<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a><%=(gcss.getName()==null)?"":gcss.getName()%></a>
					</nobr></div>
					</td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcss.getSfz() == null) ? ""
							: gcss.getSfz()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcss.getGcly()==null)?"":gcss.getGcly()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcss.getGct()==null)?"":gcss.getGct()%>
					</nobr></div></td>
				
				<%
					}
					}
				%>

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