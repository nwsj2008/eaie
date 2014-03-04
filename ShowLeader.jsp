<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.admin.leader.*"%>
<%@ page import="java.util.*"%>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html >
<head>
<title>北京交通大学电子信息工程学院</title>
<base href="<%=basePath%>">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
%>
<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
		
		<br>
<%
        int curPage = (request.getParameter("curPage") == null ? 1: Integer.parseInt(request.getParameter("curPage")));
		LeaderList leaderList = new LeaderList();
		List list = leaderList.getLeaderList(curPage);
	    Page pager = leaderList.getCurrentPage();		
		
%>
<table width="536"  border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ffffff">
<tr align=center width=100%><td width=530 colspan=2><b>学院领导</b></td></tr>
<%      if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Leader leader = (Leader) list.get(i);
%>  
  <tr>
    <td bgcolor="#FFFFFF"><table width="280"  border="0" cellpadding="4" cellspacing="0">
      <tr class="maintext">
        <td width="80" align="right"><%=leader.getPost()%>：</td>
        <td><%=leader.getName()%></td>
      </tr>
      <tr class="maintext">
        <td width="80" align="right">办公地点：</td>
        <td><%=leader.getAddress()%></td>
      </tr>
       <tr class="maintext">
        <td width="80" align="right">联系电话：</td>
        <td><%=leader.getTel()%></td>
      </tr>
     <tr class="maintext">
        <td width="80" align="right">电子邮箱：</td>
        <td><a href="mailto:<%=leader.getEmail() %>"><%=leader.getEmail()%></a></td>
      </tr>
      <tr class="maintext">
        <td width="80" align="right">主要职责：</td>
        <td><%=leader.getCharge()%></td>
      </tr>
    </table></td>
    <td width="100" align="left" bgcolor="#FFFFFF"><img src="UploadFiles/uppic/<%=leader.getImageurl()%>" width="90" border="0"></td>
  </tr>
<%
   }
}
  %>
   <tr width=530><td colspan=3><form name="pageForm" action="" method="post">
						<table align="center" width=530>
							<tr>
								<td align="center">
									<%@include file="/admin/common/Pager.jsp"%>
								</td>
							</tr>
						</table>
   </form></td></tr>
</table>
		
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
	
</table>
  
<jsp:include page="foot.jsp" flush="true"/>
  </body>
</html>
