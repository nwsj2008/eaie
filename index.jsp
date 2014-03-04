<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>北京交通大学电子信息工程学院</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
	<SCRIPT LANGUAGE="JavaScript">   
  <!--   
  
   /*
    function openwin() {
	　　 var OpenWindow=window.open("", "newwin", "height=200, width=600,toolbar=no, top=150, left=300, scrollbars=no,menubar=no");
　//写成一行
	　　 OpenWindow.document.write("<h3>根脉相连，奏一曲“回家”，唤回青春飞扬的昨日</h3>");
	　　 OpenWindow.document.write("<BODY BGCOLOR='#E10000' style='color:#FFFFFF; font-family:黑体'>");
	　　 OpenWindow.document.write("<h3>心手相牵，唱一曲“祝福”，留住再次聚首的今天</h3>");	
		OpenWindow.document.write("<a href='http://eaie.bjtu.edu.cn:8000/ShowArticle.jsp?id=2187' style='color:#FFFFFF;' target='_blank'>热烈欢迎电信学院77/78级校友返校</a>");
		OpenWindow.document.write("<br>");
		OpenWindow.document.write("<br>");
		OpenWindow.document.write("<a href='http://eaie.bjtu.edu.cn:8000/ShowArticle.jsp?id=2186' style='color:#FFFFFF;' target='_blank'>电信学院77/78级校友返校各班联络人</a>");
		OpenWindow.document.write("<br>");
		OpenWindow.document.write("<br>");
		OpenWindow.document.write("<a href='http://eaie.bjtu.edu.cn:8000/ShowArticle.jsp?id=2184' style='color:#FFFFFF;' target='_blank'>电信学院级校友返校日程安排</a>");
			OpenWindow.document.write("<br>");
　　 OpenWindow.document.write("</BODY>");
	　 　OpenWindow.document.write("</html>");
	　　 OpenWindow.document.close();
	}
	*/
  function initEcAd(){   
	  document.all.AdLayer1.style.posTop = -200;   
	  document.all.AdLayer1.style.visibility = 'visible'   
	  document.all.AdLayer2.style.posTop = -200;   
	  document.all.AdLayer2.style.visibility = 'visible'   
	  MoveLeftLayer('AdLayer1');   
	  MoveRightLayer('AdLayer2');   
  }   
  function   MoveLeftLayer(layerName)   {   
	  var x = 10;   
	  var y = 140;   
	  var diff = (document.body.scrollTop + y - document.all.AdLayer1.style.posTop)*.40;   
	  var y = document.body.scrollTop + y - diff;   
	  eval("document.all." + layerName + ".style.posTop =   parseInt(y)");   
	  eval("document.all."   +   layerName   +   ".style.posLeft   =   x");   
	  setTimeout("MoveLeftLayer('AdLayer1');",   20);   
  }   
  function   MoveRightLayer(layerName)   {   
	  var   x   =   10;   
	  var   y   =   140;   
	  var   diff   =   (document.body.scrollTop   +   y   -   document.all.AdLayer2.style.posTop)*.40;   
	  var   y   =   document.body.scrollTop   +   y   -   diff;   
	  eval("document.all."   +   layerName   +   ".style.posTop   =   y");   
	  eval("document.all."   +   layerName   +   ".style.posRight   =   x");   
	  setTimeout("MoveRightLayer('AdLayer2');",   20);   
  }  
  document.write("<div id=AdLayer1 style='position:absolute;visibility:hidden;z-index:1'><img src=images/30left.jpg></div>"   
    +"<div   id=AdLayer2   style='position:absolute;visibility:hidden;z-index:1'><img src=images/30right.jpg></div>");   
  initEcAd()   
  //-->   
  </SCRIPT>
</head>
<body leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>

<%@ include file="head.jsp" %>
<table width=782 height="670" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td height=670 width=235 valign=top align=left>
			<iframe id="left" name="left" src="left.jsp"  frameborder="0" scrolling="no" width=235 height=670></iframe>
		</td>
		<td width=43></td>
		<td width=542 valigh=top align=left>
			<iframe id="left" name="menu" src="main.jsp" frameborder="0" scrolling="no" width=542 height=670></iframe>
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>
  </body>
</html>
