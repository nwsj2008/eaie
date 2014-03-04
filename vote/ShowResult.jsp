<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.tools.BufferString" %>
<%@ page import="com.eaie.dbmanage.Vote" %>
<%@ page import="com.eaie.tools.DateTimeFormat" %>
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
    
    <title>投票结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  
  <body>
  <% int paperid = request.getParameter("paperid")==null?-1:Integer.parseInt(request.getParameter("paperid"));
     int order = 1;
  %>
  <%@include file="/head.jsp" %>
  <table width="782" align="center" class="table" cellpadding="0" cellspacing="0">
  <tr><td>
  <table class="main_table" width="672">
  	<tr>
  		<td colspan="2">
        	<img src="images/topic-dczq.jpg">    
  		</td>
  	</tr>
  	<%if(paperid==-1){
  		out.print(BufferString.isNull("系统错误，未能找到指定的投票结果"));
  	}
  	else{
  		List list = VoteImp.getItemsById(paperid);
  		vote = VoteImp.getVoteById(paperid);	
  	%>
  	<tr>
  		<td colspan="2">
       		&nbsp;
  		</td>
  	</tr>
  	<tr>
  		<td>
       		<div align="center"><%=vote.getPapername() %></div>
  		</td>
  	</tr>
  	<tr>
  		<td colspan="2">
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
       		int sum = item.getAnswer1()+item.getAnswer2()+item.getAnswer3()+item.getAnswer4()+item.getAnswer5()+item.getAnswer6()+item.getAnswer7()+item.getAnswer8();
       		if(sum>0){
    %>
  	<tr>
  		<td colspan="2">
        	<div align="left"><font color="blue"><%=order+" "+item.getSubject()+(item.getVotetype().toString().equals("1")?"&nbsp;&nbsp;<font color=red>(多选)</font>":"")+"&nbsp;&nbsp;<font color=blue>(总票数："+sum+"票)</font>"%></font></div>
  		</td>
  	</tr>
  	<% if((item.getSelect1()!=null) && (!item.getSelect1().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect1() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer1()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer1()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer1()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect2()!=null) && (!item.getSelect2().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect2() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer2()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer2()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer2()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect3()!=null) && (!item.getSelect3().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect3() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer3()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer3()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer3()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect4()!=null) && (!item.getSelect4().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect4() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer4()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer4()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer4()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect5()!=null) && (!item.getSelect5().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect5() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer5()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer5()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer5()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect6()!=null) && (!item.getSelect6().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect6() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer6()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer6()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer6()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect7()!=null) && (!item.getSelect7().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect7() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer7()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer7()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer7()%>票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect8()!=null) && (!item.getSelect8().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect8() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width=<%=item.getAnswer1()*200/sum%>/>&nbsp;&nbsp;
  	    	<%=DateTimeFormat.getFloatString((double)item.getAnswer8()*100/sum)%>%&nbsp;&nbsp;<%=item.getAnswer8()%>票
  	    </td>
  	<tr>
  	<%}%>
  
  	<tr>
  		<td>
  			&nbsp;
  		</td>
  	</tr>
  	<%	order++;} 
  	else{%>
  	<tr>
  		<td colspan="2">
        	<div align="left"><font color="blue"><%=order+" "+item.getSubject()+(item.getVotetype().toString().equals("1")?"&nbsp;&nbsp;<font color=red>(多选)</font>":"")+"&nbsp;&nbsp;<font color=blue>(总票数：0票)</font>"%></font></div>
  		</td>
  	</tr>
  	<% if((item.getSelect1()!=null) && (!item.getSelect1().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect1() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect2()!=null) && (!item.getSelect2().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect2() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect3()!=null) && (!item.getSelect3().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect3() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect4()!=null) && (!item.getSelect4().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect4() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect5()!=null) && (!item.getSelect5().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect5() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect6()!=null) && (!item.getSelect6().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect6() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect7()!=null) && (!item.getSelect7().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect7() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  	
  	<% if((item.getSelect8()!=null) && (!item.getSelect8().equals(""))){
  	%>
  	<tr>
  		<td width="50%">
  		<div align="left">&nbsp;&nbsp;<%=item.getSelect8() %></div></td>
  	    <td>
  	    	<img src="images/vote/bar.jpg" height="12" width="0"/>&nbsp;&nbsp;0票
  	    </td>
  	<tr>
  	<%}%>
  
  	<tr>
  		<td>
  			&nbsp;
  		</td>
  	</tr>
  	<%	order++;} 	
  	}%> 

  	
  	<tr>
  		<td colspan="2">
  			<input type="button" name="back" value="返 回" onClick="window.location.href='VoteList.jsp&type=7'" class="button">
  		</td>
  	</tr>	
  	<%}
  	}%>
  </table>
  </td></tr>
  </table>
  <jsp:include page="foot.jsp" flush="true"/>
  </body>
</html>
