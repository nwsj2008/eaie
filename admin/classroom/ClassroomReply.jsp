<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.admin.classroom.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="java.util.*" %>

<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
<title>活动申请详细信息</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String action = request.getParameter("action");
	Teacher user = (Teacher)session.getAttribute("USER");
	if(id!=null){
		Classroom cr = ClassroomManage.GetApply(Integer.valueOf(id));
		if(cr!=null){
		
			if(action!=null){
				try{				
					cr.setIsagree(Byte.MAX_VALUE);
					cr.setReplytime(new Date());
					cr.setTeacher(user.getTeacher());
					ClassroomManage.Reply(cr);
					out.println(JavaScript.alertandRedirect("批复成功！","ClassroomList.jsp"));
				}catch(Exception ex){
					ex.printStackTrace();
					out.println(JavaScript.alertandBack("批复失败，请重试！"));
				}
			}else{
 %>
<BR>
<form name="form1" method="post" action="admin/classroom/ClassroomReply.jsp?action=reply">
  <table width="500" border="0" align="center" cellpadding="7" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="titlebg">活动申请详细信息</td>
    </tr>
    <tr class="tdbg">
      <td width="90">活动内容：</td>
      <td><%=cr.getSubject()%></td>
    </tr>
    <tr class="tdbg">
      <td width="90">使用单位：</td>
      <td><%=cr.getUnit()%></td>
    </tr>
    <tr class="tdbg">
      <td width="90">活动时间：</td>
      <td><%=cr.getTakedate()%>&nbsp;<%=cr.getStarttime()%>－<%=cr.getEndtime()%></td>
    </tr>
    <tr class="tdbg">
      <td width="90">活动地点：</td>
      <td><%=cr.getClassroom()%></td>
    </tr>
    <tr class="tdbg">
      <td width="90">活动负责人：</td>
      <td><%=cr.getDirector() %></td>
    </tr>
    <tr class="tdbg">
      <td>联系电话：</td>
      <td><%=cr.getTel() %></td>
    </tr>
    <tr class="tdbg">
      <td width="90">申请时间：</td>
      <td><%=cr.getPubtime() %></td>
    </tr>
<%	if(cr.getIsagree()!=null&&cr.getIsagree()>0){ %>
	<tr class="tdbg">
      <td width="90">批复时间：</td>
      <td><%=cr.getReplytime().toString()==null?"": cr.getReplytime().toString()%></td>
    </tr>
	<tr class="tdbg">
	  <td>批复人：</td>
	  <td><%=cr.getTeacher()==null?"": cr.getTeacher()%></td>
    </tr>
<%	}%>
</table>
<BR>
<center>
<%if(cr.getIsagree()==null||cr.getIsagree()<1){%><input type="submit" name="Submit" value="批准此活动">&nbsp;<%}%>
<input name="id" type="hidden" id="id" value="<%=cr.getId() %>">
<input type="button" name="Submit2" value="删除此活动" onClick="location.href='ClassroomDel.jsp?id=<%=cr.getId()%>'">&nbsp;
<input type="button" name="Submit2" value="返&nbsp;回" onClick="history.back()">
</center>
<%
			}
		}
	}
 %>

</form>
</body>
</html>
