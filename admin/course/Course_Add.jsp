<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.course.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	
	String action = request.getParameter("action");
	if(action!=null){
    Course course = new Course();
    course.setCoursename(request.getParameter("coursename"));
    course.setCourseteacher(request.getParameter("courseteacher"));
    course.setCoursememo(HtmlEncode.outHtml(request.getParameter("coursememo")));
    course.setCoursetime(request.getParameter("coursetime")==null?"1":request.getParameter("coursetime"));
    course.setOnlineurl(request.getParameter("onlineurl").trim());

	if(CourseManage.saveCourse(course)==true){
		out.println(JavaScript.alertandRedirect("��ӳɹ�","Course_List.jsp"));
	}else{
%>
    <script language="JavaScript">
       document.myform.reset();
       alert("���ʧ��");
       return;
    </script>
<%	
	
	}
}%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���ѧ���</title>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
<script language = "javascript">
function check(){

        var name=document.getElementById("coursename");
        var teacher = document.getElementById("courseteacher");
        var url=document.myform.onlineurl.value;
        var re=new RegExp("http://\\S+\\.\\S+");
		if(isEmpty(name)){
      		alert("������γ�����");
      		window.event.returnValue = false;
      	}else if(isEmpty(teacher)){
      		alert("�������ڿν�ʦ");
      		window.event.returnValue = false;
      	}else if(url!=""&&url.match(re)==null)
        {
            alert("������Ҫ���URL");
            window.event.returnValue = false;
        }else{
      		myform.submit();
      	}
      }
      
	  function isEmpty(obj){
      	if(obj.value.length==0)
      	{
      		return true;
      	}
      	else{
      		return false;
      	}
      }
   
</script>
</head>

<body>
<form name="myform" id="myform" method="post" action="admin/course/Course_Add.jsp?action=add">
  <table width="550"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td colspan="2">��ӿγ���Ϣ</td>
    </tr>
    <tr class="tdbg">
      <td>�γ����ƣ�</td>
      <td><input name="coursename" type="text" id="coursename" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>�ڿν�ʦ��</td>
      <td><input name="courseteacher" type="text" id="courseteacher" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>�γ̼�飺</td>
      <td><textarea name="coursememo" cols="60" rows="15" id="coursememo"></textarea></td>
    </tr>
    <tr class="tdbg">
      <td>����ʱ�䣺</td>
      <td><input name="coursetime" type="radio" id="coursetime" value="1"> ����ѧ�� 
          <input name="coursetime" type="radio" id="coursetime" value="2"> �＾ѧ��</td>
    </tr>
    <tr class="tdbg">
      <td>���߽�ѧ��վ��</td>
      <td>
     <input name="onlineurl" type="text" id="onlineurl" size="60">
      </td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="2"><input type="button" name="Submit" value="��&nbsp;��" onClick="check()">&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit2" value="��&nbsp;��">
    </tr>
  </table>
</form>
</body>
</html>