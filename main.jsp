<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>main</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" rightmargin="0" leftmargin="0">
<table width=542 valign=top>
<tr>

<td width=542>
			<table width="542" height="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
				    <td width=25 bgcolor="#ffffff"></td>
					<td width="542" background="images/swf-backpic.jpg" align="right"><jsp:include page="picnews.jsp"/></td>
				</tr>
				<tr>
				    <td width=25 bgcolor="#ffffff"></td>
					<td width="542" height=37><img src="images/r8.jpg"></td>
				</tr>
				<tr valign=top  height=300>
					<td  height=100% colspan=2>
						<table width="542" height=300 valign=top border="0" cellpadding="0" cellspacing="0" >
							<tr  valign=top align=right>
							  <td width="542" background="images/index_3_18.gif">
									<jsp:include page="indexnews.jsp" flush="true"/>
							  </td>								
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td></tr></table>
		
</body>

</html>
