<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.message.*" %>
<%
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
       	function unselectall()
			{
			    if(document.form1.chkAll.checked){
				document.form1.chkAll.checked = document.form1.chkAll.checked&0;
			    } 	
			}
			
			function CheckAll(form)
			{
			  for (var i=0;i<form.elements.length;i++)
			    {
			    var e = form.elements[i];
			    if (e.Name != "chkAll"&&e.disabled!=true)
			       e.checked = form.chkAll.checked;
			    }
			}
</script> 
  </head>
  <%		
		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		MessageList mlist = new MessageList();		
		List list = mlist.getMessageListAll(curPage);
		Page pager = mlist.getCurrentPage();
		int no=(curPage-1)*20;	
 %>
  <body>
  <form action="admin/message/Msg_delete.jsp" method="post" name="form1" id="form1">
 <table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  <tr>
    <td><input name="chkAll" type="checkbox" id="chkAll" value="checkbox" onClick="CheckAll(this.form);">
      选取所有的留言&nbsp;&nbsp;
      <input type="submit" name="Submit" value="删除所选留言" onClick="{if(confirm('确定删除选中的留言吗？')){return true;}return false;}"></td>
    <td align="right"><input type="button" name="Submit2" value="添加留言" onClick="location.href='Msg_new.jsp'">
    &nbsp;</td>
  </tr>
</table>
<table width="100%"border="0" align="center" cellpadding="0" cellspacing="1" class=border>
	<tr class=titlebg>
		<td align="center">选中</td>
		<td align="center" width="25">序号</td>
		<td align="center">内容</td>
		<td align="center" width="60">留给</td>
		<td align="center" width="60">留言人</td>
		<td align="center" width="140">留言时间</td>
    </tr>
 <%
	if(list.size()>0){
		for(int i=0;i<list.size();i++){		
			Message message = (Message)list.get(i);			
 %>
   <tr align="center" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
    <td width="35"><input name="delid" type="checkbox" id="delid" value="<%=message.getId() %>" onClick="unselectall()"></td>  
    <td><%=(no+i+1)%></td>
    <td align="left"><a href="admin/message/Msg_reply.jsp?id=<%=message.getId()%>"><%=message.getContent() %></a></td>
    <td><%=message.getPart() %></td>
    <td><%=message.getName()==null?"--":message.getName()  %></td>
    <td><%=message.getGivetime()==null? "--":message.getGivetime().toString() %></td>
  </tr>
<%
		}
	}
 %>
 </table>  
</form>  
 <form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
 </form> 
</body>
</html>