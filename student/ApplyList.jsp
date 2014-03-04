<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.classroom.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<link href="admin/css/style.css" rel="stylesheet" type="text/css">
<title>活动申请列表</title>
</head>
<body>
<%
	List list;
 %>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	ApplyList alist = new ApplyList();	
	list = alist.getFileList(curPage);		
	Page pager = alist.getCurrentPage();		
	Iterator it =list.iterator();
     String type = request.getParameter("type");
	if(type==null)
	{
	return;
	} %>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="200" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type==null?1:type %>" frameborder="0" scrolling="no" width=170></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="580" height=100% valign=top align=right>
<br>		
<table width="522"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center" class="main_title">活动申请列表</td>
  </tr>
  <tr>
    <td align="right"><a href="student/Apply.jsp?type=7" class="maintext"><font color="#0000FF">返回活动申请</font></a></td>
  </tr>
</table>
<table width="510"  border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#666666">
  <tr bgcolor="#CCCCCC" class="maintext">
    <td height="28" align="center"><strong>日期</strong></td>
    <td height="28" align="center"><strong>教室</strong></td>
    <td height="28" align="center"><strong>时间段</strong></td>
    <td height="28" align="center"><strong>活动内容</strong></td>
    <td height="28" align="center"><strong>审核</strong></td>
  </tr>
 <%
	while(it.hasNext()){			
		Classroom cr = (Classroom)it.next();
 %>
  <tr bgcolor="<%=cr.getIsagree()==null? "#FFFFFF":"#E1F2FC"%>" class="maintext">
    <td width="70" height="28" align="center"><%=cr.getTakedate() %></td>
    <td width="60" height="28" align="center"><%=cr.getClassroom() %></td>
    <td width="120" height="28" align="center"><%=cr.getStarttime() %>－<%= cr.getEndtime() %></td>
    <td height="28"><%=cr.getSubject() %></td>
    <td width="60" height="28" align="center"><%=cr.getIsagree()==null?"": "已批准"%></td>
  </tr>
 <%
 	}
 %>

<tr bgcolor="#ffffff"><td colspan="5"><form name="pageForm" action="" method="post">
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
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
