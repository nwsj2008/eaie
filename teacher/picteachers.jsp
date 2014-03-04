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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>师资队伍</title>
<base href="<%=basePath%>">
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<BR>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		
	ProfessorList plist = new ProfessorList(); 
	List<Professor> list = plist.getList(curPage);
	Page pager = plist.getCurrentPage();
	
	if(list.size()>0){		
	
 %>    
<table width="500"  border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
<%
		for(int i=0;i<list.size();i++){
	
			Professor professor = list.get(i);
 %>
  <tr bgcolor="<%if(i%2==1){ out.print("#E1F2FC");} else {out.print("#FFFFFF");}%>">
    <td width="100" align="center" class="maintext">
    <%
    	
    		if(professor.getImageurl()!=null&&!professor.getImageurl().equals("") ){
    
    %><img src="UploadFiles/upfile/<%=professor.getImageurl()%>"
     width="80">
     <%	
     		}else{
     		
     			out.println("暂无照片");
     		}
     
      %>
    </td>
    <td bgcolor="<%if(i%2==1){ out.print("#E1F2FC");} else {out.print("#FFFFFF");}%>">
	    <table width="100%"  border="0" align="center" cellpadding="5" cellspacing="0" class="maintext">
	      <tr>
	        <td width="50%">姓名：<%=professor.getName() %></td>
	        <td>职称：<%=professor.getDegree()==null?"":professor.getDegree() %></td>
	      </tr>
	      <tr>
	        <td colspan="2">研究方向：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<%=professor.getField()%>&nbsp;&nbsp;<a href="teacher/ProfessorInfo.jsp?id=<%=professor.getId() %>"><br>详细信息>></a></td>
	      </tr>
	    </table>
    </td>
  </tr>
 <%
  		}  
 %>
</table>
<form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">         
       <%@include file="../admin/common/Pager.jsp" %>    
       </td></tr> 
 	</table>
</form>
<%
	}else{
		
		out.println("<center><h4>暂无老师信息</h4></center>");
	
	}
 %>



</body>
</html>