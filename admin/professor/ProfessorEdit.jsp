<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String id = request.getParameter("id");
	if(id==null){	
		out.println(JavaScript.alertandBack("非法访问!"));
		return ;		
	}		
	Professor professor = ProfessorManage.getProfessor(Integer.valueOf(id));
	if(professor==null){
		out.println(JavaScript.alertandBack("该导师信息不存在!"));
		return;
	}
%>
<html>
	<head>
		<base href="<%=basePath%>">
		
		<title>修改导师信息</title>
		<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
		<script language="JavaScript" src="js/basicJS.js"></script>
		<script type="text/javascript"　>
		
			function CheckForm(){	
			
				if(!isNull("name","导师姓名"))
			 	{
			 		return false;
				}					
			}
			
		</script>
	</head>
	<body>
		<form action="admin/professor/ProfessorSave.jsp?action=admin" method="post" name="myform" onSubmit="return CheckForm()">
			<table width="90%" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr>
					<td colspan="3" align="center" class="titlebg">
						修改导师信息
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						导师类别：
						<select name="gradeid" id="gradeid">							
							<option value="1" <%if(professor.getGradeid().equals(1)) out.println("selected"); %>>
								院士
							</option>
							<option value="2" <%if(professor.getGradeid().equals(2)) out.println("selected"); %>>
								博导
							</option>
							<option value="3" <%if(professor.getGradeid().equals(3)) out.println("selected"); %>>
								硕导
							</option>
							<option value="4" <%if(professor.getGradeid().equals(4)) out.println("selected"); %>>
								讲师
							</option>
						</select>
					</td>
					<td>
						登录密码：
						<input name="pwd" type="text" id="password" size="15">
					</td>
					<td>
						排列序号：
						<input name="orderid" type="text" id="orderid" size="8" value="<%=professor.getOrderid()==null?"": professor.getOrderid() %>">
						（不填则按姓名音序排列）
					</td>
				</tr>
				<tr>
					<td colspan="3" class="tdbg">
						<fieldset>
							<legend>
								基本信息
							</legend>
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<tr>
									<td>
										姓&nbsp;&nbsp;&nbsp;&nbsp;名：
										<input name="name" type="text" id="name" size="25" value="<%=professor.getName() %>">
									</td>
									<td>
										性&nbsp;&nbsp;&nbsp;&nbsp;别：
										<select name="sex" id="sex">
											<option value="1" <%if(professor.getSex()!=null&&professor.getSex()>0) out.println("selected"); %>>
												男
											</option>
											<option value="0"  <%if(professor.getSex()!=null&&professor.getSex()<0) out.println("selected"); %>>
												女
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										出生年月：
										<input name="birth" type="text" id="birth" size="25" value="<%=professor.getBirth()==null?"": professor.getBirth()%>">
									</td>
									<td>
										职&nbsp;&nbsp;&nbsp;&nbsp;称：
										<input name="degree" type="text" id="degree" size="25" value="<%=professor.getDegree()==null?"": professor.getDegree()%>">
									</td>
								</tr>
								<tr>
									<td>
										所属学科：
										<input name="major" type="text" id="major" size="25" value="<%=professor.getMajor()==null?"":professor.getMajor() %>">
									</td>
									<td>
										电&nbsp;&nbsp;&nbsp;&nbsp;话：
										<input name="tel" type="text" id="tel2" size="25" value="<%=professor.getTel()==null?"": professor.getTel()%>">
									</td>
								</tr>
								<tr>
									<td>
										办公地点：
										<input name="address" type="text" id="address2" size="25" value="<%=professor.getAddress()==null?"": professor.getAddress()%>">
									</td>
									<td>
										电子邮箱：
										<input name="email" type="text" id="email2" size="25" value="<%=professor.getEmail()==null?"":professor.getEmail() %>">
									</td>
								</tr>
								<tr>
									<td colspan="2">
										上传照片：
										<input type=hidden name="filename" value="">
										<input type=hidden name="fileurl" value="">	
										<iframe name="uploadpic" src="upload/upsinglepic.jsp?action=show&fileurl=<%=professor.getImageurl()==null?"":professor.getImageurl() %>&filename=<%=professor.getImageurl()==null?"":professor.getImageurl() %>" marginWidth=0
											marginHeight=3 frameborder=0 width="85%" height="25"
											scrolling=no framespacing=0 allowtransparency="yes"></iframe>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr valign="top" class="tdbg">
					<td colspan="3">
						个人简介：&nbsp;&nbsp;
						<textarea name="resume" cols="60" rows="5" id="resume"><%=professor.getResume()==null?"": HtmlEncode.inHtml(professor.getResume())%></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						研究方向：&nbsp;&nbsp;
						<textarea name="field" cols="60" rows="5" id="field" ><%=professor.getField()==null?"":HtmlEncode.inHtml(professor.getField())%></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						科研项目：&nbsp;&nbsp;
						<textarea name="projects" cols="60" rows="5" id="projects"><%=professor.getProjects()==null?"":HtmlEncode.inHtml(professor.getProjects()) %></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						学术著作：&nbsp;&nbsp;
						<textarea name="book" cols="60" rows="5" id="book"><%=professor.getBook()==null?"": HtmlEncode.inHtml(professor.getBook())%></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						获奖情况：&nbsp;&nbsp;
						<textarea name="honor" cols="60" rows="5" id="honor"><%=professor.getHonor()==null?"":HtmlEncode.inHtml(professor.getHonor()) %></textarea>
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="3">
						<input type="submit" name="Submit" value="修&nbsp;&nbsp;改">
						&nbsp;
						<input type="reset" value="重&nbsp;&nbsp;置">	
						&nbsp;
						<input type="button" value="返&nbsp;&nbsp;回" onClick="location.href='ProfessorList.jsp'">					
						<input type="hidden" name="id" id="id" value="<%=professor.getId()%>" >
					</td>
				</tr>
			</table>
		</form>

	</body>
</html>
