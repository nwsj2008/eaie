<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.student.*" %>

<html>
<head>
<title>修改学生信息</title>
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
<form name="form1" method="post" action="admin/student/StudentSave.jsp">
  <table width="550"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="3" align="center" class="titlebg">修改学生信息</td>
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
      <td class="tdbg">政治面貌：
	  <input name="party" type="text" id="party" value="<%=student.getParty()==null?"":student.getParty() %>" size="20"></td>
    </tr>
    <tr>
      <td class="tdbg">籍贯：<%=student.getOrigin()==null?"":student.getOrigin() %></td>
      <td class="tdbg">身份证号：<%=student.getPerid()==null?"":student.getPerid() %></td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="4" align="center"><strong>学籍信息</strong></td>
      <td>专业：
      <input name="major" type="text" id="major" value="<%=student.getMajor()==null?"":student.getMajor() %>" size="20"></td>
      <td>培养方式：<%=student.getPyfs()==null?"":student.getPyfs()%></td>
    </tr>
    <tr>
      <td class="tdbg">班级：
      <input name="banji" type="text" id="banji" value="<%=student.getBanji()==null?"":student.getBanji() %>" size="20"></td>
      <td class="tdbg">宿舍：
      <input name="dorm" type="text" id="dorm" value="<%=student.getDorm()==null?"":student.getDorm() %>" size="20"></td>
    </tr>
    <tr>
      <td class="tdbg">宿舍电话：
      <input name="dormtel" type="text" id="dormtel" value="<%=student.getDormtel()==null?"":student.getDormtel() %>" size="20"></td>
      <td class="tdbg">手机：
      <input name="mobiletel" type="text" id="mobiletel" value="<%=student.getMobiletel()==null?"":student.getMobiletel() %>" size="20"></td>
    </tr>
    <tr>
      <td class="tdbg">学科门类：<%=student.getXkml()==null?"":student.getXkml() %></td>
      <td class="tdbg">高考总分：<%=student.getGkzf()==null?"":student.getGkzf() %></td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="5" align="center"><strong>家庭状况</strong></td>
      <td colspan="2">家庭住址：
      <input name="address" type="text" id="address" value="<%=student.getAddress()==null?"":student.getAddress() %>" size="60"></td>
    </tr>
    <tr>
      <td class="tdbg">家庭电话：
      <input name="hometel" type="text" id="hometel" value="<%=student.getHometel()==null?"":student.getHometel() %>" size="20"></td>
      <td class="tdbg">邮编：
      <input name="postcode" type="text" id="postcode" value="<%=student.getPostcode()==null?"":student.getPostcode() %>" size="20"></td>
    </tr>
    <tr>
      <td class="tdbg">父亲姓名：<%=student.getFather()==null?"":student.getFather() %></td>
      <td class="tdbg">母亲姓名：<%=student.getMother()==null?"":student.getMother() %></td>
    </tr>
    <tr>
      <td colspan="2" class="tdbg">父亲工作单位：
<input name="fatherjob" type="text" id="fatherjob" value="<%=student.getFatherjob()==null?"":student.getFatherjob() %>" size="50"></td>
    </tr>
    <tr>
      <td colspan="2" class="tdbg">母亲工作单位：
<input name="motherjob" type="text" id="motherjob" value="<%=student.getMotherjob()==null?"":student.getMotherjob() %>" size="50"></td>
    </tr>
    <tr class="tdbg">
      <td width="30" align="center"><strong>特长</strong></td>
      <td colspan="2">
      <textarea name="techang" cols="40" id="techang"><%=student.getTechang()==null?"":student.getTechang() %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td align="center"><strong>备注</strong></td>
      <td colspan="2"><textarea name="beizhu" cols="40" id="beizhu"><%=student.getBeizhu()==null?"":student.getBeizhu() %></textarea></td>
    </tr>
  </table>
  <BR/>
<center>
<input type="submit" name="Submit" value="保&nbsp;存" />&nbsp;&nbsp;
<input type="button" name="Submit2" value="返&nbsp;回" onClick="history.back()"/>
<input name="stuid" type="hidden" id="stuid" value="<%=student.getStuid() %>"></center>
</form>
<%
		}
	}

 %>
</body>
</html>