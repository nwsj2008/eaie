<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.tqgb.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>������Ϣ����ѧԺ��ǰ��������ϵͳ</title>
<LINK REL=StyleSheet HREF="../tqgbstyle.css" TYPE="text/css" MEDIA=screen>
<%
	String idString = session.getAttribute("id").toString();
	int id = Integer.parseInt(idString);
	List list = BasicDAO
			.queryByHql("From Tqgb tqgbstudent where tqgbstudent.id='"
					+ id + "'");
	if (list.size() == 0) {
		out.print("û�м�¼");
	} else {
		Tqgb tqgbstudent = (Tqgb) list.get(0);
%>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ��ǰ��������ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="../index.jsp">��ҳ</a>
		<a href="../newslist.jsp">�鿴֪ͨ</a>
		<a href="ApplicationAdd.jsp">�ύ����</a>
		<a href="ApplicationInfo.jsp">�鿴����</a>
		<a href="ApplicationEdit.jsp">�޸�����</a>
		<a href="../result.jsp">�鿴���</a>
		<a href="../tqgbLogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<form name="form1" method="post" action="#">
	  <h2>�鿴����</h2>
									<table align="center">
										<tr class="tdbg">
											<td width="30">

												<input name="id" id="id" type="hidden" value="<%=id%>">
											</td>
										</tr>
										<tr>
											<td >
												��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
											</td>
											<td>
												<%=(tqgbstudent.getName() == null) ? ""
						: tqgbstudent.getName()%>
											</td>

										</tr>
										<tr>
											<td >
												ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ţ�
											</td>
											<td>
												<%=(tqgbstudent.getXuehao() == null) ? ""
						: tqgbstudent.getXuehao()%>
											</td>
										</tr>
										<tr>
											<td >
												��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
											</td>
											<td>
												<%=(tqgbstudent.getSex() == null) ? ""
						: tqgbstudent.getSex()%>
											</td>
										</tr>
										<tr>
											<td >
												˶ʿרҵ��
											</td>
											<td>
												<%=(tqgbstudent.getSszy() == null) ? ""
						: tqgbstudent.getSszy()%>
											</td>
										</tr>
										<tr>
											<td >
												�ⱨ��ʿרҵ��
											</td>
											<td>
												<%=(tqgbstudent.getNbzy() == null) ? ""
						: tqgbstudent.getNbzy()%>
											</td>
										</tr>
										<tr>
											<td>
												ԭ˶����
											</td>
											<td>
												<%=(tqgbstudent.getSd() == null) ? "" : tqgbstudent
						.getSd()%>
											</td>
										</tr>
										<tr>
											<td>
												�ⱨ������
											</td>
											<td>
												<%=(tqgbstudent.getNbbd() == null) ? ""
						: tqgbstudent.getNbbd()%>
											</td>
										</tr>
										<tr>
											<td>
												��ϵ��ʽ��
											</td>
											<td>
												<%=(tqgbstudent.getTel() == null) ? ""
						: tqgbstudent.getTel()%>
											</td>
										</tr>
										<tr>
											<td >
												ѧλ�μ�Ȩ�ɼ�������
											</td>
											<td>
												<%=(tqgbstudent.getCjpm() == null) ? ""
						: tqgbstudent.getCjpm()%>
											</td>
										</tr>
										<tr>
											<td>
												��ע��
											</td>
											<td width=150>
						<textarea name="huoj" rows="5" cols="30" readonly 
						style="background-color:#e9f2f9;"> <%=(tqgbstudent.getBeizhu() == null) ? ""
						: tqgbstudent.getBeizhu()%></textarea>	
											</td>
											
										</tr>
									</table>
									<BR>
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