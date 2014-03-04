<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.message.*" %>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>所有站内留言</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
</script> 
  </head>
  <%		
        String id = request.getParameter("id");
		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		MessageList mlist = new MessageList();		
		List list = mlist.getMessageListAll(curPage);
		Page pager = mlist.getCurrentPage();
 %>
  <body>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valign=top align=left>
		
		
  <table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="406" height="40" colspan="2"><img src="images/topic-znly.jpg" width="406" height="22"></td>
    <td height="30" colspan="2"><a href="admin/message/Msg_new.jsp"><img src="images/message.gif" align=right border="0"></a></td>
  </tr>
</table>
<table width="760"border="0" align="center" cellpadding="0" cellspacing="1" class=border>
 <%
	if(list.size()>0){
		for(int i=0;i<list.size();i++){		
			Message message = (Message)list.get(i);			
 %>
   <tr>
    <td height="18" bgcolor="#dedede" class="infotd"><%=i+1%>楼&nbsp;&nbsp;问：<%=message.getPart()%>&nbsp;&nbsp;</td>
    <td align="right" bgcolor="#dedede" class="infotd"><%=message.getName()==null?"--":message.getName()%>&nbsp;（<%=message.getIp()==null?"--":message.getIp()%>）于&nbsp;<%=message.getGivetime()==null? "--":message.getGivetime().toString()%>&nbsp;&nbsp;</td>
   </tr>
   <tr>
    <td class="content"><%=message.getContent()==null?"--":message.getContent()%></td>
   </tr>
   <tr>
    <td class="reply"><b>回复:</b><%=message.getReply()==null?"--":message.getReply()%></td>
    <td class="replytime" align=right>回复时间:<%=message.getReplytime()==null?"--":message.getReplytime()%></td>
   </tr>
<%
		}
	}
 %>
 </table>  
 <form name="pageForm" action="" method="post">   
 	<table align="center" width="100%">
       <tr><td align="center">
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
 </form>
 
 		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
</body>
</html>