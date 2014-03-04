<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
   <title>foot.jsp</title>
  
<style type="text/css">
<!--
.foot {
	font-size: 12px;
	line-height: 150%;
	color: #4b7f9d;
}
.bottomline {
	border-left-style: none;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #00151E;
	border-top-width: 1px;
	border-top-style: solid;
	border-top-color: #00151E;
	border-right-style: none;
}
-->
</style>
  </head>
  
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<table width="778" border="0" align="center"  cellpadding="0" cellspacing="0" valign=top>
<tr valign=top>	
     <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width="500" background="images/bottom.gif" valign=top>
			<table border="0" cellpadding="0" cellspacing="0" width="195" >
			    <tr valign=top><td colspan=5><img src="images/foot-left.jpg"></td></tr>
				<tr>
					<td width="100%" class="text" style="color:#4C5B63" align="center" valign="middle">
						<table width="40%" border="0" align="center" cellpadding="0" cellspacing="1">
         						 <br><tr >
           						 <td align="center" class="menu1"><a href="ContactUs.jsp" class="footmenu">联系我们</a></td>
            						<td align="center" class="menu1"><a href="message/ErrReport.jsp" class="footmenu">意见反馈</a></td>
           						 <td align="center" class="menu1"><a href="admin/login.jsp" target="_blank" class="footmenu">登录管理</a></td>
         						 </tr>
      				    </table>
					</td>
				</tr>
			</table>
		</td>
		 <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
<tr>
       
        <td width="778" valign="top">
		<table width="778" border="0" cellpadding="0" cellspacing="0">

           <tr height=25><td valign="middle" style="color:#4b7f9d " align=center> 
            版权所有：北京交通大学电子信息工程学院&nbsp;&nbsp;&nbsp;&nbsp; 
            地址：北京市海淀区上园村3号，北京交通大学九号教学楼&nbsp;&nbsp; 
            邮编：100044&nbsp;&nbsp; 
          </td></tr>
          </table>
        </td>
        
</tr>	
</table>
  </body>
</html>
