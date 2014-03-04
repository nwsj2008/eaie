<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@page import="com.eaie.gcxkxt.gcxkinfo.GcinfoList"%>
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
		<title>选课信息查询</title>
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

		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<body>
		
		<%
			String nian="";
		int Nian = Integer.parseInt(request.getParameter("term"));
		switch(Nian){
		case 1: 
		     nian = "2009上";
		     break;
		case 2: 
		    nian = "2009下";
		     break;
		case 3: 
		    nian = "2010上";
		     break;
		case 4: 
		    nian = "2010下";
		     break;
		case 5: 
		     nian = "2011上";
		     break;
		case 6: 
		     nian = "2011下";
		     break;
		case 7: 
		     nian = "2012上";
		     break;
		case 8: 
		     nian = "2012下";
		     break;
		case 9: 
		     nian = "2013上";
		     break;
		case 10: 
		     nian = "2013下";
		     break;                                        
		}
		
		 %>
		

		<table width="100%" border="0" align="center" cellpadding="2"
			cellspacing="1" class="border">

			<tr align="center" class="titlebg">
				<td>
					<nobr>
						课程名称
					</nobr>
				</td>
				<td>
					<nobr>
						授课教师
					</nobr>
				</td>
				<td>
					<nobr>
						选课人数
					</nobr>
				</td>
				<td>
					<nobr>
						查看选课人员名单
					</nobr>
				</td>
			</tr>
			<%
				//String hsql = "select DISTINCT tid from Gcxk";
				List list = BasicDAO.queryByHql("From Gccourse gk where gk.nian='"+nian+"'"); //直接从课程中选，没人选的课也須打印出来
                if (list.size() > 0) {
			
				for (int i = 0; i < list.size(); i++) {
							Gccourse gccourse = (Gccourse) list.get(i);
					
					String sql = "From Gcxk gc where gc.tid = '" + gccourse.getId() + "'";
					int m = (Integer)BasicDAO.queryByHql(sql).size();
				
			%>


			<tr align="center" class="tdbg"
				onmouseout="this.style.backgroundColor=''"
				onmouseover="this.style.backgroundColor='#BFDFFF'">


				<td>
					<div
						style="width: 120px; overflow: hidden; text-overflow: ellipsis;">
						<nobr>
							<%=(gccourse.getTitle() == null) ? "" : gccourse
						.getTitle()%>
						</nobr>
					</div>
				</td>
				<td>
					<div
						style="width: 120px; overflow: hidden; text-overflow: ellipsis;">
						<nobr>
							<%=(gccourse.getTeacher() == null) ? "" : gccourse
						.getTeacher()%>
						</nobr>
					</div>
				</td>
				<td>
					<div
						style="width: 120px; overflow: hidden; text-overflow: ellipsis;">
						<nobr>
							<%=m%>
						</nobr>
					</div>
				</td>
				<td >
				<div
						style="width: 120px; overflow: hidden; text-overflow: ellipsis;">
						<nobr>
					<a href="admin/gcxkxt/gcxkinfo/GcshowList.jsp?id=<%=gccourse.getId()%>">点击查看</a>
					</nobr>
					</div>
				</td>
			</tr>
			<%
			}
				}
			%>

		</table>



		