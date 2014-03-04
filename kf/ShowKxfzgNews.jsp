<%@ page language="java" import="java.util.*" pageEncoding="GBk"%>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.kxfzg.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%  
    request.setCharacterEncoding("GBK");
    
    String id = request.getParameter("id");
    //String id="19";
    if(id==null){	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
	
    KxfzgNews n = new KxfzgNews();
    int temp = Integer.parseInt(id);
    n = (KxfzgNews)BasicDAO.queryById(KxfzgNews.class,temp);
    
    if(n==null){
	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
    kxfzgNews.updateHit(n);
 %>
<html>
<head>
<style type="text/css">
.content { font-size: 11pt; }
td{word-break:break-all}
.bj {
	BACKGROUND-POSITION: center top; BACKGROUND-IMAGE: url(images/background.jpg); BACKGROUND-REPEAT:repeat
}
</style>
<SCRIPT language=JavaScript>
var currentpos,timer;

function initialize()
{
timer=setInterval("scrollwindow()",50);
}
function sc(){
clearInterval(timer);
}
function scrollwindow()
{
currentpos=document.body.scrollTop;
window.scroll(0,++currentpos);
if (currentpos != document.body.scrollTop)
sc();
}
document.onmousedown=sc
document.ondblclick=initialize
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css1.css">
	<link rel="stylesheet" type="text/css" href="style.css">
<title><%= n.getTitle() %> - 深入学习实践科学发展观</title>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body topmargin="0" class=bj background="fk/images/bg2.jpg">
	<TABLE cellSpacing=0 cellPadding=0 width=762 align=center border=0>
  <TBODY>
  <TR>
    <TD><center><img src="images/party_01.gif" width="766" height="120"></center></TD></TR>
  </TBODY></TABLE>
  
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5F5F5">
<tr>
  <td><table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5F5F5">
  <tr> 
    <td width="6" rowspan="2" align="center" valign="top">　</td>
    <td width="760" align="right" valign="top" bgcolor="#F5F5F5"> 
      <table width="95%" border="0" align="center" valign="top" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="20" colspan="2" align="center" class="tit"><%=n.getTitle()%></td>
        </tr>
        <tr> 
          <td width="40%" height="30" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666">双击自动滚屏</td>
          <td width="60%" align="center" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666">发布者：<%= n.getPart() %> 
            发布时间： <%= n.getPubtime().toString().substring(0,19) %> 阅读：<font color="#FF0000"><%= n.getHit() %></font>次</td>
        </tr>
        
      
        
        <%
							if(n.getImageurl()!=null&&!n.getImageurl().equals("")){ 
								String[] imageurl = n.getImageurl().split("\\|");
						%>
						 <tr height=5>
							<th colspan="2">
								<table width="400" border="0" align="center" cellpadding="5"
									cellspacing="0">
						<%
								for(int i = 0;i<imageurl.length; i++){
						%>
									<tr>
										<td align="center">
											<img src="../UploadFiles/uppic/<%=imageurl[i]%>" width="400" border="0">										
										</td>
									</tr>
						<%
								}
										
						%>
								</table>
							</th>
						</tr>
						<%
						 	}
						%>
						<br><br><br><br>
						<tr width=742>
							<th colspan="2" class="news_content" align="left">
								<%=n.getContent()==null?"":n.getContent() %>
								<br><br>
								
							</th>
						</tr>
						<tr><td><%
									if(n.getFileurl()!=null&&!n.getFileurl().equals("")){
								%>
								&nbsp;附件：
								<a href="../kxfzg_down.jsp?id=<%=n.getId() %>"><%=n.getFilename() %>
								</a>
								<%
									}
								%>
								</td></tr>
						
						
      </table>
    </td>
  </tr>
  <tr>
    <td height="20" align="right" bgcolor="#F5F5F5" width="760"> 
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="right"> <img src="images/printer.gif" width="16" height="14" align="absmiddle">        
            <a href="javascript:window.print()">打印本页</a> | <img src="images/close.gif" width="14" height="14" align="absmiddle">             
            <a href="javascript:window.close()">关闭窗口</a></td>            
        </tr><hr>

        <tr> 
          <td colspan="2"></td>
        </tr>

      <tr>
          <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <p>&nbsp;</p></td>
        </tr>	  
      </table>
    </td>
  </tr>
</table></td>
</tr>
</table>
<%@ include file="Footer.jsp" %>
</body>
</html>