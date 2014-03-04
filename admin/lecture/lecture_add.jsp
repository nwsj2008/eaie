<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.lecture.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	
	String action = request.getParameter("action");
	Teacher user = (Teacher)session.getAttribute("USER"); 	
	if(action!=null){
    Lecture lecture = new Lecture();
    String endtime = request.getParameter("endtime");
    lecture.setEndtime(LectureManage.getDate(endtime,"yyyy-MM-dd"));
    lecture.setPubtime(LectureManage.getDate());
    lecture.setHits(0);
    lecture.setContent(HtmlEncode.outHtml(request.getParameter("content")));
    lecture.setSubject(request.getParameter("subject"));
    lecture.setGivesite(request.getParameter("givesite"));
    lecture.setGivetime(request.getParameter("givetime"));
    lecture.setLecturer(request.getParameter("lecturer"));
    //登录用户名称
    lecture.setTeacher(user.getTeacher());
    lecture.setIsok(Byte.valueOf(request.getParameter("isok")==null?"0":"1"));
    lecture.setIstop(Byte.valueOf(request.getParameter("istop")==null?"0":"1"));
    lecture.setFilename(request.getParameter("filename"));
    lecture.setFileurl(request.getParameter("fileurl"));
    
	if(LectureManage.saveLecture(lecture)==true){
		out.println(JavaScript.alertandRedirect("添加成功","lecture_list.jsp"));
	}else{
		out.println(JavaScript.alertandBack("修改失败！"));		
	}
}%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>添加学术活动</title>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
<script language="JavaScript" src="js/calendar.js"></script>
<script language="JavaScript" src="js/lecture.js"></script>
</head>

<body>
<form name="myform" id="myform" method="post" action="admin/lecture/lecture_add.jsp?action=add">
  <table width="550"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td colspan="2">添加学术活动</td>
    </tr>
    <tr class="tdbg">
      <td>报告主题：</td>
      <td><input name="subject" type="text" id="subject" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>报&nbsp;告&nbsp;人：</td>
      <td><input name="lecturer" type="text" id="lecturer" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>报告时间：</td>
      <td><input name="endtime" type="text" id="endtime" value="点此输入日期" size="13" onFocus="show_cele_date(endtime,'1900-1-1','2030-1-1',endtime)">
	  <input name="givetime" type="text" id="givetime" size="24">（左边输入日期，右边输入具体时间）
      </td>
    </tr>
    <tr class="tdbg">
      <td>报告地点：</td>
      <td><input name="givesite" type="text" id="givesite" size="40"></td>
    </tr>
    <tr class="tdbg">
      <td>内容简介：</td>
      <td><textarea name="content" cols="60" rows="15" id="content"></textarea></td>
    </tr>
    <tr class="tdbg">
      <td>新闻属性：</td>
      <td><input name="istop" type="checkbox" id="istop" value="1">
        置顶
          <input name="isok" type="checkbox" id="isok" value="1">
      推荐</td>
    </tr>
    <tr class="tdbg">
      <td>粘贴附件：</td>
      <td>
      <iframe src="upload/uploadfile.jsp" height="25" frameborder="0" width="100%" scrolling="no" allowtransparency="yes"> </iframe>
      </td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="2"><input type="button" name="Submit" value="添&nbsp;加" onClick="check()">&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit2" value="重&nbsp;置">
	  <input name="filename" type="hidden" id="filename" value="">
	  <input name="fileurl" type="hidden" id="fileurl" value=""></td>
    </tr>
  </table>
</form>
</body>
</html>