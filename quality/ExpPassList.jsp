<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
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
<link href="admin/css/style.css" rel="stylesheet" type="text/css">
<title>创新实验题目列表</title>
</head>
<body>
<%		
	
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");	
	if(student==null){
		return;
	}
	
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	ExpList elist = new ExpList();	
	List<Innovativelexp> list = elist.getPassList(curPage);
	Page pager = elist.getCurrentPage();		
	if(list.size()<1){	
		out.println("<center><h4>暂无老师信息</h4></center>");
		return;		
	}
%>
<br>
<table width="522"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr> 
    <td align="center" class="main_title">待选题列表</td>  
  </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#666666">
  <tr bgcolor="#CCCCCC" class="maintext">
    <td height="28" align="center"><strong>序号</strong></td>
    <td height="28" align="center"><strong>实验名称</strong></td>
    <td height="28" align="center"><strong>指导老师</strong></td>      
 	<td height="28" align="center"><strong>第一志愿</strong></td>
    <td height="28" align="center"><strong>第二志愿</strong></td>
  </tr>
 <%
 	
 	boolean hasOrder1 = ChoseManage.hasOrder(student,"1");
 	boolean hasOrder2 = ChoseManage.hasOrder(student,"2"); 
 
	for(int i =0;i<list.size();i++){			
		Innovativelexp exp = list.get(i);
		if(ChoseManage.hasChose(exp,student)){
			continue;
		}
	
 %>
  <tr bgcolor="<%=exp.getIspass()==null? "#FFFFFF":"#E1F2FC"%>" class="maintext">
    <td width="70" height="28" align="center"><%=i+1%></td>
    <td height="28" align="center"><a href="quality/ExpDetail.jsp?id=<%=exp.getExpid() %>" target="_blank"><%=exp.getName() %></a></td>
    <td width="80" height="28" align="center"><%=exp.getTutor() %></td>   
 	<td height="28" width="70" align="center" >
 <%
 		if(!hasOrder1){
  %> 	
 	<a href="quality/Chose.jsp?id=<%=exp.getExpid() %>&order=1">选择</a>
 <%
 		}
 %>
 	</td>
    <td height="28" width="70" align="center">
<%
  		if(!hasOrder2){
%>	
    <a href="quality/Chose.jsp?id=<%=exp.getExpid() %>&order=2">选择</a>
<%
  		}
%>
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
</body>
</html>
