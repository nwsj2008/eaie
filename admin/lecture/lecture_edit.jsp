<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.admin.lecture.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="lecture" class="com.eaie.dbmanage.Lecture" scope = "page">
</jsp:useBean>
<%
 	String id = request.getParameter("id");
 	String curPage = request.getParameter("page");
 	String action = request.getParameter("action");
 	Teacher user = (Teacher)session.getAttribute("USER"); 	
 	if(action==null){
 	   lecture = LectureManage.getLecture(Integer.parseInt(id)); 	 
 	}else{
%>
  <jsp:setProperty name="lecture" property="*" />
<%	
    //������������ڱ༭ʱ����Ҫ����
    String endtime = request.getParameter("endtime2");
    lecture.setEndtime(LectureManage.getDate(endtime,"yyyy-MM-dd"));
    lecture.setPubtime(LectureManage.getDate());
    lecture.setIsok(Byte.valueOf(request.getParameter("isok2")==null?"0":"1"));
    lecture.setIstop(Byte.valueOf(request.getParameter("istop2")==null?"0":"1"));
    //
    lecture.setTeacher(user.getTeacher());
    lecture.setContent(HtmlEncode.outHtml(lecture.getContent()));
    if(LectureManage.updateLecture(lecture)==true){
		out.println(JavaScript.alertandRedirect("�޸ĳɹ�","lecture_list.jsp?curPage="+curPage));
	}else{
		out.println(JavaScript.alertandBack("�޸�ʧ�ܣ�"));	
	}
}
	if(lecture.getIsok()==null){
		lecture.setIsok(Byte.valueOf("0"));
	}
	if(lecture.getIstop()==null){
		lecture.setIstop(Byte.valueOf("0"));
	}
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�༭ѧ���</title>
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
<script language="javascript" type="text/javascript">
</script>
</head>
<body>
<form name="myform" method="post" action="admin/lecture/lecture_edit.jsp?page=<%=curPage%>&action=edit" onSubmit="check()">
  <table width="550"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td colspan="2">�༭ѧ���</td>
    </tr>
    <tr class="tdbg">
      <td>�������⣺</td>
      <td><input name="subject" type="text" id="subject" value="<%=lecture.getSubject()%>" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>��&nbsp;��&nbsp;�ˣ�</td>
      <td><input name="lecturer" type="text" id="lecturer" value="<%=lecture.getLecturer()%>" size="60"></td>
    </tr>
    <tr class="tdbg">
      <td>����ʱ�䣺</td>
      <td><input name="endtime2" type="text" id="endtime" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(lecture.getEndtime())%>" size="13" onFocus="show_cele_date(endtime,'1900-1-1','2030-1-1',endtime)">
	  <input name="givetime" type="text" id="givetime" value="<%=lecture.getGivetime()%>" size="24">���޸�ʱ��ע������������ͬ��</td>
    </tr>
    <tr class="tdbg">
      <td>����ص㣺</td>
      <td><input name="givesite" type="text" id="givesite" value="<%=lecture.getGivesite()%>" size="40"></td>
    </tr>
    <tr class="tdbg">
      <td>���ݼ�飺</td>
      <td><textarea name="content" cols="60" rows="15" id="content"><%=lecture.getContent()==null?"": HtmlEncode.inHtml(lecture.getContent())%></textarea></td>
    </tr>
    <tr class="tdbg">
      <td>�������ԣ�</td>
      <td><input name="istop2" type="checkbox" id="istop" value="1"  <%=(lecture.getIstop().intValue()==1?"checked='checked'":null)%>>
        �ö�
          <input name="isok2" type="checkbox" id="isok" value="1" <%=(lecture.getIsok().intValue()==1?"checked='checked'":null)%>>
      �Ƽ�</td>
    </tr>
    <tr class="tdbg">
      <td>ճ��������</td>
      <td>
      <iframe src="upload/uploadfile.jsp?action=show&filename=<%=lecture.getFilename()==null?"":lecture.getFilename() %>&fileurl=<%=lecture.getFileurl()!=null?lecture.getFileurl():"" %>" 
      height="25" frameborder="0" width="100%" scrolling="no" allowtransparency="yes"> </iframe>
      </td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="2"><input type="submit" name="Submit" value="��&nbsp;��">&nbsp;&nbsp;&nbsp;
      <input type="button" name="Submit2" value="��&nbsp;��" onClick="javascript:window.location.href='lecture_list.jsp?curPage=<%=curPage%>'">
	  <input name="id" type="hidden" id="id" value="<%=lecture.getId()%>">
	  <input name="filename" type="hidden" id="filename" value=<%=lecture.getFilename() %>>
	  <input name="fileurl" type="hidden" id="fileurl" value=<%=lecture.getFileurl() %>>
	  </td>
    </tr>
  </table>
</form>
</body>
</html>