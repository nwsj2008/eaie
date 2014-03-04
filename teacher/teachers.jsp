<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>导师分类查看</title>
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
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	String gradeid = request.getParameter("gradeid");
		
	ProfessorList plist = new ProfessorList(); 
	List<Professor> list = plist.getListByGradeId(curPage,gradeid);
	Page pager = plist.getCurrentPage();		
	
	if(list.size()>0){
 %>
<table width="550"  border="0" align="center" cellpadding="4" cellspacing="1">
 <tr width=100%>
    <td width="406" height="40" colspan="2"><img src="images/topic-t<%=(gradeid==null)?0:gradeid %>.jpg" width="406" height="22"></td>
  </tr>
  </table>
<table width="550"  border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#CCCCCC">
  <tr align="center" bgcolor="#E1F2FC" class="maintext">
    <td width="80"><strong>姓名</strong></td>
    <td width="50"><strong>性别</strong></td>
    <td width="80"><strong>出生年月</strong></td>
    <td width="100"><strong>职称</strong></td>
    <td><strong>学科</strong></td>
  </tr>
<% 
	for(int i = 0;i<list.size();i++){
	
		Professor professor = list.get(i);
%>


  <tr align="center" bgcolor="#FFFFFF" class="maintext">
    <td width="80"><a href="teacher/ProfessorInfo.jsp?id=<%=professor.getId()%>&type=5" class="news"><%=professor.getName() %></a></td>
    <td width="50"><%if(professor.getSex()!=null&&professor.getSex()>0){ out.println("男");} else{ out.println("女");} %></td>
    <td width="80"><%=professor.getBirth()==null?"":professor.getBirth() %></td>
    <td width="100"><%=professor.getDegree()==null?"":professor.getDegree() %></td>
    <td><%=professor.getMajor()==null?"":professor.getMajor()%></td>
  </tr>
<%
	
	} 
 %>
</table>
<form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">  
       <input type="hidden" name="gradeid" value="<%= gradeid==null?"1":gradeid %>">       
       <%@include file="../admin/common/Pager.jsp" %>    
       </td></tr> 
 	</table>
</form>
<%
	}else{
		
		out.println("<center><h5>暂无老师信息</h5></center>");
	}
 %>
 
 		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>
</body>
</html>