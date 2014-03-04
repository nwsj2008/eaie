<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.quality.*"%>
<%@ page import="com.eaie.tools.*" %>
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
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<br>
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
		<td width="556" height=100% valign=top align=right>
		
		
<%
	String id = request.getParameter("id");
	if(id==null){	
		out.println(JavaScript.alertandBack("非法访问!"));
		return ;		
	}		
	Innovativelexp exp = ExpManage.getExp(Integer.valueOf(id));
	if(exp==null){
		out.println(JavaScript.alertandBack("该创新实验信息不存在!"));
		return;
	}
 %>
<table width="80%"  border="0" align="center" cellpadding="4" cellspacing="0">
  <br><tr>
    <td align="center"><strong class="main_title">创新实验课题详细信息</strong></td>    
  </tr>
</table>
<table width="500"  border="0" align="center" cellpadding="4" cellspacing="2" class="maintext">
    <tr>
      <td width="100">名称：</td> 
      <td><%=exp.getName()  %></td>      
    </tr>
    <tr>
      <td> 申请人（教师）： </td>   
      <td><%=exp.getTeacher()==null?"":exp.getTeacher()  %></td>       
    </tr>
    <tr>
      <td width="100"> 申请人（学生）： </td> 
      <td><%=exp.getStudent()==null?"":exp.getStudent()  %></td>     
    </tr>
     <tr>
      <td width="100"> 申请人联系方式： </td> 
      <td><%=exp.getContact() %></td>         
    </tr>
    <tr>
      <td width="100"> 指导老师： </td>  
      <td><%=exp.getTutor()  %></td>      
    </tr>    
     <tr>
      <td width="100">课程简介： </td>   
      <td><%=exp.getIntroduce()==null?"":exp.getIntroduce()%></td>      
    </tr>
    <tr>
     <td width="100"> 合作者要求： </td>      
     <td><%=exp.getTeam()==null?"":exp.getTeam()%></td>     
    </tr>
    <tr>
      <td width="100"> 特色与创新： </td> 
      <td><%=exp.getFeature()==null?"":exp.getFeature()%></td>         
    <tr>
      <td width="100">项目目标与实施： </td>    
      <td><%=exp.getIntention()==null?"":exp.getIntention()%></td>     
    </tr>        
    <tr>
      <td width="100"> 经费及使用： </td>    
      <td><%=exp.getMoney()==null?"":exp.getMoney()%></td>    
    </tr>        
</table> 

    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
  
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
