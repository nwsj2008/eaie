<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.admin.users.*"%>
<%@page import="com.eaie.admin.leader.LeaderDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<base href="<%=basePath%>">

		<title>�༭�쵼��Ϣ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
		<link href="admin_style.css" rel="stylesheet" type="text/css">

		<script language="JavaScript" src="js/basicJS.js"></script>
		<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("name","�쵼����")){
				
				return false;
			}
			if(!isNull("post","ְ��")){
				
				return false;
			}
			if(!validateDig("postid","ְ���Ų��Ϸ�")){
				
				var tel = document.getElementById("postid");
				tel.focus();
				tel.value="";
				return false;
			}		
			if(!isTooLong("charge",50,"��Ҫְ��")){				
				return false;
			}
			
			if(document.getElementById("email").value !='')	
			{
				if(!isEmail("email")){
				
					return false;
				}	
			}				
		
		}
</script>

	</head>

	
	<body>
	<%
	String id=request.getParameter("id");
	Leader leader=LeaderDAO.GetLeader(Integer.parseInt(id));
	if(leader==null){		
		out.println("<center><h4>û���쵼��¼�������</h4></center>");
 		return;
	}

	 %>
		<form name="myform" method="post" action="servlet/EditLeader" onSubmit="return formCheck()">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center">
					<td colspan="2" class="titlebg">
						�༭�쵼��Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
					</td>
					<td>
						<input name="id" id="id" type="hidden" value="<%=id%>">
						<input name="name" type="text" id="name" value="<%=leader.getName()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						ְ&nbsp;&nbsp;&nbsp;&nbsp;��
					</td>
					<td>
						<input name="post" type="text" id="post" value="<%=leader.getPost()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						ְ���ţ�
					</td>
					<td>
						<input name="postid" type="text" id="postid"
							value="<%=leader.getPostid()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�칫��ַ��
					</td>
					<td>
						<input name="address" type="text" id="address"
							value="<%=leader.getAddress()%>" size="40">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ϵ�绰��
					</td>
					<td>
						<input name="tel" type="text" id="tel" value="<%=leader.getTel()%>"
							size="40">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�������䣺
					</td>
					<td>
						<input name="email" type="text" id="email" value="<%=leader.getEmail()%>"
							size="40">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��Ҫְ��
					</td>
					<td>
						<textarea name="charge" cols="40" rows="4" id="charge"><%=leader.getCharge()%></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�ϴ���Ƭ��
					</td>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">	
						<iframe name="uploadpic"
							src="upload/upsinglepic.jsp?action=show&fileurl=<%=leader.getImageurl()==null?"":leader.getImageurl() %>&filename=<%=leader.getImageurl()==null?"":leader.getImageurl() %>" marginWidth=0
							marginHeight=3 frameborder=0 width="320" height="25" scrolling=no
							framespacing=0 allowtransparency="yes"></iframe>						
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="��&nbsp;��">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="��&nbsp;��">
						<input name="id" type="hidden" id="id" value="<%=("id")%>">					
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>