<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.professor.*" %>
<%@ page import="com.eaie.tools.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>教师详细信息</title>
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
		out.println(JavaScript.alertandBack("非法访问!"));
		return ;		
	}		
	Professor professor = ProfessorManage.getProfessor(Integer.valueOf(id));
	if(professor==null){
		out.println(JavaScript.alertandBack("该导师信息不存在!"));
		return;
	}
%>
<br>
<table width="90%"  border="0" align="center" cellpadding="1" cellspacing="0" class="content"  bgcolor="#CCCCCC">
      <tr>
        <td>
         <table width="100%"  border="0" cellpadding="1" cellspacing="1" class="content">
            <tr bgcolor="#FFFFFF">
              <td>姓&nbsp;&nbsp;&nbsp;&nbsp;名：<%=professor.getName()%></td>
              <td>性&nbsp;&nbsp;&nbsp;&nbsp;别：<%=professor.getSex() %></td>
              <td rowspan="5" align="center" colspan=3>
              	<%if(professor.getImageurl()!=null&&!professor.getImageurl().equals("")){ %><img src="UploadFiles/uppic/<%=professor.getImageurl() %>" width="100">
      			<%}else {out.println("暂无照片");}%></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td>出生年月: <%=professor.getBirth()==null?"": professor.getBirth()%></td>
              <td>职&nbsp;&nbsp;&nbsp;&nbsp;称：<%=professor.getDegree()==null?"": professor.getDegree()%></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2">办公电话：<%=professor.getTel()==null?"": professor.getTel()%></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2">电子邮箱：<%=professor.getEmail()==null?"":professor.getEmail() %></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2">办公地点：<%=professor.getAddress()==null?"": professor.getAddress()%></td>
              </tr>
          </table>
        </td>
      </tr>
     <tr>
      <td>
       <table width="100%"  border="0" cellpadding="1" cellspacing="1" class="content">
      <tr bgcolor="#FFFFFF">
        <td><strong>个人简介：</strong><BR>
          <%=professor.getResume()==null?"": professor.getResume()%></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td><strong>研究方向：</strong><BR>
         <%=professor.getField()==null?"":professor.getField() %></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td><strong>科研项目：</strong><BR>
          <%=professor.getProjects()==null?"":professor.getProjects() %></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td><strong>学术著作：</strong><BR>
          <%=professor.getBook()==null?"": professor.getBook()%></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td ><strong>获奖荣誉：</strong><BR>
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