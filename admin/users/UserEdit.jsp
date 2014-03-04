<%@ page contentType="text/html;charset=GB2312" pageEncoding="GB2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<html>
	<head>
		<title>用户编辑</title>
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
		     
			 if(!isNull("teacher","用户名"))
			 {
			 	return false;
			 }			
			 if(!isNull("pwd","密码"))
			 {
			 	return false;
			 }
			 if(!isNull("pwd2","重复密码"))
			 {
			 	return false;
			 }
			 if(!isEqual("pwd","pwd2","两次输入密码不一致！"))
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
			 	
			 	alert("请选择用户权限");
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
						添加用户
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						用户姓名：
					</td>
					<td>
						<input name="teacher" type="text" id="teacher" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						初始密码：
					</td>
					<td>
						<input name="pwd" type="password" id="pwd" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						重复密码：
					</td>
					<td>
						<input name="pwd2" type="password" id="pwd2" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						管理权限：
					</td>
					<td>
						<input name="isadmin" type="checkbox" id="isadmin" value="0"
							onClick="checkall();">
						网站管理员
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						<fieldset>
							<legend>
								所属部门
							</legend>
							<table width="100%" border="0" align="center" cellpadding="3"
								cellspacing="0">
								<tr>
									<td>
										<input type="radio" name="part" value="学院办公室" checked>
										学院办公室
									</td>
									<td>
										<input type="radio" name="part" value="教学科">
										教学科
									</td>
									<td>
										<input type="radio" name="part" value="研究生科">
										研究生科
									</td>
									<td>
										<input type="radio" name="part" value="团委">
										团委
									</td>
								</tr>
								<tr>
									<td>
										<input type="radio" name="part" value="就业指导小组">
										就业指导小组
									</td>
									<td>
										<input name="part" type="radio" value="实验室">
										实验室
									</td>
									<td>
										<input type="radio" name="part" value="学生">
										学生
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
								管理栏目
							</legend>
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<tr>
		<%
			if(list.size()<1||list==null){
				
				out.println("<td>未添加栏目</td>");
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
						<input type="submit" name="Submit" value="添 加">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="重 置">
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
						修改用户
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						用户姓名：
					</td>
					<td>
						<%=user.getTeacher() %>
					</td>
				</tr>				
				<tr class="tdbg">
					<td>
						管理权限：
					</td>
					<td>
						<input name="isadmin" type="checkbox" id="isadmin" onClick="return checkall();" value="<%=(user.getIsadmin()!=null&&user.getIsadmin()>0)? "1":"0"%>" <%=(user.getIsadmin()!=null&&user.getIsadmin()>0)? "checked":""%>>
						网站管理员
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="2">
						<fieldset>
							<legend>
								所属部门
							</legend>
							<table width="100%" border="0" align="center" cellpadding="3"
								cellspacing="0">
								<tr>
									<td>
										<input type="radio" name="part" value="学院办公室" <%=user.getPart().equalsIgnoreCase("学院办公室")?"checked":"" %>>
										学院办公室
									</td>
									<td>
										<input type="radio" name="part" value="教学科" <%=user.getPart().equalsIgnoreCase("教学科")?"checked":"" %>>
										教学科
									</td>
									<td>
										<input type="radio" name="part" value="研究生科" <%=user.getPart().equalsIgnoreCase("研究生科")?"checked":"" %>>
										研究生科
									</td>
									<td>
										<input type="radio" name="part" value="团委" <%=user.getPart().equalsIgnoreCase("团委")?"checked":"" %>>
										团委
									</td>
								</tr>
								<tr>
									<td>
										<input type="radio" name="part" value="就业指导小组" <%=user.getPart().equalsIgnoreCase("就业指导小组")?"checked":"" %>>
										就业指导小组
									</td>
									<td>
										<input name="part" type="radio" value="实验室" <%=user.getPart().equalsIgnoreCase("实验室")?"checked":"" %>>
										实验室
									</td>
									<td>
										<input type="radio" name="part" value="学生" <%=user.getPart().equalsIgnoreCase("学生")?"checked":"" %>>
										学生
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
								管理栏目
							</legend>
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<tr>
		<%
						if(list.size()<1||list==null){
				
							out.println("<td>未添加栏目</td>");
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
						<input type="submit" name="Submit" value="修 改">
						&nbsp;&nbsp;
						<input type="button" name="Submit2" value="取 消" onclick="javascript:window.location.href='UserList.jsp'">
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
