<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.upfile.*" %>
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
<title>常用资料下载</title>
</head>

<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	} %>
<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type==null?1:type %>" frameborder="0" scrolling="no" width=170></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
		
		
<table width="556" height="40"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align=left width="556" height="40" colspan=5><img src="images/topic-cyzl.jpg" width="406" height="22"></td>
  </tr>
</table><br>
<%!
	public String getFileExt(String fileName){	
		int indexOfDot = fileName.indexOf('.');		
		return fileName.substring(indexOfDot+1);
	}	
 %>
<%
	List list;
 %>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
	int bigClass = (request.getParameter("bigclass")==null?0:Integer.parseInt(request.getParameter("bigclass")));	
	UpFileList ulist = new UpFileList();	
	list = ulist.getFileListByBigClassId(curPage,bigClass);
	Page pager = ulist.getCurrentPage();		
	Iterator it =list.iterator();
 %>
<table width="530"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#999999">
  <tr align="center" bgcolor="#E1F2FC" class="topic" height=30>
    <td><strong>资料名称</strong></td>
    <td width="40"><strong>来源</strong></td>
    <td><strong>大小</strong></td>
    <td><strong>下载</strong></td>
    <td width="120"><strong>加入时间</strong></td>
  </tr>
<%
	while(it.hasNext()){			
		Upfile file = (Upfile)it.next();
 %>
  <tr bgcolor="#FFFFFF" class="topic">
    <td>&nbsp;<img src="images/filepic/<%=getFileExt(file.getFilename())%>.gif">&nbsp;<a class=news href="download.jsp?id=<%=file.getId()%> "><%=file.getFilename() %></a></td>
    <td align="center"><%=file.getPart() %></td>
    <td align="right"><%=file.getFilesize() %>&nbsp;</td>
    <td align="center"><%=file.getDownnum() %></td>
    <td align="center"><%=file.getUptime().toLocaleString() %></td>
  </tr>
<%
	}
 %>
 <tr width=530 bgcolor="#ffffff"><td colspan=5><form name="pageForm" action="" method="post">
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
