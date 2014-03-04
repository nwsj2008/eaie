<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.student.*" %>

<html>
<head>
<title>学生详细信息</title>
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
    <td colspan="3" align="center" class="titlebg">学生详细信息</td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="4" align="center"><strong>基本信息</strong></td>
    <td>学号：<%=student.getStuid() %></td>
    <td>姓名：<%=student.getName() %></td>
  </tr>
  <tr>
    <td class="tdbg">性别：<%=student.getSex()==null?"":student.getSex() %></td>
    <td class="tdbg">出生年月：<%=student.getBirth()==null?"":student.getBirth() %></td>
  </tr>
  <tr>
    <td class="tdbg">民族：<%=student.getNation()==null?"":student.getNation() %></td>
    <td class="tdbg">政治面貌：<%=student.getParty()==null?"":student.getParty() %></td> 
  </tr>
  <tr>
    <td class="tdbg">籍贯：<%=student.getOrigin()==null?"":student.getOrigin() %></td>
    <td class="tdbg">身份证号：<%=student.getPerid()==null?"":student.getPerid() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="4" align="center"><strong>学籍信息</strong></td>
    <td>专业：<%=student.getMajor()==null?"":student.getMajor() %></td>
    <td>培养方式：<%=student.getPyfs()==null?"":student.getPyfs()%></td>
  </tr>
  <tr>
    <td class="tdbg">班级：<%=student.getBanji()==null?"":student.getBanji() %></td>
    <td class="tdbg">宿舍：<%=student.getDorm()==null?"":student.getDorm() %></td>
  </tr>
  <tr>
    <td class="tdbg">宿舍电话：<%=student.getDormtel()==null?"":student.getDormtel() %></td>
    <td class="tdbg">手机：<%=student.getMobiletel()==null?"":student.getMobiletel() %></td>
  </tr>
  <tr>
    <td class="tdbg">学科门类：<%=student.getXkml()==null?"":student.getXkml() %></td>
    <td class="tdbg">高考总分：<%=student.getGkzf()==null?"":student.getGkzf() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30" rowspan="5" align="center"><strong>家庭状况</strong></td>
    <td colspan="2">家庭住址：<%=student.getAddress()==null?"":student.getAddress() %></td>
  </tr>
  <tr>
    <td class="tdbg">家庭电话：<%=student.getHometel()==null?"":student.getHometel() %></td>
    <td class="tdbg">邮编：<%=student.getPostcode()==null?"":student.getPostcode() %></td>
  </tr>
  <tr>
    <td class="tdbg">父亲姓名：<%=student.getFather()==null?"":student.getFather() %></td>
    <td class="tdbg">母亲姓名：<%=student.getMother()==null?"":student.getMother() %></td>
  </tr>
  <tr>
    <td colspan="2" class="tdbg">父亲工作单位：<%=student.getFatherjob()==null?"":student.getFatherjob() %></td>
  </tr>
  <tr>
    <td colspan="2" class="tdbg">母亲工作单位：<%=student.getMotherjob()==null?"":student.getMotherjob() %></td>
  </tr>
  <tr class="tdbg">
    <td width="30" align="center"><strong>特长</strong></td>
    <td colspan="2"><%=student.getTechang()==null?"":student.getTechang() %></td>
  </tr>
  <tr class="tdbg">
    <td align="center"><strong>备注</strong></td>
    <td colspan="2"><%=student.getBeizhu()==null?"":student.getBeizhu() %></td>
  </tr>
</table>

<BR>
<center><input type="button" name="Submit2" value="修改信息" onClick="location.href='StudentEdit.jsp?stuid=<%=student.getStuid() %>'">
<%			if(student.getIsaid()!=null&&student.getIsaid()=="1") {
%>
&nbsp;&nbsp;<input type="button" name="Submit3" value="查看资助信息" onClick="location.href='AidStudentInfo.jsp?stuid=<%=student.getStuid() %>'">
<%			}
%>&nbsp;&nbsp;
<input type="button" name="Submit2" value="返&nbsp;回" onClick="history.back()">
</center>
<%
		}else{
			out.println("<center><h3><font color='#FF0000'>没有找到您要的记录！</font></h3></center>");
		}
	}
 %>
</body>
</html>
