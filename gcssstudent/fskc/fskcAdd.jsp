<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>

<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>������Ϣ����ѧԺ����˶ʿ����ϵͳ</title>
		<LINK REL=StyleSheet HREF="../gcssstyle.css" TYPE="text/css"
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
			if(!isNull("fskc","���Կγ�")){			
				return false;
			}	
			if(!isNull("tele","��ϵ�绰")){			
				return false;
			}				
			
		}		
		</script>
	</head>
	<%
		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Gcss gcssstudent where gcssstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("û�м�¼");
		} else {
			Gcss gcssstudent = (Gcss) list.get(0);
	%>
	<body>
		<div id="page">
			<div id="header">
				<h1 align="center">
					������Ϣ����ѧԺ����˶ʿ����ϵͳ
				</h1>
			</div>
			<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="../index.jsp">��ҳ</a>
		<a href="../newslist.jsp">�鿴����֪ͨ</a>
		<a href="../cscj.jsp">�鿴GCT�ɼ�</a>
		<a class="active" href="fskcAdd.jsp">�걨���Կγ�</a>
		<a href="../lqjg.jsp">�鿴¼ȡ���</a>
		<a href="../lianxi.jsp">��ϵ����</a>
		<a href="../gcsslogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>

				<div id="contentarea">
					<form name="form1" method="post" action="fskcUpdate.jsp" >

						<br>
						<font size=3 face="����">
						<table align="center">

							<tr class="tdbg" height="50px">
								<td width="30">

									<input name="id" id="id" type="hidden" value="<%=id%>">
								</td>
							<tr class="tdbg" height="50px">
							    <td align="center">
									�γ����ƣ�
								</td>
								<td>
									<input type="radio" name="fskc" value="1" checked="checked">
									ͨ��ϵͳԭ�� 
									<input type="radio" name="fskc" value="2">
									�Զ�����ԭ��
									<input type="radio" name="fskc" value="3">
									��������缰��Ӧ��
								</td>
							</tr>
							
							<tr height="50px">
								<td>
									��ϵ�绰��
								</td>
								<td>
									<input name="tele" type="text" id="tele" size="25">
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						  <tr>
						  	<td colspan=2 align="center">
						  	
							<input type="submit" name="Submit" value="��&nbsp;&nbsp;��"
								onclick="return formCheck();">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="Submit2" type="reset" class="submitinput"
								value="��&nbsp;&nbsp;��">
							</td>
						 </tr>
						</table>
						</font>
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