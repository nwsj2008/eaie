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
		<title>��ർ��</title>
		<style type=text/css>
			body  {
				margin:0px;
				background-color: #0080C0;
			}
			table  { border:0px; }
			td  { font:normal 12px ����; }
			img  { vertical-align:bottom; border:0px; }
			a  { font:normal 12px ����; color:#000000; text-decoration:none; }
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
					obj.title="�򿪹���˵�";
				}
				else{
					parent.frame.cols="180,*";
					displayBar=true;
					obj.src="image/dh_close.gif";
					obj.title="�رչ���˵�";
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
					<img src="admin/images/dh_close.gif" width="30" height="30" onClick="switchBar(this)" title="�رչ���˵�,ˢ�º��" style="cursor:hand">
				</td>
			</tr>
			<tr>
				<td height="25" background="admin/images/dh_bg.gif" class="menu_title">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<a href="tmszsxtstudent/stmstudent/tmmain.jsp" target="main"><b>������ҳ</b>
								</a> |
								<a href="tmszsxtstudent/tmlogout.jsp" target="_parent"><b>�˳�</b>
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
									�û�����<%=tmuser.getUsername()%>								
								</td>
							</tr>
						
							<tr>
								<td height="20">
									<a href="tmszsxtstudent/tmusers/ModifyPwd.jsp" target="main">�޸ĵ�¼����</a>
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
          <td style="cursor:hand" onClick="javascript:spread('list1','img1');">ϵͳ����</td>
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
        			<td height="20"><a href="tmszsxtstudent/stmnews/StmnewsList.jsp" target="main">�鿴������֪ͨ</a></td>
      			</tr>
<%
				//}
				//if(UserManage.HasRight(4,user)){
%>
      			<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentAdd.jsp" target="main">�ύ����������</a>
      			</tr> 
      			<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentInfo.jsp" target="main">�鿴����������Ϣ</a>
      			</tr>   			
      			<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentEdit.jsp" target="main">�޸ĸ���������Ϣ</a>
      			</tr>
<%
				//}
				//if(UserManage.HasRight(8,user)){
%>
 
				<tr>
          			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentKaohe.jsp" target="main">�鿴����֪ͨ</a>
        		</tr>
<%
				//}
				//if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="tmszsxtstudent/stmstudent/StmstudentLuq.jsp" target="main">�鿴¼ȡ��Ϣ</a></td>
        		
        		</tr>
<%
				//}
				//if(UserManage.HasRight(8,user)){
%>

	  			<tr>
        			<td height="20"><a href="tmszsxtstudent/tmmain.jsp" target="main">ϵͳʹ��˵��</a></td>
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
          <td height="20"><a href="admin_sys.asp" target="main">ϵͳ����</a> | <a href="count/main.asp" target="main">ͳ��ϵͳ</a></td>
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
