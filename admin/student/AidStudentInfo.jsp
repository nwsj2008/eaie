<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>经济困难学生详细信息</title>
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
			out.println(JavaScript.alertandBack("无该学生信息"));
		}
	

 %>

<body>
<BR>
<table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="3" align="center" class="titlebg">经济困难学生信息</td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="2"><strong>基本信息</strong></td>
    <td>学号：<%=student.getStuid() %></td>
    <td>姓名：<%=student.getName() %></td>
  </tr>
  <tr class="tdbg">
    <td>性别：<%=student.getSex() %></td>
    <td>班级：<%=student.getBanji()==null?"":student.getBanji() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>家庭概况</strong></td>
    <td colspan="2"><%=student.getHomeinfo()==null?"":student.getHomeinfo() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>是否贷款</strong></td>
    <td colspan="2"><%=student.getIsloan()==null?"":student.getIsloan() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>资助情况</strong></td>
    <td colspan="2"><%=student.getAid()==null?"":student.getAid() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30"><strong>备注</strong></td>
    <td colspan="2"><%=student.getBeizhu()==null?"":student.getBeizhu() %></td>
  </tr>
</table>
<BR>
<table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="100"></td>
      <td><input type="button" name="Submit1" value="查看详细信息" onClick="location.href='StudentInfo.jsp?stuid=<%=student.getStuid() %>'">
        &nbsp;&nbsp;
      <input type="button" name="Submit2" value="修改信息" onClick="location.href='AidStudentEdit.jsp?stuid=<%=student.getStuid() %>'">&nbsp;&nbsp;
	  <input type="button" name="Submit2" value="返&nbsp;回" onClick="history.back()"></td>
    </tr>
</table>
<%
	}else{
		
		out.println(JavaScript.alertandBack("非法访问"));
	}
 %>
</body>
</html>