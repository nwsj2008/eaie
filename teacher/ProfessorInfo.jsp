<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.professor.*" %>
<%@ page import="com.eaie.tools.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ʦ��ϸ��Ϣ</title>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>				
<base href="<%=basePath%>">
		<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
%>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="580" height=100% valign=top align=right>
			
<%
	String id = request.getParameter("id");
	if(id==null){	
		out.println(JavaScript.alertandBack("�Ƿ�����!"));
		return ;		
	}		
	Professor professor = ProfessorManage.getProfessor(Integer.valueOf(id));
	if(professor==null){
		out.println(JavaScript.alertandBack("�õ�ʦ��Ϣ������!"));
		return;
	}
%>
<br>
<table width="90%"  border="0" align="center" cellpadding="1" cellspacing="0" class="content"  bgcolor="#CCCCCC">
      <tr>
        <td>
         <table width="100%"  border="0" cellpadding="1" cellspacing="1" class="content">
            <tr bgcolor="#FFFFFF">
              <td>��&nbsp;&nbsp;&nbsp;&nbsp;����<%=professor.getName()%></td>
              <td>��&nbsp;&nbsp;&nbsp;&nbsp;��<%=professor.getSex() %></td>
              <td rowspan="5" align="center" colspan=3>
              	<%if(professor.getImageurl()!=null&&!professor.getImageurl().equals("")){ %><img src="UploadFiles/uppic/<%=professor.getImageurl() %>" width="100">
      			<%}else {out.println("������Ƭ");}%></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td>��������: <%=professor.getBirth()==null?"": professor.getBirth()%></td>
              <td>ְ&nbsp;&nbsp;&nbsp;&nbsp;�ƣ�<%=professor.getDegree()==null?"": professor.getDegree()%></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2">�칫�绰��<%=professor.getTel()==null?"": professor.getTel()%></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2">�������䣺<%=professor.getEmail()==null?"":professor.getEmail() %></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2">�칫�ص㣺<%=professor.getAddress()==null?"": professor.getAddress()%></td>
              </tr>
          </table>
        </td>
      </tr>
     <tr>
      <td>
       <table width="100%"  border="0" cellpadding="1" cellspacing="1" class="content">
      <tr bgcolor="#FFFFFF">
        <td><strong>���˼�飺</strong><BR>
          <%=professor.getResume()==null?"": professor.getResume()%></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td><strong>�о�����</strong><BR>
         <%=professor.getField()==null?"":professor.getField() %></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td><strong>������Ŀ��</strong><BR>
          <%=professor.getProjects()==null?"":professor.getProjects() %></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td><strong>ѧ��������</strong><BR>
          <%=professor.getBook()==null?"": professor.getBook()%></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td ><strong>��������</strong><BR>
          <%=professor.getHonor()==null?"":professor.getHonor() %></td>
      </tr>
      </table>
        </td>
      </tr>
    </table>



</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>
</body>
</html>