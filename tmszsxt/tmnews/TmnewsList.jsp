<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.tmszsxt.tmnews.TmnewsList"%>
<%@page import="com.eaie.common.Page"%>
<%@page import="com.eaie.dbmanage.Tmnews"%>
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
		<title>����������֪ͨ</title>
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
		 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			TmnewsList clist = new TmnewsList();
			list = clist.getTmnewsList(curPage, csearchpart, cKeyWords);
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
			action="tmszsxt/tmnews/TmnewsDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35" align="center">
						ѡ��
					</td>
					<td width="35" align="center">
						���
					</td>
					<td width="100" align="center">
						����
					</td>
					<td width="80" align="center">
						����ʱ��
					</td>
					<td width="80" align="center">
						����
					</td>

				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Tmnews tmnews = (Tmnews) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="id" type="checkbox" id="id"
							value="<%=tmnews.getId()%>">
					</td>
					
					<td width="35" align="center">
						<%=tmnews.getId()%>
					</td>
					<td width="100" align="center">
						<a href="tmszsxt/tmnews/TmnewsEdit.jsp?id=<%=tmnews.getId()%>"><%=tmnews.getTitle()%></a>
					</td>
					<td width="80"><%=dateFormatStart.format(tmnews.getPubtime())%>
					<td align="center">
						<a href="tmszsxt/tmnews/TmnewsEdit.jsp?id=<%=tmnews.getId()%>">�༭</a>

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
						ѡȡ���е�֪ͨ&nbsp;&nbsp;
						<input type="submit" name="Submit" value="ɾ����ѡ��֪ͨ"
							onclick="{if(confirm('ȷ��ɾ��ѡ�е�֪ͨ��')){return true;}return false;}">
					</td>
	
					<td align="right">
						<input type="button" name="Submit2" value="���������֪ͨ"
							onClick="location.href='TmnewsAdd.jsp'">
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

