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
    <title>�����վ������</title>  
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
alert("����д��������!");
return false;
}
if (document.form1.content.value == "")
{
alert("����ϸ��д������������!");
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
				���ʶ���
				<select name="part" class="minput" id="select">
					<%
			if (id==2)
			{
			%>	
				<option value="��ѧ��">��ѧ��</option>
				<option value="��ί">��ί</option>
			<%
		    }
		    if(id==3)
		    {
		    %>
		      <option value="�о�����">�о�����</option>
		    <% 
		    }
             %>			
                </select>&nbsp;&nbsp;
				��&nbsp;&nbsp;����
                <input name="name" type="text" class="minput" id="name" size="12" maxlength="10">
</td>
            </tr>
              <tr>
                <td width="72" align="right" valign="top" class="topic">��&nbsp;&nbsp;&nbsp;�⣺</td>
                <td><textarea name="content" cols="48" rows="12" class="tinput" id="textarea"></textarea></td>
              </tr>
              <tr align="center">
                <td colspan="2" class="topic"><input name="Submit3" type="submit" class="sb" value="��&nbsp;��">
&nbsp;&nbsp;&nbsp;
            <input name="Submit22" type="reset" class="sb" value="��&nbsp;��">
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
