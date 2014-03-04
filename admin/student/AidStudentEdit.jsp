<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>

<html>
<head>
<title>��Ӿ�������ѧ����Ϣ</title>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>				
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
</head>
<body>
<%
	String stuid = request.getParameter("stuid");
	
	if(stuid==null){
 %>
<form name="form1" method="post" action="admin/student/AidStudentSave.jsp?action=add">
  <table width="600" border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr class="tdbg">
      <td colspan="2" align="center" class="titlebg">��Ӿ�������ѧ��</td>
    </tr>
    <tr class="tdbg">
      <td width="100"><strong>ѧ��</strong></td>
      <td>
	  <input name="stuid" type="text" id="stuid" size="20"></td>
    </tr>
    <tr class="tdbg">
      <td><strong>��ͥ�ſ�</strong></td>
      <td>
      <textarea name="homeinfo" cols="60" rows="4" id="homeinfo"></textarea></td>
    </tr>
    <tr class="tdbg">
      <td><strong>�Ƿ����</strong></td>
      <td>
      <textarea name="isloan" cols="60" id="isloan"></textarea></td>
    </tr>
    <tr class="tdbg">
      <td><strong>�������</strong></td>
      <td>
      <textarea name="aid" cols="60" rows="4" id="aid"></textarea></td>
    </tr>
    <tr class="tdbg">
      <td><strong>��ע</strong></td>
      <td>
      <textarea name="beizhu" cols="60" rows="4" id="beizhu"></textarea></td>
    </tr>
    <tr class="tdbg">
     	 <td colspan="2" align="center"><input type="submit" name="Submit" value="ȷ�����">
		</td>     
    </tr>
  </table>
  <BR>
  </form>
 <%
 	}else{
 		
 		Student student  = StudentManage.getStudent(stuid);
 		
 		if(student!=null){
 	
 %>
 <form name="form1" method="post" action="admin/student/AidStudentSave.jsp">
  <table width="550" border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr class="tdbg">
      <td colspan="3" align="center" class="titlebg">�޸ľ�������ѧ����Ϣ</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="2"><strong>������Ϣ</strong></td>
      <td>ѧ�ţ�<%=student.getStuid() %></td>
      <td>������<%=student.getName()==null?"":student.getName() %></td>
    </tr>
    <tr class="tdbg">
      <td>�Ա�<%=student.getSex()==null?"":student.getSex() %></td>
      <td>�༶��<%=student.getBanji()==null?"":student.getBanji() %></td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>��ͥ�ſ�</strong></td>
      <td colspan="2">
      <textarea name="homeinfo" cols="40" rows="4" id="homeinfo"><%=student.getHomeinfo()==null?"":student.getHomeinfo() %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>�Ƿ����</strong></td>
      <td colspan="2">
      <textarea name="isloan" cols="40" id="isloan"><%=student.getIsloan()==null?"":student.getIsloan() %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>�������</strong></td>
      <td colspan="2">
      <textarea name="aid" cols="40" rows="4" id="aid"><%=student.getAid()==null?"":student.getAid() %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>��ע</strong></td>
      <td colspan="2">
      <textarea name="beizhu" cols="40" rows="4" id="beizhu"><%=student.getBeizhu()==null?"":student.getBeizhu() %></textarea></td>
    </tr>
  </table>
  <BR>
<center><input type="submit" name="Submit" value="��&nbsp;��">&nbsp;&nbsp;
	<input type="button" name="Submit2" value="��&nbsp;��" onClick="history.back()">
  	<input name="stuid" type="hidden" id="stuid" value="<%=student.getStuid() %>">
</center>
</form>
 <%
 		}
 	}
  %>


</body>
</html>
