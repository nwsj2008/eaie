<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.message.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="message" class="com.eaie.dbmanage.Message" scope="page">
<jsp:setProperty name="message" property="*" />
</jsp:useBean>

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
  <body>
  <%
     String action = request.getParameter("action");
	 if(action!=null)
	 {
	    Message msg = new Message();
		msg.setBigclassid(Integer.parseInt(request.getParameter("bigclassid")));
		msg.setName(request.getParameter("name"));
		msg.setTitle(request.getParameter("title"));
		msg.setContent(request.getParameter("content"));
        msg.setIp(request.getRemoteAddr());
	    msg.setGivetime(new Date());
		try{
			BasicDAO.save(msg);
			out.println(JavaScript.alertandRedirect("添加反馈意见成功！","../index.jsp"));		
		}catch(Exception ex){
			out.println(JavaScript.alertandRedirect("添加反馈意见失败！","../index.jsp"));	
			out.println(ex.getMessage());	
		}
	}
 %>
   <%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF" valign=top>
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valign=top align=left>
		
		
  <form name="form1" method="post" action="message/ErrReport.jsp?action=add" onSubmit="return formCheck()" valign=top> 
   <table width="467" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="30" align="center" class="style1"><font color="#FF0000" class="main_title">意见反馈</font></td>
        </tr>
        <tr>
          <td><table width="467"  border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td align="right" class="topic">标题：</td>
                <td class="topic"><input name="title" type="text" class="minput" id="title" size="35"></td>
            </tr>
              <tr>
                <td width="72" align="right" valign="top" class="topic">正文：</td>
                <td><textarea name="content" cols="50" rows="15" class="tinput" id="content" onFocus="this.select()">若要回复，请留下您的联系方式。</textarea></td>
              </tr>
              <tr align="center">
                <td colspan="2" class="topic"><input name="Submit3" type="submit" class="sb" value="提&nbsp;交">
&nbsp;&nbsp;&nbsp;
            <input name="Submit22" type="reset" class="sb" value="重&nbsp;置">
            <input name="bigclassid" type="hidden" id="bigclassid" value="0">
            <input name="name" type="hidden" id="name" value="(错误报告)"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="33">&nbsp;</td>
        </tr>
  </table>
</form>


   <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>

</table>
<jsp:include page="/foot.jsp" flush="true"/>
  </body>
</html>
