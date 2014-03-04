<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.admin.users.*"%>
<html>
	<head>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		%>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<Script Language=JavaScript>
			function unselectall()
			{
			    if(document.form1.chkAll.checked){
				document.form1.chkAll.checked = document.form1.chkAll.checked&0;
			    } 	
			}
			
			function CheckAll(form)
			{
			  for (var i=0;i<form.elements.length;i++)
			    {
			    var e = form.elements[i];
			    if (e.Name != "chkAll"&&e.disabled!=true)
			       e.checked = form.chkAll.checked;
			    }
			}
		</Script>
		<title>�û��б�</title>
	</head>
	<%
		int curPage = (request.getParameter("curPage") == null ? 1 : Integer.parseInt(request.getParameter("curPage")));
		UserList ulist = new UserList();
		List list = ulist.getUserList(curPage);
		Page pager = ulist.getCurrentPage();
		if (list.size() == 0) {

			return;

		}
	%>
	<body>
		<form action="admin/users/UserDelete.jsp" method="post" name="form1"
			id="form1">
			<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input name="chkAll" type="checkbox" id="chkAll" value="checkbox"
							onClick="CheckAll(this.form);">
						ѡȡ���е��û�&nbsp;&nbsp;
						<input type="submit" name="Submit" value="ɾ����ѡ���û�"
							onClick="{if(confirm('ȷ��ɾ��ѡ�е��û���')){return true;}return false;}">
					</td>
					<td align="right">
						<input type="button" name="Submit2" value="����û�"
							onClick="location.href='UserEdit.jsp'">
						&nbsp;
					</td>
				</tr>
			</table>

			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td width="35">
						ѡ��
					</td>
					<td>
						����
					</td>
					<td>
						����
					</td>
					<td>
						Ȩ��
					</td>
					<td>
						����¼IP
					</td>
					<td>
						����¼ʱ��
					</td>
					<td>
						��¼����
					</td>
					<td>
						����
					</td>
				</tr>
				<%
						for (int i = 0; i < list.size(); i++) {
						Teacher user = (Teacher) list.get(i);
				%>
				<tr align="center" class="tdbg"
					onMouseOut="this.style.backgroundColor=''"
					onMouseOver="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="delid" type="checkbox" id="delid"
							value="<%=user.getId()%>"
							<%if(user.getIsadmin()!=null&&user.getIsadmin()>0){ out.println("disabled");} %>
							onClick="unselectall()">
					</td>
					<td>
						<a href="admin/users/UserEdit.jsp?id=<%=user.getId()%>"><%=user.getTeacher()%>
						</a>
					</td>
					<td>
						<%=user.getPart()%>
					</td>
					<td>
						<%
									if (user.getIsadmin() != null) {

									if (user.getIsadmin() > 0) {

								out.println("����Ա");

									} else {

								out.println(user.getBigclassid());
									}
								} else {
									out.println(user.getBigclassid());
								}
						%>
					</td>
					<td>
						<%=user.getLastloginip() == null ? "--" : user
						.getLastloginip()%>
					</td>
					<td>
						<%=user.getLastlogintime() == null ? "--" : user
						.getLastlogintime().toLocaleString()%>
					</td>
					<td>
						<%=user.getLogintimes()==null?"0":user.getLogintimes()%>
					</td>
					<td>
						<a href="admin/users/UserEdit.jsp?id=<%=user.getId()%>">�༭</a>&nbsp;
						<%
						if (user.getIsadmin() == null || user.getIsadmin() < 1) {
						%>
						<a href="admin/users/UserDelete.jsp?id=<%=user.getId()%>"
							onclick="{if(confirm('ȷ��ɾ����')){return true;}return false;}">ɾ��</a>
						<%
						} else {
						%>
						ɾ��
						<%
						}
						%>
					</td>
				</tr>
				<%
				}
				%>
			</table>
		</form>
		<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<%@include file="../common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
