<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��������ѧ����ϸ��Ϣ</title>
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
<%
	String stuid = request.getParameter("stuid");
	Student student;
	if(stuid!=null){
		
		student = StudentManage.getStudent(stuid);
		if(student==null){		
			out.println(JavaScript.alertandBack("�޸�ѧ����Ϣ"));
		}
	

 %>

<body>
<BR>
<table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="3" align="center" class="titlebg">��������ѧ����Ϣ</td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="2"><strong>������Ϣ</strong></td>
    <td>ѧ�ţ�<%=student.getStuid() %></td>
    <td>������<%=student.getName() %></td>
  </tr>
  <tr class="tdbg">
    <td>�Ա�<%=student.getSex() %></td>
    <td>�༶��<%=student.getBanji()==null?"":student.getBanji() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>��ͥ�ſ�</strong></td>
    <td colspan="2"><%=student.getHomeinfo()==null?"":student.getHomeinfo() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>�Ƿ����</strong></td>
    <td colspan="2"><%=student.getIsloan()==null?"":student.getIsloan() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>�������</strong></td>
    <td colspan="2"><%=student.getAid()==null?"":student.getAid() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>��ע</strong></td>
    <td colspan="2"><%=student.getBeizhu()==null?"":student.getBeizhu() %></td>
  </tr>
</table>
<BR>
<table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="100"></td>
      <td><input type="button" name="Submit1" value="�鿴��ϸ��Ϣ" onClick="location.href='StudentInfo.jsp?stuid=<%=student.getStuid() %>'">
        &nbsp;&nbsp;
      <input type="button" name="Submit2" value="�޸���Ϣ" onClick="location.href='AidStudentEdit.jsp?stuid=<%=student.getStuid() %>'">&nbsp;&nbsp;
	  <input type="button" name="Submit2" value="��&nbsp;��" onClick="history.back()"></td>
    </tr>
</table>
<%
	}else{
		
		out.println(JavaScript.alertandBack("�Ƿ�����"));
	}
 %>
</body>
</html>