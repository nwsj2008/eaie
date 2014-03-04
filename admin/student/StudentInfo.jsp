<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.student.*" %>

<html>
<head>
<title>ѧ����ϸ��Ϣ</title>
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
	if(stuid!=null){
		Student student = StudentManage.getStudent(stuid);
		if(student!=null){
 %>
<table width="550"  border="0" align="center" cellpadding="7" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="3" align="center" class="titlebg">ѧ����ϸ��Ϣ</td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="4" align="center"><strong>������Ϣ</strong></td>
    <td>ѧ�ţ�<%=student.getStuid() %></td>
    <td>������<%=student.getName() %></td>
  </tr>
  <tr>
    <td class="tdbg">�Ա�<%=student.getSex()==null?"":student.getSex() %></td>
    <td class="tdbg">�������£�<%=student.getBirth()==null?"":student.getBirth() %></td>
  </tr>
  <tr>
    <td class="tdbg">���壺<%=student.getNation()==null?"":student.getNation() %></td>
    <td class="tdbg">������ò��<%=student.getParty()==null?"":student.getParty() %></td> 
  </tr>
  <tr>
    <td class="tdbg">���᣺<%=student.getOrigin()==null?"":student.getOrigin() %></td>
    <td class="tdbg">���֤�ţ�<%=student.getPerid()==null?"":student.getPerid() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="4" align="center"><strong>ѧ����Ϣ</strong></td>
    <td>רҵ��<%=student.getMajor()==null?"":student.getMajor() %></td>
    <td>������ʽ��<%=student.getPyfs()==null?"":student.getPyfs()%></td>
  </tr>
  <tr>
    <td class="tdbg">�༶��<%=student.getBanji()==null?"":student.getBanji() %></td>
    <td class="tdbg">���᣺<%=student.getDorm()==null?"":student.getDorm() %></td>
  </tr>
  <tr>
    <td class="tdbg">����绰��<%=student.getDormtel()==null?"":student.getDormtel() %></td>
    <td class="tdbg">�ֻ���<%=student.getMobiletel()==null?"":student.getMobiletel() %></td>
  </tr>
  <tr>
    <td class="tdbg">ѧ�����ࣺ<%=student.getXkml()==null?"":student.getXkml() %></td>
    <td class="tdbg">�߿��ܷ֣�<%=student.getGkzf()==null?"":student.getGkzf() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="5" align="center"><strong>��ͥ״��</strong></td>
    <td colspan="2">��ͥסַ��<%=student.getAddress()==null?"":student.getAddress() %></td>
  </tr>
  <tr>
    <td class="tdbg">��ͥ�绰��<%=student.getHometel()==null?"":student.getHometel() %></td>
    <td class="tdbg">�ʱࣺ<%=student.getPostcode()==null?"":student.getPostcode() %></td>
  </tr>
  <tr>
    <td class="tdbg">����������<%=student.getFather()==null?"":student.getFather() %></td>
    <td class="tdbg">ĸ��������<%=student.getMother()==null?"":student.getMother() %></td>
  </tr>
  <tr>
    <td colspan="2" class="tdbg">���׹�����λ��<%=student.getFatherjob()==null?"":student.getFatherjob() %></td>
  </tr>
  <tr>
    <td colspan="2" class="tdbg">ĸ�׹�����λ��<%=student.getMotherjob()==null?"":student.getMotherjob() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30" align="center"><strong>�س�</strong></td>
    <td colspan="2"><%=student.getTechang()==null?"":student.getTechang() %></td>
  </tr>
  <tr class="tdbg">
    <td align="center"><strong>��ע</strong></td>
    <td colspan="2"><%=student.getBeizhu()==null?"":student.getBeizhu() %></td>
  </tr>
</table>

<BR>
<center><input type="button" name="Submit2" value="�޸���Ϣ" onClick="location.href='StudentEdit.jsp?stuid=<%=student.getStuid() %>'">
<%			if(student.getIsaid()!=null&&student.getIsaid()=="1") {
%>
&nbsp;&nbsp;<input type="button" name="Submit3" value="�鿴������Ϣ" onClick="location.href='AidStudentInfo.jsp?stuid=<%=student.getStuid() %>'">
<%			}
%>&nbsp;&nbsp;
<input type="button" name="Submit2" value="��&nbsp;��" onClick="history.back()">
</center>
<%
		}else{
			out.println("<center><h3><font color='#FF0000'>û���ҵ���Ҫ�ļ�¼��</font></h3></center>");
		}
	}
 %>
</body>
</html>
