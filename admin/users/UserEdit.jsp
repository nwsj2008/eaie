<%@ page contentType="text/html;charset=GB2312" pageEncoding="GB2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<html>
	<head>
		<title>�û��༭</title>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		%>				
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="javascript" src="js/basicJS.js"></script>
		<script type="text/javascript">   	
		function CheckForm(){	
		     
			 if(!isNull("teacher","�û���"))
			 {
			 	return false;
			 }			
			 if(!isNull("pwd","����"))
			 {
			 	return false;
			 }
			 if(!isNull("pwd2","�ظ�����"))
			 {
			 	return false;
			 }
			 if(!isEqual("pwd","pwd2","�����������벻һ�£�"))
			 {
			 	return false;
			 }	
			 var num; 
			 var flag = false;    
   			 num=document.userform.elements.length
			 for(var i=0;i<num;i++){     
				if(document.userform.elements[i].type=="checkbox"&&document.userform.elements[i].name!="isadmin"){     
				   if(document.userform.elements[i].checked ==true){
				   	 flag = true;
				   }
				}  		
			 }
			 if(flag==false){
			 	
			 	alert("��ѡ���û�Ȩ��");
			 	return false;
			 }
		    
			
		} 
		function checkall()     
		{  	
			var num;     
   			num=document.userform.elements.length;     
        
  			if(document.userform.isadmin.checked)     
   			{  var i;     
			   for(i=0;i<num;i++)     
				if(document.userform.elements[i].type=="checkbox"&&document.userform.elements[i].name!="isadmin")     
				   document.userform.elements[i].checked = true;  		
				document.userform.isadmin.value = 1 ;		
			   return true;     
		    }     
		    else   
		    { var i;     
			  for(i=0;i<num;i++)     
				if(document.userform.elements[i].type == "checkbox"&&document.userform.elements[i].name!="isadmin")     
					document.userform.elements[i].checked = !(document.userform.elements[i].checked);  
				document.userform.isadmin.value = 0 ;  			 
			  return true;     
		    }     
     
		}  
	</script>
	</head>
	<body>
	<%
		String id = request.getParameter("id");
		List list =	BasicDAO.queryByHql("from Bigclass");	
		
		if(id == null){
				
			
	%>	
		<form name="userform" method="post" action="admin/users/UserSave.jsp"
			onSubmit="return CheckForm()">
			<table width="90%" border="0" align="center" cellpadding="4"
				cellspacing="1" class="border">
				<tr align="center">
					<td colspan="2" class="titlebg">
						����û�
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�û�������
					</td>
					<td>
						<input name="teacher" type="text" id="teacher" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ʼ���룺
					</td>
					<td>
						<input name="pwd" type="password" id="pwd" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�ظ����룺
					</td>
					<td>
						<input name="pwd2" type="password" id="pwd2" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						����Ȩ�ޣ�
					</td>
					<td>
						<input name="isadmin" type="checkbox" id="isadmin" value="0"
							onClick="checkall();">
						��վ����Ա
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						<fieldset>
							<legend>
								��������
							</legend>
							<table width="100%" border="0" align="center" cellpadding="3"
								cellspacing="0">
								<tr>
									<td>
										<input type="radio" name="part" value="ѧԺ�칫��" checked>
										ѧԺ�칫��
									</td>
									<td>
										<input type="radio" name="part" value="��ѧ��">
										��ѧ��
									</td>
									<td>
										<input type="radio" name="part" value="�о�����">
										�о�����
									</td>
									<td>
										<input type="radio" name="part" value="��ί">
										��ί
									</td>
								</tr>
								<tr>
									<td>
										<input type="radio" name="part" value="��ҵָ��С��">
										��ҵָ��С��
									</td>
									<td>
										<input name="part" type="radio" value="ʵ����">
										ʵ����
									</td>
									<td>
										<input type="radio" name="part" value="ѧ��">
										ѧ��
									</td>								
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						<fieldset>
							<legend>
								������Ŀ
							</legend>
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<tr>
		<%
			if(list.size()<1||list==null){
				
				out.println("<td>δ�����Ŀ</td>");
			}else{
				
				for(int i=0;i<list.size();i++){
							
					Bigclass bg = (Bigclass)list.get(i);
		%>
					<td><input name="bigclassid" type="checkbox"  value="<%=bg.getBigclassid()%>"><%=bg.getBigclass() %></td>
					<%if((i+1)%4==0){ %></tr><tr> <%} %>
		<% 
				}
			}
		%>	</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="�� ��">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="�� ��">
					</td>
				</tr>
			</table>
		</form>
<%
		}else{
		
			Teacher user = (Teacher) BasicDAO.queryById(Teacher.class,Integer.parseInt(id));				
			if(user!=null){
%>
		<form name="userform" method="post" action="admin/users/UserSave.jsp">
			<table width="90%" border="0" align="center" cellpadding="4"
				cellspacing="1" class="border">
				<tr align="center">
					<td colspan="2" class="titlebg">
						�޸��û�
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�û�������
					</td>
					<td>
						<%=user.getTeacher() %>
					</td>
				</tr>				
				<tr class="tdbg">
					<td>
						����Ȩ�ޣ�
					</td>
					<td>
						<input name="isadmin" type="checkbox" id="isadmin" onClick="return checkall();" value="<%=(user.getIsadmin()!=null&&user.getIsadmin()>0)? "1":"0"%>" <%=(user.getIsadmin()!=null&&user.getIsadmin()>0)? "checked":""%>>
						��վ����Ա
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						<fieldset>
							<legend>
								��������
							</legend>
							<table width="100%" border="0" align="center" cellpadding="3"
								cellspacing="0">
								<tr>
									<td>
										<input type="radio" name="part" value="ѧԺ�칫��" <%=user.getPart().equalsIgnoreCase("ѧԺ�칫��")?"checked":"" %>>
										ѧԺ�칫��
									</td>
									<td>
										<input type="radio" name="part" value="��ѧ��" <%=user.getPart().equalsIgnoreCase("��ѧ��")?"checked":"" %>>
										��ѧ��
									</td>
									<td>
										<input type="radio" name="part" value="�о�����" <%=user.getPart().equalsIgnoreCase("�о�����")?"checked":"" %>>
										�о�����
									</td>
									<td>
										<input type="radio" name="part" value="��ί" <%=user.getPart().equalsIgnoreCase("��ί")?"checked":"" %>>
										��ί
									</td>
								</tr>
								<tr>
									<td>
										<input type="radio" name="part" value="��ҵָ��С��" <%=user.getPart().equalsIgnoreCase("��ҵָ��С��")?"checked":"" %>>
										��ҵָ��С��
									</td>
									<td>
										<input name="part" type="radio" value="ʵ����" <%=user.getPart().equalsIgnoreCase("ʵ����")?"checked":"" %>>
										ʵ����
									</td>
									<td>
										<input type="radio" name="part" value="ѧ��" <%=user.getPart().equalsIgnoreCase("ѧ��")?"checked":"" %>>
										ѧ��
									</td>								
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						<fieldset>
							<legend>
								������Ŀ
							</legend>
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<tr>
		<%
						if(list.size()<1||list==null){
				
							out.println("<td>δ�����Ŀ</td>");
						}else{
				
							for(int i=0;i<list.size();i++){
							
								Bigclass bg = (Bigclass)list.get(i);
		%>
								<td>
									<input name="bigclassid" type="checkbox" value="<%=bg.getBigclassid()%>" <%if(UserManage.HasRight(bg.getBigclassid(),user)){out.println("checked"); }%>>
									<%=bg.getBigclass() %>
								</td>
								<%if((i+1)%4==0){ %></tr><tr> <%} %>
		<% 
							}
						}
		%>						</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="�� ��">
						&nbsp;&nbsp;
						<input type="button" name="Submit2" value="ȡ ��" onclick="javascript:window.location.href='UserList.jsp'">
						<input type="hidden" name="id" value="<%=user.getId().toString() %>">
					</td>
				</tr>
			</table>				
		</form>
		
  
<%		}
	}
%>

	</body>
</html>
