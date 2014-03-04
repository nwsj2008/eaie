<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<base href="<%=basePath%>">
		 
		
		<title>添加导师信息</title>
		<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
		<script language="JavaScript" src="js/basicJS.js"></script>
		<script type="text/javascript"　>
		
			function CheckForm(){	
			
				if(!isNull("name","导师姓名"))
			 	{
			 		return false;
				}	
				if(!isNull("pwd","登录密码"))
			 	{
			 		return false;
				}	
				var picname = myform.fileurl.value;
				var name=picname.substring(picname.lastIndexOf("."),picname.length);   
			  	if (name!=".gif" && name!=".jpg"&&name!=".jpeg"&&name!=".JPEG"&&name!=""&&name!=".JPG"&&name!= ".GIF"&&name !=".bmp"&&name!=".BMP")   
			  	{   
			   		alert("请上传图片文件（gif/jpg/jpeg/bmp）,请删除后重新上传！");   
			    	return false;   
			  	}   
			}
			
		</script>
	</head>
	<body>
		<form action="admin/professor/ProfessorSave.jsp" method="post" name="myform" onSubmit="return CheckForm()">
			<table width="70%" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr>
					<td colspan="3" align="center" class="titlebg">
						添加导师信息
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						导师类别：
						<select name="gradeid" id="gradeid">							
							<option value="1">
								院士
							</option>
							<option value="2">
								博导
							</option>
							<option value="3">
								硕导
							</option>
							<option value="4">
								讲师
							</option>
						</select>
					</td>
					<td>
						登录密码：
						<input name="pwd" type="text" id="pwd" size="15">
					</td>
					<td>
						排列序号：
						<input name="orderid" type="text" id="orderid" size="8">
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
										<input name="name" type="text" id="name" size="25">
									</td>
									<td>
										性&nbsp;&nbsp;&nbsp;&nbsp;别：
										<select name="sex" id="sex">
											<option value="1" selected>
												男
											</option>
											<option value="0">
												女
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										出生年月：
										<input name="birth" type="text" id="birth" size="25">
									</td>
									<td>
										职&nbsp;&nbsp;&nbsp;&nbsp;称：
										<input name="degree" type="text" id="degree" size="25">
									</td>
								</tr>
								<tr>
									<td>
										所属学科：
										<input name="major" type="text" id="major" size="25">
									</td>
									<td>
										电&nbsp;&nbsp;&nbsp;&nbsp;话：
										<input name="tel" type="text" id="tel2" size="25">
									</td>
								</tr>
								<tr>
									<td>
										办公地点：
										<input name="address" type="text" id="address2" size="25">
									</td>
									<td>
										电子邮箱：
										<input name="email" type="text" id="email2" size="25">
									</td>
								</tr>
								<tr>
									<td colspan=2 height=25>
										上传照片：				
										<iframe name="uploadpic" src="upload/upsinglepic.jsp" marginWidth=0	marginHeight=3 frameborder=0 width="320" height="25" scrolling=no
										framespacing=0 allowtransparency="yes"></iframe>
										<input type=hidden name="filename" value="">
										<input type=hidden name="fileurl" value="">		</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr valign="top" class="tdbg">
					<td colspan="3">
						个人简介：&nbsp;&nbsp;
						<textarea name="resume" cols="60" rows="5" id="resume"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						研究方向：&nbsp;&nbsp;
						<textarea name="field" cols="60" rows="5" id="field"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						科研项目：&nbsp;&nbsp;
						<textarea name="projects" cols="60" rows="5" id="projects"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						学术著作：&nbsp;&nbsp;
						<textarea name="book" cols="60" rows="5" id="book"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						获奖情况：&nbsp;&nbsp;
						<textarea name="honor" cols="60" rows="5" id="honor"></textarea>
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="3">
						<input type="submit" name="Submit" value="添&nbsp;&nbsp;加">
						&nbsp;
						<input type="reset" value="重&nbsp;&nbsp;置">	
						&nbsp;
						<input type="button" value="返&nbsp;&nbsp;回" onclick="location.href='ProfessorList.jsp'">					
					</td>
				</tr>
			</table>
		</form>
		
	</body>
</html>