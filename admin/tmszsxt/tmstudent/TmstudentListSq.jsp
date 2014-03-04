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
		<title>推免生申请信息查询</title>
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
					<td>
					<nobr>
						用户名</nobr>
					</td>
					<td>
					<nobr>
						姓名</nobr>
					</td>
					<td>
					<nobr>
						毕业学校</nobr>
					</td>
					<td>
					<nobr>
						毕业专业</nobr>
					</td>
					<td>
					<nobr>
						接收学院</nobr>
					</td>
					<td>
					<nobr>
						接收专业</nobr>
					</td>
					<td>
					<nobr>
						联系电话</nobr>
					</td>
					<td>
					<nobr>
						四级成绩</nobr>
					</td>
					<td>
					<nobr>
						六级成绩</nobr>
					</td>
					<td>
					<nobr>
						专业排名</nobr>
					</td>
					<td>
					<nobr>
						专业人数</nobr>
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
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getUsername()==null)?"":tmstudent.getUsername()%>
					</nobr></div>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a
							href="admin/tmszsxt/tmstudent/TmstudentEdit.jsp?id=<%=tmstudent.getId()%>"><%=(tmstudent.getName()==null)?"":tmstudent.getName()%></a>
					</nobr></div>
					</td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>
					</nobr></div></td>		
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getSiji()==null)?"":tmstudent.getSiji()%>
					</nobr></div></td>			
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getLiuji()==null)?"":tmstudent.getLiuji()%>
					</nobr></div></td>		
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getZypm()==null)?"":tmstudent.getZypm()%>
					</nobr></div></td>		
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tmstudent.getZyrs()==null)?"":tmstudent.getZyrs()%>
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