<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.tools.BufferString" %>
<%@ page import="com.eaie.dbmanage.Votepaper" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:useBean id="vote" class="com.eaie.dbmanage.Votepaper" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>投票列表</title>
    
	<link rel="stylesheet" type="text/css" href="css/style.css">


  </head>
<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
%>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
		
  <% try{
     List list = VoteImp.getShowVote(); 
  	 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");   
  %>
  
<table width=550 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
		<td width=550 height=100% valign=top align=left>
		
  <table width="550"  border="0" align="center" cellpadding="2" cellspacing="0">
  	<tr>
  		<td>
        	<img src="images/topic-dczq.jpg"/>    
  		</td>
  	</tr>
  	<%if(list.isEmpty()){
  		out.print(BufferString.isNull("暂时没有调用的投票信息"));
  	}
  	else{
       Iterator it = list.iterator();
       while (it.hasNext()) {
       		vote = (Votepaper)it.next();
    %>
  
  <tr class="topic">
 	
    <td height="20"><img src="images/arrow_1.gif" width="5" height="7">&nbsp;<a class=news href="vote/Vote.jsp?paperid=<%=vote.getPaperid()%>&type=7" target="_blank"><%=vote.getPapername()%>
	</a></td>
    <td width="140" height="20" align=right><%=dateFormatStart.format(vote.getPubtime()) %></td>
  </tr>

  	<%	} 
  	  }%>
  	<tr>
  		<td colspan="2">
       		&nbsp;
  		</td>
  	</tr>
  	<tr>
  		<td colspan="2">
       		&nbsp;
  		</td>
  	</tr>
  	<tr>
  		<td colspan="2">
       		&nbsp;
  		</td>
  	</tr>
  <% }catch(Exception e){e.printStackTrace();}%>
  </table>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>

			</td>
	</tr>
	
</table>
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
