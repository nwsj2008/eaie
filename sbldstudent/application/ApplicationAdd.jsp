<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.sbld.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>������Ϣ����ѧԺ˶����������ϵͳ</title>
		<LINK REL=StyleSheet HREF="../sbldstyle.css" TYPE="text/css"
			MEDIA=screen>
		<script language=javascript> 
		   function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"����Ϊ��!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  	
		function formCheck(){
			//return false;
			if(!isNull("name","����")){			
				return false;
			}	
			if(!isNull("number","ѧ��")){			
				return false;
			}				
			if(!isNull("master","˶ʿרҵ")){			
				return false;
			}	
			if(!isNull("doctor","�ⱨ��ʿרҵ")){			
				return false;
			}	
			if(!isNull("masterTeacher","ԭ˶��")){			
				return false;
			}	
			if(!isNull("doctorTeacher","�ⱨ����")){			
				return false;
			}
			if(!isNull("tel","��ϵ��ʽ")){			
				return false;
			}
			if(!isNull("score","��ѧ�ɼ�")){			
				return false;
			}	
			if(!isNull("cjpm","ѧλ�μ�Ȩ�ɼ�����")){			
				return false;
			}			
		}		
		</script>
	</head>
	<%
		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Sbld sbldstudent where sbldstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("û�м�¼");
		} else {
			Sbld sbldstudent = (Sbld) list.get(0);
	%>
	<body>
		<div id="page">
			<div id="header">
				<h1 align="center">
					������Ϣ����ѧԺ˶����������ϵͳ
				</h1>
			</div>
			<div id="mainarea">
				<div id="sidebar">
					<div id="sidebarnav">
						<br>
						<br>
						<a class="active" href="../index.jsp">��ҳ</a>
						<a href="../newslist.jsp">�鿴֪ͨ</a>
						<a href="ApplicationAdd.jsp">�ύ����</a>
						<a href="ApplicationInfo.jsp">�鿴����</a>
						<a href="ApplicationEdit.jsp">�޸�����</a>
						<a href="../result.jsp">�鿴���</a>
						<a href="../sbldLogout.jsp">�˳�ϵͳ</a>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</div>
				</div>

				<div id="contentarea">
					<form name="form1" method="post" action="ApplicationUpdate.jsp">

						<h2>
							�ύ����
						</h2>
						<table align="center">

							<tr class="tdbg">
								<td width="30">

									<input name="id" id="id" type="hidden" value="<%=id%>">
								</td>
							<tr>
								<td>
									��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
								</td>
								<td>
									<input name="name" type="text" id="name" size="30">
								</td>
							</tr>
							<tr>
								<td>
									ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ţ�
								</td>
								<td>
									<input name="number" type="text" id="number" size="30">
								</td>
							<tr>
								<td>
									��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
								</td>
								<td>
									<input type="radio" checked="checked" name="sex" value="male">
									���� &nbsp;&nbsp;&nbsp;
									<input type="radio" name="sex" value="female">
									Ů��
								</td>
							</tr>
							<tr>
								<td>
									˶ʿרҵ��
								</td>
								<td>
									<input name="master" type="text" id="master" size="30">
								</td>
							</tr>
							<tr>
								<td>
									�ⱨ��ʿרҵ��
								</td>
								<td>
									<input name="doctor" type="text" id="doctor" size="30">
								</td>
							</tr>
							<tr>
								<td>
									ԭ˶����
								</td>
								<td>
									<input name="masterTeacher" type="text" id="masterTeacher"
										size="30">
								</td>
							</tr>
							<tr>
								<td>
									�ⱨ������
								</td>
								<td>
									<input name="doctorTeacher" type="text" id="doctorTeacher"
										size="30">
								</td>
							</tr>
							<tr>
								<td>
									��ϵ��ʽ��
								</td>
								<td>
									<input name="tel" type="text" id="tel"
										size="30">
								</td>
							</tr>
							<tr>
								<td>
									��ѧ�ɼ���
								</td>
								<td>
									<input name="score" type="text" id="score" size="30">
								</td>
							</tr>
							<tr>
								<td>
									ѧλ�μ�Ȩ�ɼ�������
								</td>
								<td>
									<input name="cjpm" type="text" id="cjpm" size="30">
								</td>
							</tr>
							<tr>
								<td width="60">
									��ע�� (������100����)
								</td>
								<td>
									<textarea name="beizhu" rows="5" cols="30"
										onKeyDown='if (this.value.length>=100){event.returnValue=false}'></textarea>
								</td>
							</tr>
						</table>
						<BR>
						<center>
							<input type="submit" name="Submit" value="��&nbsp;&nbsp;��"
								onclick="return formCheck();">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="Submit2" type="reset" class="submitinput"
								value="��&nbsp;&nbsp;��">
						</center>
					</form>

				</div>


			</div>

			<div id="footer">
				��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
				<br>
				��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
			</div>


		</div>
	</body>
	<%
		}
	%>
</html>