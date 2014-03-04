<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.tools.BufferString" %>
<%@ page import="com.eaie.dbmanage.Vote" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="vote" class="com.eaie.dbmanage.Votepaper" scope="page"/>
<jsp:useBean id="item" class="com.eaie.dbmanage.Vote" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>投票专区</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  
  <body>
  <% int paperid = request.getParameter("paperid")==null?-1:Integer.parseInt(request.getParameter("paperid"));
     int order = 1;
     String type = request.getParameter("type");
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
		
  <form name="voteSubmit" action="servlet/VoteSubmit" method="post">
  <table width="530" height=100% valign=top>
  	<tr valign=top>
  		<td>
        	<img src="images/topic-dczq.jpg"/>    
  		</td>
  	</tr>
  	<%if(paperid==-1){
  		out.print(BufferString.isNull("系统错误，未能找到指定的投票信息"));
  	}
  	else{
  		List list = VoteImp.getItemsById(paperid);
  		vote = VoteImp.getVoteById(paperid);	
  	%>
  	<tr>
  		<td>
       		<div align="center"><%=vote.getPapername() %></div>
  		</td>
  	</tr>
  	<tr>
  		<td>
       		&nbsp;
  		</td>
  	</tr>
  	<% if(list.isEmpty()){
  	   		out.print(BufferString.isNull("此调查中没有具体投票信息"));
  	   }
  	   else{
  	   Iterator it = list.iterator();
       while (it.hasNext()) {
       		item = (Vote)it.next();
       		int num = 0;
    %>
  	<tr>
  		<td>
        	<div align="left"><font color="blue"><%=order+" "+item.getSubject()+(item.getVotetype().toString().equals("1")?"&nbsp;&nbsp;<font color=red>(多选)</font>":"")%></font></div>
  		</td>
  	</tr>
  	<% if((item.getSelect1()!=null) && (!item.getSelect1().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect1() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect2()!=null) && (!item.getSelect2().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect2() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect3()!=null) && (!item.getSelect3().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect3() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect4()!=null) && (!item.getSelect4().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect4() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect5()!=null) && (!item.getSelect5().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect5() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect6()!=null) && (!item.getSelect6().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect6() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect7()!=null) && (!item.getSelect7().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect7() %></div></td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect8()!=null) && (!item.getSelect8().equals(""))){
  	%>
  	<tr>
  		<td>
  		<div align="left">&nbsp;&nbsp;<input type="<%=item.getVotetype().toString().equals("0")?"radio":"checkbox"%>" name="<%="feedback"+order%>" id="<%="feedback"+order%>" value="<%=++num %>">
  	    &nbsp;<%=item.getSelect8() %></div></td>
  	<tr>
  	<%}%>
  
  	<tr>
  		<td>
  			&nbsp;<input type="hidden" name="<%="id"+order%>" value="<%=item.getSubid()%>">
  		</td>
  	</tr>
  	<%	order++; } %>
  	
  	<tr>
  		<td>
  			&nbsp;&nbsp;<input type="submit" name="submit" value="提 交" class="button" 
  			onClick="{if(confirm('每个IP只能投票一次,如果您的投票不完整将无法重新投票,您确定要提交么?')){return true;}return false;}">
  			<input type="reset" name="reset" value="重 置" class="button">
  		
  			<input type="button" name="back" value="返 回" onClick="history.back()" class="button">
  			<input type="button" name="show" value="查看投票结果" class="button" onClick="window.location.href='ShowResult.jsp?paperid=<%=paperid %>'">
  			<input type="hidden" name="paperid" value=<%=paperid%>>
  		</td>
  	</tr>	
  	<%}
  	}%>
  </table>
  </form>
  </td></tr>
  </table>
  <jsp:include page="/foot.jsp" flush="true"/>
  </body>
</html>
