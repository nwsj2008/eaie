<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");%>
<html>

<head>
<title>������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</title>
<LINK REL=StyleSheet HREF="gctchstyle.css" TYPE="text/css" MEDIA=screen>
			<SCRIPT LANGUAGE="JavaScript">
				function formCheck()
				{
					if (document.form1.pwd.value == "")
					{
						alert("�����������!");
						return false;
					}
				
					if (document.form1.pwd1.value == "")
					{
						alert("������������!");
						return false;
					}
				
					if (document.form1.pwd2.value == "")
					{
						alert("������һ��!");
						return false;
					} 
				
					if (document.form1.pwd1.value != document.form1.pwd2.value)
					{
						alert("�����������벻һ�£�����������!");
						return false;
					} 
				}
			</SCRIPT>
</head>
<%
	Gcteacher user = (Gcteacher)session.getAttribute("GCTEACHER");
	String soldPassword = request.getParameter("pwd");
	String snewPassword = request.getParameter("pwd1");
	if(soldPassword!=null&&snewPassword!=null){
		
	   boolean isOK = UserManage.changePassword(user,soldPassword,snewPassword);
	   if(isOK){	
	      	
	   		out.println(JavaScript.alert("�����޸ĳɹ���"));
	   		
	   }else{
	   
	   		out.println(JavaScript.alert("�����޸�ʧ�ܣ�"));
	   }
		
	}
 %>


<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a  href="index.jsp">��ҳ</a>
		<a href="ModifyPwd.jsp" >�޸ĵ�½����</a>
		<a href="kcxx.jsp">�鿴�γ���Ϣ</a>
		<a href="score.jsp">�༭ѧ���ɼ�</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="logout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<form name="form1" method="post" action="" onSubmit="return formCheck()">
  <table width="350" border="0" align="center" cellpadding="4" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="titlebg">&nbsp;</td>
    </tr>
    
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">��&nbsp;��&nbsp;����</td>
      <td><%=user.getName()  %></td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">��&nbsp;��&nbsp;�룺</td>
      <td><input name="pwd" type="password" id="pwd" size="20"></td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">��&nbsp;��&nbsp;�룺</td>
      <td><input name="pwd1" type="password" id="pwd1" size="20"></td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right"> ȷ�����룺 </td>
      <td><input name="pwd2" type="password" id="pwd2" size="20"></td>
    </tr>
    <tr align="center" class="tdbg">
    <td colspan="2"><input type="submit" name="Submit" value="ȷ&nbsp;��">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit2" value="ȡ&nbsp;��"></td></tr>
  </table>
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

</html>