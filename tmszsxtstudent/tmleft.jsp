<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tmusers.*" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
%>		

<html>
	<head>
		<base href="<%=basePath%>">
		<title>左侧导航</title>
		<style type=text/css>
			body  {
				margin:0px;
				background-color: #0080C0;
			}
			table  { border:0px; }
			td  { font:normal 12px 宋体; }
			img  { vertical-align:bottom; border:0px; }
			a  { font:normal 12px 宋体; color:#000000; text-decoration:none; }
			a:hover  { color:#cc0000;text-decoration:underline; }
			.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#EAEAEA; }
			.menu_title  {
				padding-left: 20px;
			}
		</style>
		<script language="JavaScript">
			function preloadImg(src)
			{
				var img=new Image();
				img.src=src
			}
			preloadImg("image/dh_open.gif");
			
			var displayBar=true;
			function switchBar(obj)
			{
				if (displayBar)
				{
					parent.frame.cols="0,*";
					displayBar=false;
					obj.src="image/dh_open.gif";
					obj.title="打开管理菜单";
				}
				else{
					parent.frame.cols="180,*";
					displayBar=true;
					obj.src="image/dh_close.gif";
					obj.title="关闭管理菜单";
				}
			}
			function spread(thename,img)
			{
			if(document.all[thename].style.display=="none")
			  {document.all[thename].style.display="";
			  img.src="admin/images/up.gif"}
			else
			  {document.all[thename].style.display="none";
			  img.src="admin/images/down.gif"}
			}
	</script>
	</head>
	<body>
<%	
			Tmstudent tmuser = (Tmstudent)session.getAttribute("TMUSER");		
%>
		<table width="158" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="35" align="right">
					<img src="admin/images/dh_close.gif" width="30" height="30" onClick="switchBar(this)" title="关闭管理菜单,刷新后打开" style="cursor:hand">
				</td>
			</tr>
			<tr>
				<td height="25" background="admin/images/dh_bg.gif" class="menu_title">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<a href="tmszsxtstudent/stmstudent/tmmain.jsp" target="main"><b>管理首页</b>
								</a> |
								<a href="tmszsxtstudent/tmlogout.jsp" target="_parent"><b>退出</b>
								</a>
							</td>
							<td width="40" align="center">
								<img src="admin/images/up.gif" width="12" height="12" border="0" id="img0" onClick="javascript:spread('list0',this)" style="cursor:hand">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<div class="sec_menu" style="width:158">
						<table width="130" border="0" align="center" cellpadding="0"
							cellspacing="0" id="list0" style="display:">
							<tr>
								<td height="20">
									用户名：<%=tmuser.getUsername()%>								
								</td>
							</tr>
						
							<tr>
								<td height="20">
									<a href="tmszsxtstudent/tmusers/ModifyPwd.jsp" target="main">修改登录密码</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td height="20">&nbsp;
					
				</td>
			</tr>
		</table>
		<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list1','img1');">系统管理</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list1','img1');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img1"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
		<div class="sec_menu" style="width:158">
			<table width="135" border="0" align="center" cellpadding="0" cellspacing="0" id="list1" style="display:">   			
 <%
 				//if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)||UserManage.HasRight(4,user)||UserManage.HasRight(6,user)){
 %>
	  			<tr>
        			<td height="20"><a href="tmszsxtstudent/stmnews/StmnewsList.jsp" target="main">查看推免生通知</a></td>
      			</tr>
<%
				//}
				//if(UserManage.HasRight(4,user)){
%>
      			<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentAdd.jsp" target="main">提交推免生申请</a>
      			</tr> 
      			<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentInfo.jsp" target="main">查看个人申请信息</a>
      			</tr>   			
      			<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentEdit.jsp" target="main">修改个人申请信息</a>
      			</tr>
<%
				//}
				//if(UserManage.HasRight(8,user)){
%>
 
				<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentKaohe.jsp" target="main">查看考核通知</a>
        		</tr>
<%
				//}
				//if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentLuq.jsp" target="main">查看录取信息</a></td>
        		
        		</tr>
<%
				//}
				//if(UserManage.HasRight(8,user)){
%>

	  			<tr>
        			<td height="20"><a href="tmszsxtstudent/tmmain.jsp" target="main">系统使用说明</a></td>
      			</tr>
<%
				//}
				//if(user.getIsadmin()!=null&&user.getIsadmin()>0){
%>
     
<%
				//}
 %>
        <!--  
        <tr>
          <td height="20"><a href="admin_sys.asp" target="main">系统管理</a> | <a href="count/main.asp" target="main">统计系统</a></td>
        </tr>
       	-->
      </table>
	  </div>
    </td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>

 
</table>
</body>
</html>
