<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.Votepaper" %>
<%@ page import="com.eaie.tools.JavaScript" %>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加调查</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {
        if(!isNull("papername","问卷标题"))
            return false;
        if(!isTooLong("papername",240,"问卷标题"))
            return false;
        return true;
    }
    </script>

  </head>
  
  <body>
  <% String action = request.getParameter("action");
     if(action==null){
   %>
    <form name="addVote" method="post" action="servlet/SerVote" onSubmit="return checkForm()">
  	<table width="500" border="0" align="center" cellpadding="5" cellspacing="1" class="border" style="margin-top:80px">
      <tr>
    	  <td colspan="2" align="center" class="titlebg">请先添加问卷标题</td>
   	  </tr>
      <tr>
          <td class="tdbg">问卷标题：</td>
          <td class="tdbg"><textarea name="papername" cols="50" rows="3" id="papername"></textarea></td>
      </tr>
      <tr>
      	  <td class="tdbg">是否调用：</td>
          <td class="tdbg"><input name="isselected" type="checkbox" id="isselected" value="<%=Byte.parseByte("1")%>"></td>
      </tr>
      <tr>
          <td colspan="2" align="center" class="tdbg"><input type="submit" name="Submit" value="添 加" class="button">
          <input type="reset" name="reset" value="重 置" class="button"></td>
          <input type="hidden" name="action" value="save">
      </tr>
    </table>
    </form>
    <%}else{
        int paperid = Integer.parseInt(request.getParameter("id"));
        Votepaper vote = new Votepaper();
        vote = VoteImp.getVoteById(paperid);
        if(vote==null){
        	JavaScript.alertandRedirect("系统调查查询失败,请与管理员联系!","VoteList.jsp");
        }
        else{
    %>
    <form name="EditVote" method="post" action="servlet/SerVote" onSubmit="return checkForm()">
  	<table width="500" border="0" align="center" cellpadding="5" cellspacing="1" class="border" style="margin-top:80px">
      <tr>
    	  <td colspan="2" align="center" class="titlebg">编辑问卷标题</td>
   	  </tr>
      <tr>
          <td class="tdbg">问卷标题：</td>
          <td class="tdbg"><textarea name="papername" cols="50" rows="3" id="papername"><%=vote.getPapername()%></textarea></td>
      </tr>
      <tr>
      	  <td class="tdbg">是否调用：</td>
          <td class="tdbg">
          <%if(vote.getIsselected()==null){ %>
          <input name="isselected" type="checkbox" id="isselected" value="<%=Byte.parseByte("1")%>">
          <%}else{ %>
          <input name="isselected" type="checkbox" id="isselected" value="<%=Byte.parseByte("1")%>" checked><%} %></td>
      </tr>
      <tr>
          <td colspan="2" align="center" class="tdbg"><input type="submit" name="Submit" value="修 改" class="button">
          <input type="reset" name="reset" value="重 置" class="button"></td>
          <input type="hidden" name="action" value="edit">
          <input type="hidden" name="paperid" value="<%=paperid%>">
      </tr>
    </table>
    </form>
    
    <%} 
    }
    %>
  </body>
</html>
