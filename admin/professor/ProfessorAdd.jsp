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
		 
		
		<title>��ӵ�ʦ��Ϣ</title>
		<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
		<script language="JavaScript" src="js/basicJS.js"></script>
		<script type="text/javascript"��>
		
			function CheckForm(){	
			
				if(!isNull("name","��ʦ����"))
			 	{
			 		return false;
				}	
				if(!isNull("pwd","��¼����"))
			 	{
			 		return false;
				}	
				var picname = myform.fileurl.value;
				var name=picname.substring(picname.lastIndexOf("."),picname.length);   
			  	if (name!=".gif" && name!=".jpg"&&name!=".jpeg"&&name!=".JPEG"&&name!=""&&name!=".JPG"&&name!= ".GIF"&&name !=".bmp"&&name!=".BMP")   
			  	{   
			   		alert("���ϴ�ͼƬ�ļ���gif/jpg/jpeg/bmp��,��ɾ���������ϴ���");   
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
						��ӵ�ʦ��Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ʦ���
						<select name="gradeid" id="gradeid">							
							<option value="1">
								Ժʿ
							</option>
							<option value="2">
								����
							</option>
							<option value="3">
								˶��
							</option>
							<option value="4">
								��ʦ
							</option>
						</select>
					</td>
					<td>
						��¼���룺
						<input name="pwd" type="text" id="pwd" size="15">
					</td>
					<td>
						������ţ�
						<input name="orderid" type="text" id="orderid" size="8">
						�������������������У�
					</td>
				</tr>
				<tr>
					<td colspan="3" class="tdbg">
						<fieldset>
							<legend>
								������Ϣ
							</legend>
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<tr>
									<td>
										��&nbsp;&nbsp;&nbsp;&nbsp;����
										<input name="name" type="text" id="name" size="25">
									</td>
									<td>
										��&nbsp;&nbsp;&nbsp;&nbsp;��
										<select name="sex" id="sex">
											<option value="1" selected>
												��
											</option>
											<option value="0">
												Ů
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										�������£�
										<input name="birth" type="text" id="birth" size="25">
									</td>
									<td>
										ְ&nbsp;&nbsp;&nbsp;&nbsp;�ƣ�
										<input name="degree" type="text" id="degree" size="25">
									</td>
								</tr>
								<tr>
									<td>
										����ѧ�ƣ�
										<input name="major" type="text" id="major" size="25">
									</td>
									<td>
										��&nbsp;&nbsp;&nbsp;&nbsp;����
										<input name="tel" type="text" id="tel2" size="25">
									</td>
								</tr>
								<tr>
									<td>
										�칫�ص㣺
										<input name="address" type="text" id="address2" size="25">
									</td>
									<td>
										�������䣺
										<input name="email" type="text" id="email2" size="25">
									</td>
								</tr>
								<tr>
									<td colspan=2 height=25>
										�ϴ���Ƭ��				
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
						���˼�飺&nbsp;&nbsp;
						<textarea name="resume" cols="60" rows="5" id="resume"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						�о�����&nbsp;&nbsp;
						<textarea name="field" cols="60" rows="5" id="field"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						������Ŀ��&nbsp;&nbsp;
						<textarea name="projects" cols="60" rows="5" id="projects"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						ѧ��������&nbsp;&nbsp;
						<textarea name="book" cols="60" rows="5" id="book"></textarea>
					</td>
				</tr>
				<tr class="tdbg">
					<td colspan="3">
						�������&nbsp;&nbsp;
						<textarea name="honor" cols="60" rows="5" id="honor"></textarea>
					</td>
				</tr>
				<tr align="center" class="tdbg">
					<td colspan="3">
						<input type="submit" name="Submit" value="��&nbsp;&nbsp;��">
						&nbsp;
						<input type="reset" value="��&nbsp;&nbsp;��">	
						&nbsp;
						<input type="button" value="��&nbsp;&nbsp;��" onclick="location.href='ProfessorList.jsp'">					
					</td>
				</tr>
			</table>
		</form>
		
	</body>
</html>