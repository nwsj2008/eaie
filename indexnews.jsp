<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.admin.news.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%!private String getImage(News news) {

		String imagename, imagetitle;
		if (news.getIstop() != null && news.getIstop() > 0) {
			imagename = "istop.gif";
			imagetitle = "置顶";
		} else {
			imagename = "arrow.gif";
			imagetitle = "普通";
		}
		return "<img src='images/news/" + imagename
				+ "' width=9 height=15 title='" + imagetitle + "'>";
	}%>
<html>
	<head>
		<base href="<%=basePath%>">
		<title></title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<script language="JavaScript">
		  function secBoard(n)
  {
    for(i=0;i<secTable.cells.length;i++)
      secTable.cells[i].className="sec1";
    secTable.cells[n].className="sec2";
    for(i=0;i<mainTable.tBodies.length;i++)
      mainTable.tBodies[i].style.display="none";
    mainTable.tBodies[n].style.display="block";
  }
		</script>
	</head>
	<table align=center width="542"  border="0" cellpadding="0"cellspacing="0">
	<tr><td colspan=4 align=center><img src="images/index_3_16.gif" width="542" height="40" alt=""></td></tr></table>
	<table align=center width="500" height="18" border="0" cellpadding="0"
		cellspacing="0" id="secTable">

		<tr align="center" valign="top">
			<td width="25%" class="sec2" onMouseover="secBoard(0)">
				学院新闻
			</td>
			<td width="25%" class="sec1" onMouseover="secBoard(1)">
				本科生通知
			</td>
			<td width="25%" class="sec1" onMouseover="secBoard(2)">
				研究生通知
			</td>
			<td width="25%" class="sec1" onMouseover="secBoard(3)">
				就业信息
			</td>
		</tr>
	</table>
	<table width="500"  border="0" cellpadding="0" cellspacing="0"
		id="mainTable" align=center>
		<tbody style="display: block">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<%
							List list = NewsImp.getTopNews(10, "学院新闻");
							Iterator it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						%>
						<tr class="topic">
							<td height="25" class="newsline">
								<%=getImage(news)%>
								&nbsp;
								<a href="ShowArticle.jsp?id=<%=news.getId()%>"
									title="<%=news.getTitle()%>" target="_blank"><%=news.getTitle()%>
									<%
											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									%> </a>
								&nbsp;
								<%	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 %>
							</td>
							<td width="60" height="25" class="newsline">
								<%=DateTimeFormat.getDateString(news.getPubtime())%>
							</td>
						</tr>
						<%
						}
						%>
					</table>
				</td>
			</tr>
		</tbody>
		<tbody style="display: none">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<%
							list = NewsImp.getTopNews(10, "本科生通知");
							it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						%>


						<tr class="topic">
							<td height="25" class="newsline">
								<%=getImage(news)%>
								&nbsp;
								<a href="ShowArticle.jsp?id=<%=news.getId()%>"
									title="<%=news.getTitle()%>" target="_blank"><%=news.getTitle()%>
									<%
											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									%> </a>
								&nbsp;
								<%	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 %>
							</td>
							<td width="60" height="25" class="newsline">
								<%=DateTimeFormat.getDateString(news.getPubtime())%>
							</td>
						</tr>
						<%
						}
						%>
					</table>
				</td>
			</tr>
		</tbody>
		<tbody style="display: none">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<%
							list = NewsImp.getTopNews(10, "研究生通知");
							it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						%>


						<tr class="topic">
							<td height="25" class="newsline">
								<%=getImage(news)%>
								&nbsp;
								<a href="ShowArticle.jsp?id=<%=news.getId()%>"
									title="<%=news.getTitle()%>" target="_blank"><%=news.getTitle()%>
									<%
											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									%> </a>
								&nbsp;
								<%	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 %>
							</td>
							<td width="60" height="25" class="newsline">
								<%=DateTimeFormat.getDateString(news.getPubtime())%>
							</td>
						</tr>
						<%
						}
						%>
					</table>
				</td>
			</tr>
		</tbody>
		<tbody style="display: none">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<%
							list = NewsImp.getTopNews(10, "就业信息");
							it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						%>


						<tr class="topic">
							<td height="25" class="newsline">
								<%=getImage(news)%>
								&nbsp;
								<a href="ShowArticle.jsp?id=<%=news.getId()%>"
									title="<%=news.getTitle()%>" target="_blank"><%=news.getTitle()%>
									<%
											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									%> </a>
								&nbsp;
								<%	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 %>
							</td>
							<td width="60" height="25" class="newsline">
								<%=DateTimeFormat.getDateString(news.getPubtime())%>
							</td>
						</tr>
						<%
						}
						%>
					</table>

				</td>
			</tr>
		</tbody>
	</table>
</html>
