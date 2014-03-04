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
    <title>添加新站内留言</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
</script>
<script language = "JavaScript">
function formCheck()
{
if (document.form1.name.value == "")
{
alert("请填写您的姓名!");
return false;
}
if (document.form1.content.value == "")
{
alert("请详细填写您的留言内容!");
return false;
} 
}
</script>
  </head>
    <%		
        int id=Integer.parseInt(request.getParameter("id"));
		int bigclassid=request.getParameter("bigclassid")==null?2:Integer.parseInt(request.getParameter("bigclassid"));	
 %>
  <body>
  <%@ include file="/head.jsp" %>
  
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
    <tr height=50></tr>
	<tr align=left>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valign=top align=left>
		
		
   <form name="form1" method="post" action="message/MsgSave.jsp?id=<%=id %>" onSubmit="return formCheck()">
      <table width="467" border="0" align="center" cellpadding="0" cellspacing="0" valign=top>
        <tr>
          <td height="41"><img src="images/liuyan_01.gif" width="467" height="41"></td>
        </tr>
        <tr>
          <td background="images/liuyan_02.gif"><table width="467"  border="0" align="center" cellpadding="5" cellspacing="0">
              <tr align="center">
                <td height="10" colspan="2"></td>
            </tr>
              <tr>
                <td colspan="2" class="topic">&nbsp;&nbsp;
				提问对象：
				<select name="part" class="minput" id="select">
					<%
			if (id==2)
			{
			%>	
				<option value="教学科">教学科</option>
				<option value="团委">团委</option>
			<%
		    }
		    if(id==3)
		    {
		    %>
		      <option value="研究生科">研究生科</option>
		    <% 
		    }
             %>			
                </select>&nbsp;&nbsp;
				姓&nbsp;&nbsp;名：
                <input name="name" type="text" class="minput" id="name" size="12" maxlength="10">
</td>
            </tr>
              <tr>
                <td width="72" align="right" valign="top" class="topic">问&nbsp;&nbsp;&nbsp;题：</td>
                <td><textarea name="content" cols="48" rows="12" class="tinput" id="textarea"></textarea></td>
              </tr>
              <tr align="center">
                <td colspan="2" class="topic"><input name="Submit3" type="submit" class="sb" value="提&nbsp;交">
&nbsp;&nbsp;&nbsp;
            <input name="Submit22" type="reset" class="sb" value="重&nbsp;置">
            <input name="bigclassid" type="hidden" id="bigclassid" value="<%=bigclassid%>">
            <input name="ip" type="hidden" id="ip" value="<%=request.getRemoteAddr()%>"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="33"><img src="images/liuyan_03.gif" width="467" height="33"></td>
        </tr>
  </table>
</form> 

   <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>

</table>
<jsp:include page="/foot.jsp" flush="true"/>
  </body>
</html>
