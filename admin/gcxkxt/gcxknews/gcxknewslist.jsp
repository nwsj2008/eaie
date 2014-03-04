<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.gcxkxt.gcxknews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.common.Page"%>
<%@page import="com.eaie.dbmanage.*"%>
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
		<title>所有工程硕士通知</title>
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
		 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			gcxknewslist clist = new gcxknewslist();
			list = clist.getGcxknewslist(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
		%>
		<form name="form1" method="post" action="admin/commie/CommieList.jsp">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td class="tdbg">
						<table width="100%" border="0" align="center" cellpadding="4"
							cellspacing="0">
						</table>
					</td>
				</tr>
			</table>
		</form>


		<form name="form2" method="post"
			action="admin/gcxkxt/gcxknews/gcxknewsdel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
						选中
					</td>
					<td width="35">
						序号
					</td>
					<td>
						标题
					</td>
					<td>
						发布时间
					</td>
					<td>
						操作
					</td>

				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Gcxknews gcxknews = (Gcxknews) list.get(i);
				%>

				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="id" type="checkbox" id="id"
							value="<%=gcxknews.getId()%>">
					</td>
					
					<td width="35">
						<%=i+1%>
					</td>
					<td>
						<a href="admin/gcxkxt/gcxknews/gcxknewsedit.jsp?id=<%=gcxknews.getId()%>"><%=gcxknews.getTitle()%></a>
					</td>
					<td><%=dateFormatStart.format(gcxknews.getPubtime())%>
					<td align="center">
						<a href="admin/gcxkxt/gcxknews/gcxknewsedit.jsp?id=<%=gcxknews.getId()%>">编辑</a>

						<%
							}
							}
						%>
						</td>
						</tr>
						
					
			</table>
			<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input name="chkall" type="checkbox" id="chkall" value="checkbox"
							onclick="checkall();">
						选取所有的通知&nbsp;&nbsp;
						<input type="submit" name="Submit" value="删除所选的通知"
							onclick="{if(confirm('确定删除选中的通知吗？')){return true;}return false;}">
					</td>
	
					<td align="right">
						<input type="button" name="Submit2" value="添加工程硕士通知"
							onClick="location.href='gcxknewsadd.jsp'">
						&nbsp; &nbsp;
					</td>
					

				</tr>
			</table>
		</form>


		<form name="pageForm" action="">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<input type="hidden" id="keyword" name="keyword"
							value=<%=cKeyWords == null ? "" : cKeyWords%>>
						<input type="hidden" id="keyword" name="type"
							value=<%=csearchpart == null ? "" : csearchpart%>>
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
