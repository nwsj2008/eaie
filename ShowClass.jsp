<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.news.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>北京交通大学电子信息工程学院</title>
<base href="<%=basePath%>">
<link href="admin/css/style.css" rel="stylesheet" type="text/css">

</head>
<%!
	List list;	
	private String getImage(News news){		
		
		String imagename,imagetitle;
		if(news.getIstop()!=null&&news.getIstop()>0){
			imagename="istop.gif";
			imagetitle="置顶";	
		}else{
			imagename="arrow.gif";
			imagetitle="普通";
		}	
		return "<img src='images/news/" + imagename + "' width=9 height=15 title='" + imagetitle + "'>";
	}
 %>
<%
	String id = request.getParameter("id");
	String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	if(id==null){	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
	ClassNewsList clist = new ClassNewsList(); 
	list = clist.getNewsList(curPage,id);	
	Page pager = clist.getCurrentPage();		
	Iterator it =list.iterator();
 %>

<body>

<%@ include file="head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" background="images/blank-backpic.jpg">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="580" height=100% valign=top align=right>
			
			
			<table width="550"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="406" height="40" colspan="2"><img src="images/topic-<%=(id==null)?0:id %>.jpg" width="406" height="22"></td>
  </tr>
</table>
<%
	if(list.size()==0){
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
 %>

<table width="550"  border="0" align="right" cellpadding="0" cellspacing="0">
<%
	while(it.hasNext()){
	News news = (News)it.next();
 %>
 <tr class="topic">
 	
    <td height="23"><%=getImage(news) %>&nbsp;<a class=news href="ShowArticle.jsp?id=<%=news.getId() %>" target="_blank" title="<%=news.getTitle() %>"><%=news.getTitle()%>
	</a></td>
    <td width="100" height="20" align=right><%=DateTimeFormat.getDateString(news.getPubtime()) %></td>
  </tr>
  
  <%
  	}
   %>
    <tr><td colspan="4"><form name="pageForm" action="" method="post">
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
