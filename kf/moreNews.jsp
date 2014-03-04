<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.DateTimeFormat,com.eaie.tools.Image" %>
<%@ page import="com.eaie.dbmanage.Commiepub" %>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%@ page import="com.eaie.party.PartyImp" %>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.kxfzgNews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.kxfzgNews.KxfzgNewsList"%>
<%@page import="com.eaie.common.*"%>
<%@page import="com.eaie.dbmanage.KxfzgNews"%>
<%@page import="com.eaie.dbmanage.*"%>
<%@page import="com.eaie.admin.kxfzg.*"%>

<html>
<head>
<style type="text/css">
.content { font-size: 11pt; }
td{word-break:break-all}
.bj {
	BACKGROUND-POSITION: center top; BACKGROUND-IMAGE: url(images/background.jpg); BACKGROUND-REPEAT:repeat
}
</style>
<script language="JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>
<SCRIPT language=JavaScript>
var currentpos,timer;

function initialize()
{
timer=setInterval("scrollwindow()",50);
}
function sc(){
clearInterval(timer);
}
function scrollwindow()
{
currentpos=document.body.scrollTop;
window.scroll(0,++currentpos);
if (currentpos != document.body.scrollTop)
sc();
}
document.onmousedown=sc
document.ondblclick=initialize
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css1.css">
	<link rel="stylesheet" type="text/css" href="style.css">
<title>新闻列表 - 深入学习实践科学发展观</title>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body topmargin="0" class=bj background="fk/images/bg2.jpg">
<% Commie commie = (Commie)session.getAttribute("Commie");
     Vector party = PartyImp.getParty(); 
     List list_News = (List)party.get(0);
     List list_ZHIBU = (List)party.get(1);
     List list_LILUN = (List)party.get(2);
     List list_XUEXI = (List)party.get(3);
     List list_DAOHANG = (List)party.get(4);
     List list_Pub = (List)party.get(5);
     List list_File = (List)party.get(6);
     Commiepub pub;
     
  %>
 <%!List list;
	String cKeyWords, csearchpart;%>
		<%
		 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			KxfzgList clist = new KxfzgList();
			list = clist.getKxfzgList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
		%>
		<TABLE cellSpacing=0 cellPadding=0 width=762 align=center border=0>
  <TBODY>
  <TR>
    <TD><center><img src="images/party_01.gif" width="766" height="120"></center></TD></TR>
  </TBODY></TABLE>
  
<table width="762" height="600" border="0" align="center" cellpadding="0" cellspacing="0" style="">
  
  <tr>
    <td width="10" align="right" valign="top" bgcolor="#BC0000">&nbsp;</td>
    <td width="752" valign="top">
    <table width="100%" height="266" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td height="42" bgcolor="#990000"><img src="images/party_04.gif" width="754" height="42"></td>
        </tr>
          
		  <tr>
        <td height="555" valign="top">
		<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
		<br><br>
		<% 	
					  int size = list.size();
						for (int i = (size-1); i>=0; i--) {
							KxfzgNews kxfzgNews = (KxfzgNews) list.get(i);
							
				%>
			<tr class="topic" >
            	<td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="ShowKxfzgNews.jsp?id=<%=kxfzgNews.getId()%>"><%=kxfzgNews.getTitle()%></a>&nbsp;</td>
            	<td align="right" class="line" width="15%"><%=DateTimeFormat.getDateString(kxfzgNews.getPubtime())%></td>
			</tr>
	    <%} 
	    
	     
	    %>	
		</table>  
 		</td>
      </tr>
		<tr >
				<table align="center" width="752" valign="bottom">
					<td align="center">
						<input type="hidden" id="keyword" name="keyword"
							value=<%=cKeyWords == null ? "" : cKeyWords%>>
						<input type="hidden" id="keyword" name="type"
							value=<%=csearchpart == null ? "" : csearchpart%>>
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
					</table>
				</tr>
		

   </td>
   <td width="10" align="right" valign="top" bgcolor="#BC0000">&nbsp;</td>
   </tr>
  </table>
<%@ include file="Footer.jsp" %>
</body>
</html>