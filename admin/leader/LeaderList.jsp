<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.admin.leader.*"%>
<%@ page import="java.util.*"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>�쵼��Ϣ�б�</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
	</head>
	<body>
		<Script Language=JavaScript>
			function checkall()     
			{  var num;     
			   num=document.form2.elements.length;     
			        
			   if(document.form2.chkall.checked)     
			   {  var i;     
			      for(i=0;i<num;i++)     
			        if(document.form2.elements[i].type=="checkbox"&&document.form2.elements[i].name!="chkall")     
			           document.form2.elements[i].checked = true;     
			      return true;     
			   }     
			   else   
			   {  var j;     
			      for(i=0;i<num;i++)     
			        if(document.form2.elements[i].type == "checkbox"&&document.form2.elements[i].name!="chkall")     
			           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     
			      return true;     
			   }     
			     
			}     
			</Script>
<%
		int curPage = (request.getParameter("curPage") == null ? 1
				: Integer.parseInt(request.getParameter("curPage")));		
		LeaderList leaderList = new LeaderList();		
		List list =BasicDAO.queryByHql("FROM Leader");
		

%>
		
		<form action="servlet/DelLeader" method="post" name="form2"
			id="form2">
					<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input name="chkall" type="checkbox" id="chkall" value="checkbox"
							onclick="checkall();">
						ѡȡ���е��쵼&nbsp;&nbsp;
						<input type="submit" name="Submit" value="ɾ����ѡ���쵼"
							onclick="{if(confirm('ȷ��ɾ��ѡ�е��û���')){return true;}return false;}">
					</td>
					<td align="right">
						<input type="button" name="Submit2" value="����쵼"
							onClick="location.href='LeaderAdd.jsp'">
						&nbsp;&nbsp;
					</td>
				</tr>
			</table>
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td width="35">
						ѡ��
					</td>
					<td width="35">
						���
					</td>
					<td width="100">
						����
					</td>
					<td>
						ְ��
					</td>
					<td>
						�칫�ص�
					</td>
					<td>
						��ϵ�绰
					</td>
					<td>
						��������
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Leader leader = (Leader) list.get(i);
				%>

				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="delid" type="checkbox" id="delid" value="<%=leader.getId() %>">
					</td>
					<td width="35">
						p<%=i%></td>
					<td width="100">
						<a href="admin/leader/LeaderEdit.jsp?id=<%=leader.getId()%>"><%=leader.getName()%></a>
					</td>
					<td><%=leader.getPost()%></td>
					<td><%=leader.getAddress()%></td>
					<td><%=leader.getTel()%></td>
					<td><%=leader.getEmail()%></td>
				</tr>
				
				<%
						}
					}
				 %>

			</table>
	
		</form>

	</body>
</html>

