<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";			
%>	
<html>
<head>	
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
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
		<title>�޸��û�����</title>	
</head>

<body>
<%
	Teacher user = (Teacher)session.getAttribute("USER");
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
<form name="form1" method="post" action="" onSubmit="return formCheck()">
  <table width="350" border="0" align="center" cellpadding="4" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="titlebg">�޸ĵ�¼����</td>
    </tr>
    <tr bgcolor="#FFFFFF" class="tdbg">
      <td align="right">��&nbsp;��&nbsp;����</td>
      <td><%=user.getTeacher()  %></td>
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
    <td colspan="2"><input type="submit" name="Submit" value="ȷ&nbsp;��">&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit2" value="ȡ&nbsp;��"></td></tr>
  </table>
</form>
</body>
</html>
