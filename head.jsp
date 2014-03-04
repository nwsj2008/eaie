<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.system.*" %>
<% 
String website="http://localhost/eaie";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>head.jsp</title>
  <link href="css/style.css" rel="stylesheet" type="text/css">
		<LINK href="css/menu.css"  type=text/css rel=stylesheet>
<style type="text/css">
<!--

a.head:link {
	color: #FFFFFF;
	text-decoration: none;
	font-size: 12px;
	font-weight: bold;
}
a.head:visited {
	color: #FFFFFF;
	text-decoration: none;
	font-size: 12px;
	font-weight: bold;
}
a.head:active {
	color: #61CFEB;
	text-decoration: none;
	font-size: 12px;
	font-weight: bold;
}
a.head:hover {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
}
.topmenu {
	border-top-width: 1px;
	border-bottom-width: 1px;
	border-top-style: solid;
	border-bottom-style: solid;
	border-top-color: #000000;
	border-bottom-color: #000000;
}
-->
</style>
  </head>
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<table width=782 border=0 cellpadding=0 cellspacing=0 align="center" height="26">
  <tr><td height="5" bgcolor="#445390" colspan="5"></td>
  </tr>
<tr height=18>
     <td width="227" align=left><a href=#>&nbsp;&nbsp;<img src=images/m02.gif width=70 height="18" border=0></a></td>
    <td  align="left" valign=middle nowrap><script language=JavaScript>
  today=new Date();
  function initArray(){
   this.length=initArray.arguments.length
   for(var i=0;i<this.length;i++)
   this[i+1]=initArray.arguments[i]  }
   var d=new initArray(
     "星期日",
     "星期一",
     "星期二",
     "星期三",
     "星期四",
     "星期五",
     "星期六");
    document.write("<font color=#800080 style='font-size:12px;font-family: 宋体;font-weight:bold'>",
     today.getYear(),"年",
     today.getMonth()+1,"月",
     today.getDate(),"日","&nbsp;",
     d[today.getDay()+1],
     "</font>" );
   </script></td>
   <td align="center" bgcolor="#FFFFFF" nowrap style="font-size:12; font-weight:bold; color:#800080;">总访问量：<%=Operation.getVisitNum()%>人次</td>
   <td align="right" width="217" valign=bottom><img src=images/m02-right--.gif width=217 border=0 style="height: 18px;"></td>
  </tr>

</table>
<table width=782 height="150" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
  <tr height="150">
     <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
    <td height="150" valign="center" background="images/top2-.jpg" align="center" colspan="2"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="200" height="145">
      <param name="movie" value="images/circlue.swf" >
      <param name="quality" value="high">
      <param name="wmode" value="transparent">
      <embed src="images/circlue.swf" quality="high" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="560" height="145"></embed>
    </object></td>

	   <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
  </tr>
  <tr>	  <td width="78" height="5"><img src="images/gray-title.gif" width="100%"></td></tr>
</table>
<table id="secTable" nowrap width=782 height=25 border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
  <tr>
    <!--FLASH-->
     <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
    <td width=780 height=25 colspan=2 valign="bottom" background="images/1-.jpg">
         <TABLE cellSpacing=0 cellPadding=0 width="780"  border=0 height="25">
            		<TBODY>
              			<TR>
              				<TD valign="bottom" width=20>&nbsp;</TD>
                  			<TD width="780" height="25" class=write><!-- Begin menu -->
                    		<SCRIPT language=javascript src="js/transmenu.js"></SCRIPT>
                   			<DIV id=wrap><DIV id=menu>
                        		<TABLE cellSpacing=5 cellPadding=0 border=0 align=center width="760" height="25">
                          			<TBODY>
                            			<TR>
                            			<td width=10></td>
                            				<TD ><A width="55" class=mainlevel-trans href="index.jsp">首页</A></TD>
                                			<TD><A width="81" class=mainlevel-trans id=menu62 href="ShowContent.jsp?smallclassid=91&type=1">学院概况</A></TD>
                                			<TD><A width="94"class=mainlevel-trans id=menu59 href="ShowClass.jsp?id=21&type=2">本科生工作</A></TD>
                                			<TD><A width="94"class=mainlevel-trans id=menu61 href="ShowClass.jsp?id=31&type=3">研究生工作</A></TD>
                                			<TD><A width="81" class=mainlevel-trans id=menu71 href="ShowClass.jsp?id=41&type=4">科学研究</A></TD>
                                			<TD><A width="81" class=mainlevel-trans id=menu93 href="teacher/teachers.jsp?gradeid=1&type=5">师资队伍</A></TD>
                                			<TD><A width="131" class=mainlevel-trans id=menu95 href="ShowContent.jsp?id=58&type=6">学科与实验室建设</A></TD>
                                			<TD><A width="81" class=mainlevel-trans  id=menu99 href="/party/" target=_blank>党建工作</A></TD>
											<TD><A width="81" class=mainlevel-trans id=menu98 href="/ShowClass.jsp?id=81&type=7">学生天地</A></TD>
<!--                               
                                			<TD><A class=mainlevel-trans id=menu66 href="#">客户服务</A></TD>
-->
                           			 	</TR>
                          			</TBODY>
                        		</TABLE>
                    		</DIV></DIV>
                    		<SCRIPT language=javascript src="js/menu.js"></SCRIPT>
                   			</TD><!-- End menu -->
				   			<TD vAlign=top align=right width=274>&nbsp;</TD>
              			</TR>
            		</TBODY>
          		</TABLE>
	</td>
     <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
    <!--FLASH-->
  </tr>
</table>

  </body>
</html>
