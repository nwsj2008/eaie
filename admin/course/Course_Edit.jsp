<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gbk"%>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.course.*" %>
<jsp:useBean id="course" class="com.eaie.dbmanage.Course" scope = "page">
</jsp:useBean>
<%
 	String id = request.getParameter("id");
 	String curPage = request.getParameter("page");
 	String action = request.getParameter("action");
 	if(action==null){
 	   course = CourseManage.getCourse(Integer.parseInt(id));
 	   //System.out.println(course.getCoursename());
 	}else{%>
  <jsp:setProperty name="course" property="*" />
<%	
    //������������ڱ༭ʱ����Ҫ����
   course.setCoursename(request.getParameter("coursename"));
    course.setCourseteacher(request.getParameter("courseteacher"));
    course.setCoursememo(HtmlEncode.outHtml(request.getParameter("coursememo")));
    course.setCoursetime(request.getParameter("coursetime"));
    course.setOnlineurl(request.getParameter("onlineurl"));
    if(CourseManage.updateCourse(course)==true){
		out.println(JavaScript.alertandRedirect("�޸ĳɹ�","Course_List.jsp?curPage="+curPage));
	}else{
%>
     <script language="javascript">
       alert("�޸�ʧ��");
    </script>
<%		
	}
}

 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�༭�γ�</title>
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
<form name="myform" method="post" action="admin/course/Course_Edit.jsp?page=<%=curPage%>&action=edit" onSubmit="check()">
  <table width="550"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td colspan="2">�༭�γ���Ϣ</td>
    </tr>
    <tr class="tdbg">
      <td>�γ����ƣ�</td>
      <td><input name="coursename" type="text" id="coursename" value="<%=course.getCoursename()%>" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>�ڿν�ʦ��</td>
      <td><input name="courseteacher" type="text" id="lecturer" value="<%=course.getCourseteacher()%>" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>�γ̼�飺</td>
      <td><textarea name="coursememo" cols="60" rows="15" id="coursememo"><%=HtmlEncode.inHtml(course.getCoursememo())%></textarea></td>
    </tr>
   
     <tr class="tdbg">
      <td>����ʱ�䣺</td>
      <td><input name="coursetime" type="radio" id="coursetime" value="1" <%=(Integer.parseInt(course.getCoursetime())==1?"checked='checked'":null)%>> ����ѧ�� 
          <input name="coursetime" type="radio" id="coursetime" value="2" <%=(Integer.parseInt(course.getCoursetime())==2?"checked='checked'":null)%>> �＾ѧ��</td>
    </tr>
   <tr class="tdbg">
      <td>���߽�ѧ��վ��</td>
      <td><input name="onlineurl" type="text" id="onlineurl" value="<%=course.getOnlineurl()%>" size="40"></td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="2"><input type="submit" name="Submit" value="��&nbsp;��" onClick="check()">&nbsp;&nbsp;&nbsp;
      <input type="button" name="Submit2" value="��&nbsp;��" onClick="javascript:window.location.href='Course_List.jsp?curPage=<%=curPage%>'">
	  <input name="id" type="hidden" id="id" value="<%=course.getId()%>">
	 
	  </td>
    </tr>
  </table>
</form>
</body>
</html>