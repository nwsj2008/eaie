<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.bszsxt.bsnews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.bszsxt.bsnews.BsnewsList"%>
<%@page import="com.eaie.common.*"%>
<%@page import="com.eaie.dbmanage.Tmnews"%>
<%@page import="com.eaie.dbmanage.*"%>
<%@page import="com.eaie.bszsxt.bsnews.BsnewsList"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>电子信息工程学院博士研究生招生系统</title>
<LINK REL=StyleSheet HREF="bsstyle.css" TYPE="text/css" MEDIA=screen>
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
		   num=document.form.elements.length;     
		        
		   if(document.form.chkall.checked)     
		   {  var i;     
		      for(i=0;i<num;i++)     
		        if(document.form.elements[i].type=="checkbox"&&document.form.elements[i].name!="chkall")     
		           document.form.elements[i].checked = true;     
		      return true;     
		   }     
		   else   
		   {  var j;     
		      for(i=0;i<num;i++)     
		        if(document.form.elements[i].type == "checkbox"&&document.form.elements[i].name!="chkall")     
		           document.form.elements[i].checked = !(document.form.elements[i].checked);     
		      return true;     
		   }     
		     
		}     
		</Script>

</head>
<%!List list;
	String cKeyWords, csearchpart;

	%>
	<% 
	    SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			BsnewsList clist = new BsnewsList();
			list = clist.getBsnewsList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
	
		%>
	    

<body>
<div id="page">
	<div id="header">
			<h1 align="center">电子信息工程学院博士研究生招生系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">首页</a>
		<a href="newslist.jsp">查看招生通知</a>
		<a href="cscj.jsp">查看初试成绩</a>
		<a href="fstj.jsp">查看复试通知</a>
		<a href="lqjg.jsp">查看录取结果</a>
		<a href="lianxi.jsp">联系我们</a>
		<a href="bslogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<form name="form" method="post" action="#">
			<table width="100%" border="1" align="center" cellpadding="2" cellspacing="1">
				<tr align="center" class="">
					<td width="8%">
						序号
					</td>
					<td width="45%">
						标题
					</td>
					<td width="25%"> 
						发布时间
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Bsnews bsnews = (Bsnews) list.get(i);
				%>

				<tr align="center" >
					
					<td width="35">
						<%=i+1%>
					</td>
					<td>
						<a href="bszstz.jsp?id=<%=bsnews.getId()%>"><%=bsnews.getTitle()%></a>
					</td>
					<td>
					     <%=dateFormatStart.format(bsnews.getPubtime())%>
				    </td>
						<%
							}
							}
						%>
					
				</tr>
						
					
			</table>
			</form>
	</div>
    
    </div>

	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
</body>

</html>