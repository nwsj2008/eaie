<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.eaie.gcxkxt.xkfenye.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   String idString=request.getParameter("id");
        int tid=Integer.parseInt(idString);
      
      
         Gccourse course =(Gccourse)BasicDAO.queryById(Gccourse.class,tid);
        
        
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title></title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<base href="<%=basePath%>">

		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		
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
			
			GcxkfyList gcxkfyList = new GcxkfyList();
			list = gcxkfyList.getGcxkfyList(curPage,idString);

			Page pager = gcxkfyList.getCurrentPage();
			Iterator it = list.iterator();//遍历list
		%>
		<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
				<td >
					<nobr>
						学号
						</nobr>
					</td>
					<td >
					<nobr>
						<%=course.getTitle() %>选课人员名单
						</nobr>
					</td>	
					<td >
					<nobr>
					   分数
						</nobr>
					</td>	
							
					</tr>
					
	<%
             
              for(int i=0;i<list.size();i++){
                 Gcxk gcxk = (Gcxk)list.get(i);	
                 Gcstudent gcstudent = (Gcstudent)BasicDAO.queryById(Gcstudent.class,gcxk.getSid());
                 if(gcstudent==null) 
                 {
                    continue;
                 }
	 %>		
	 <tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					
					<td>
					<div style="width: 280px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcstudent.getPwd()==null)?"":gcstudent.getPwd()%>
					</nobr>
					</div>
					</td>	
					<td>
					<div style="width: 280px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcstudent.getName()==null)?"":gcstudent.getName()%>
					</nobr>
					</div>
					</td>	
					
					<td>
					<div style="width: 280px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gcxk.getScore()==null)?"":gcxk.getScore()%>
					</nobr>
					</div>
					</td>		
					</tr>
	<%
	}
	 %>
	</table>
  <form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">

						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>
