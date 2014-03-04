<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.news.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>listmain</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<%
    ClassNewsList clist = new ClassNewsList(); 
	List listHire = ClassNewsList.getTopNewsList(10, "61");
	List listJob = ClassNewsList.getTopNewsList(10, "62");	
	Iterator ith =listHire.iterator();
	Iterator itj=listJob.iterator();
 %>
<body topmargin="0" rightmargin="0" leftmargin="0">
<table width=585 height=100% background="images/blank-backpic.jpg" valign=top border="0" cellpadding="0" cellspacing="0">
  <tr>
	<td height="11" valign=top width=585>
		<table bgcolor="#f8f8fa" border="0" cellpadding="0" cellspacing="0">
		  <tr valign="top">
		     <td width="406"><img src="images/topic-61.jpg"></td>
		     <td width="166" valign=bottom><a href="ShowClass.jsp?id=61&type=10" target="_parent"><img src="images/listmain-r_m1-.jpg" align=right valign=top></a></td>
	      </tr>
		</table>
	 </td>
		
  </tr>
  <tr valign=top>
	  <td background="images/listmain-bg6.jpg" colspan=3>
			 <table width="585" border="0" cellpadding="0" cellspacing="0">
				 <tr>
                     <td><img src="images/listmain-w1.jpg"></td>
				 </tr>
				 <tr>
					 <td style="padding-left:30;padding-right:10';color:#656565">
						
					   <table valign=top width=100%>
					     
 <%
	  if(listHire.size()==0)
	  {
		out.println("<center><font color='#333333'><h3>没有招聘信息</h3></font></center>");
		return;
	  }
 %>
 <%
	while(ith.hasNext()){
	News news = (News)ith.next();
 %>
 <tr class="topic">
 	
    <td height="20"><img src="images/listmain-st2.jpg">&nbsp;&nbsp;<a class=news href="ShowArticle.jsp?id=<%=news.getId() %>" target="_blank" title="<%=news.getTitle() %>"><%=news.getTitle()%>
	</a></td>
    <td width="140" height="20" align=right><%=DateTimeFormat.getDateString(news.getPubtime()) %></td>
  </tr>
  <%
  	}
   %>					   
					   </table>
						 
					</td>
				 </tr>
				</table>
		</td>
	</tr>
	 <tr>
		<td height="11" valign=top width=585>
		<table bgcolor="#f8f8fa" border="0" cellpadding="0" cellspacing="0">
		  <tr valign="top">
		     <td width="406"><img src="images/topic-62.jpg"></td>
		     <td width="166" valign=bottom><a href="ShowClass.jsp?id=62&type=10" target="_parent"><img src="images/listmain-r_m1-.jpg" align=right valign=top></a></td>
	      </tr>
		</table>
	 </td>
  </tr>
	<tr valign=top>
	  <td background="images/listmain-bg6.jpg">
			 <table width="585" border="0" cellpadding="0" cellspacing="0">
				 <tr>
                     <td><img src="images/listmain-w1.jpg"></td>
				 </tr>
				<tr>
					 <td style="padding-left:30;padding-right:10';color:#656565">
						
					   <table valign=top width=100%>
					     
 <%
	  if(listJob.size()==0)
	  {
		out.println("<center><font color='#333333'><h3>没有就业指导信息</h3></font></center>");
		return;
	  }
 %>
 <%
	while(itj.hasNext()){
	News news = (News)itj.next();
 %>
 <tr class="topic">
 	
    <td height="20"><img src="images/listmain-st2.jpg">&nbsp;&nbsp;<a class=news href="ShowArticle.jsp?id=<%=news.getId() %>" target="_parent" title="<%=news.getTitle() %>"><%=news.getTitle()%>
	</a></td>
    <td width="140" height="20" align=right><%=DateTimeFormat.getDateString(news.getPubtime()) %></td>
  </tr>
  <%
  	}
   %>
   </table>
		</td>
	</tr>
	 <tr>
		<td height="11" valign=top width=585>
		<table bgcolor="#f8f8fa" border="0" cellpadding="0" cellspacing="0">
		  <tr valign="top">
		     <td width="406"><img src="images/topic-cyzl.jpg"></td>
		      <td width="166" valign=bottom><a href="downlist.jsp?bigclass=6&type=10" target="_parent"><img src="images/listmain-r_m1-.jpg" align=right></a></td>
	      </tr>
		</table>
	 </td>
  </tr>
	<tr valign=top>
	  <td background="images/listmain-bg6.jpg">
			 <table width="585" border="0" cellpadding="0" cellspacing="0">
				 <tr>
                     <td><img src="images/listmain-w1.jpg"></td>
				 </tr>
				 <tr>
					 <td style="padding-left:30;padding-right:10"></td>
				 </tr>
				</table>
		</td>
	</tr>
</table>
</body>

</html>
