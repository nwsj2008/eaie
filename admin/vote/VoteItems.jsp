<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.dbmanage.Vote" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
    
    <title>投票主题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>

  </head>
  
  <body>
  <% try{
     SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
     int paperid = Integer.parseInt(request.getParameter("id"));
     vote = VoteImp.getVoteById(paperid);
   %>
    <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" style="margin-top:30px">
  	<tr>
    	<td class="tdbg">&nbsp;<strong>问卷标题：</strong><%=vote.getPapername()%></td>
    	<td width="220" align="right" class="tdbg"><input type="button" name="back" class="button" value="返 回" onClick="location.href='VoteList.jsp'">
    	<input type="button" name="Submit2" value="添加投票主题" onClick="location.href='Item.jsp?paperid=<%=paperid%>&action=add'" class="button">&nbsp;&nbsp;</td>
  	</tr>
	</table>


	<form action="admin/vote/BulkDel.jsp?type=item" method="post" name="VoteItems" id="VoteItems" onSubmit="return checkBulk()">
	<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  		<tr align="center" class="titlebg">
    		<td width="40">选中</td>
		    <td width="40">序号</td>
		    <td>主题</td>
		    <td width="100">得票总数</td>
		    <td width="100">发布人</td>
		    <td width="120">发布时间</td>
    	</tr>

     <% List list = VoteImp.getItemsById(paperid); 
        if(list.isEmpty()){
        	out.println("<div align=center><strong>此调查中没有记录<strong></div>");
        }
        else{
        Iterator it = list.iterator();
        int num = 0;
        while (it.hasNext()) {
            item = (Vote)it.next();
            num++;
            int answer = item.getAnswer1()+item.getAnswer2()+item.getAnswer3()+item.getAnswer4()+item.getAnswer5()+item.getAnswer6()+item.getAnswer7()+item.getAnswer8();
     %>
  		<tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
		    <td width="40" align="center"><input name="ele" type="checkbox" id="del" value="<%=item.getSubid()%>"></td>
		    <td width="40" align="center"><%=num%></td>
		    <td><a href="admin/vote/Item.jsp?subid=<%=item.getSubid()%>&action=edit"><%=item.getSubject()%></a></td>
		    <td width="100" align="center"><%=answer%></td>
		    <td width="100" align="center"><%=item.getTeacher()%></td>
		    <td width="120" align="center"><%=dateFormatStart.format(item.getPubtime())%></td>
    	</tr>
    <%} %>
	</table>
	
	<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  		<tr>
   			<td><input name="checkAll" type="checkbox" id="checkAll" onPropertyChange="selAll()">
   			<input name="paperid" type="hidden" value="<%=paperid%>">
     	 	选取所有的主题&nbsp;&nbsp;
	     	 <input type="submit" name="Submit" class="button" value="删除所选的主题" onClick="{if(confirm('确定删除选中的主题吗？')){return true;}return false;}"></td>
	   		 <td align="right">&nbsp;</td>
  		</tr>
	</table>
	</form>
	<%	}
	}catch(Exception ex)
	   {ex.printStackTrace();} 
	%>
	
  </body>
</html>
