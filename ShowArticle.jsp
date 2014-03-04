<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.news.*"%>
<% request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%!
	public String getFileExt(String fileName){	
		int indexOfDot = fileName.indexOf('.');		
		return fileName.substring(indexOfDot+1);
	}	
 %>
<%
	String id = request.getParameter("id");
	if(id==null){	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
	News news = NewsImp.getNews(Integer.valueOf(id));
	if(news==null){
	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
	NewsImp.updateNewHits(news);
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<title><%=news==null?"没有找的":news.getTitle()%>
		</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body width=742>
		<%@ include file="head.jsp"%>
		<table width="782" border="0" align="center" cellpadding="0" background="images/blank-backpic.jpg" 
			cellspacing="0">
			<tr>
			<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
				<td>
					<table width="100%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td align="center" class="news_title">
								<%=news.getTitle() %>
							</td>
						</tr>
						
						<tr>
							<td align="center" class="news_time">
								来源：
								<%=news.getPart() %>
								&nbsp;&nbsp;&nbsp;时间：
								<%=news.getPubtime().toLocaleString() %>
								&nbsp;&nbsp;&nbsp;点击：
								<%=news.getHits()%>
								&nbsp;次
							</td>
						</tr>
		
						<%
							if(news.getImageurl()!=null&&!news.getImageurl().equals("")){ 
								String[] imageurl = news.getImageurl().split("\\|");
						%>
						 <tr height=5>
							<td>
								<table width="400" border="0" align="center" cellpadding="5"
									cellspacing="0">
						<%
								for(int i = 0;i<imageurl.length; i++){
						%>
									<tr>
										<td align="center">
											<img src="UploadFiles/uppic/<%=imageurl[i]%>" width="400" border="0">										
										</td>
									</tr>
						<%
								}
										
						%>
								</table>
							</td>
						</tr>
						<%
						 	}
						%>
						<tr width=742>
							<td class="news_content">
								<%=news.getContent()==null?"":news.getContent() %>
								<br>
								<%
									if(news.getFileurl()!=null&&!news.getFileurl().equals("")){
								%>
								&nbsp;附件：
								<img src="images/filepic/<%=getFileExt(news.getFileurl())%>.gif">
								<a href="download.jsp?id=<%=news.getId() %>&type=news"><%=news.getFilename() %>
								</a>
								<%
									}
								%>
							</td>
						</tr>
					</table>
				</td>
				<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
			</tr>
		</table>	
		<jsp:include page="foot.jsp" flush="true"/>	
	</body>
</html>
