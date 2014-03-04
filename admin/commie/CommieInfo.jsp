<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.eaie.dbmanage.Commie"%>
<%@page import="com.eaie.common.BasicDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生党员详细信息</title>
    <link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
    <link href="admin_style.css" rel="stylesheet" type="text/css">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 
   
   
  <% 
  String stuid=request.getParameter("stuid"); 
  //querry返回的是list型（永远是）
  List list=BasicDAO.queryByHql("From Commie commie where commie.stuid='"+stuid+"'");
  if(list.size()==0){
  out.print("没有记录");
  }
  else if(list.size()>0){
  //将list里的第一个记录转换为commie型
  Commie commie =(Commie)list.get(0);
  
    
   %>

  
<BR>
<table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="border" style="margin-top:20">
    <tr class="tdbg">
      <td colspan="3" align="center" class="titlebg">学生党员信息</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="2"><strong>基本信息</strong></td>
      <td>学号：<%=commie.getStuid()%></td>
      <td>姓名：<%=(commie.getName()==null)?"":commie.getName()%></td>
    </tr>
    <tr class="tdbg">
      <td>性别：<%=(commie.getSex()==null)?"":commie.getSex()%></td>
      <td>班级：<%=commie.getBanji()%></td>
    </tr>
    <tr class="tdbg">     
      <td width="30" rowspan="2"><strong>党员信息</strong></td>
      <td>支部名称：<%=commie.getBranch()%></td>
      
      
      <td>职务：
      <%
      if(commie.getPost().equals(9)){
      out.print("普通党员");
      }else if(commie.getPost().equals(1)){
      out.print("书记");
      }else if(commie.getPost().equals(2)){
      out.print("组委");
      }else if(commie.getPost().equals(3)){
      out.print("宣委");
      }
	%></td>
    </tr>
    <tr class="tdbg">
      <td>入党时间：<%=commie.getAddtime()%></td>
      <td>是否正式：<%if (!(commie.getSfzs()==null)) {
      out.print("是("+((commie.getZzsj()==null)?" ":commie.getZzsj())+")");
      }else{
      out.print("否");
      }%></td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="5"><strong>档案信息</strong></td>
      <td>入党申请书：
      <%
      if(!(commie.getRdsqs()==null)){
      out.print("<b>√</b>");
      }else{
      out.print("<font color=red><b>×</b></font>");
      }
      
       %>
       </td>
      
      <td>函调：
      <%
      if(!(commie.getHd()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
      </td>
    </tr>
    <tr class="tdbg">
      <td>入党志愿书：
      <%
      if(!(commie.getRdzys()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
       </td>
      <td>自传：  
      <%
      if(!(commie.getZz()==null)){
      out.print("<b>√</b>");
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
       </td>
    </tr>
    <tr class="tdbg">
      <td>党课结业证：
      <%
      if(!(commie.getDkjyz()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
       </td>
      <td>半年总结：
      <%
      if(!(commie.getBnzj()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
       </td>
    </tr>
    <tr class="tdbg">
      <td>预备党员考察表：
      <%
      if(!(commie.getYbdykcb()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
       </td>
      <td>全年总结：
      <%
      if(!(commie.getQnzj()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
       </td>
    </tr>
 
    <tr class="tdbg">
      <td>转正申请书：
      <%
      if(!(commie.getZzsqs()==null)){
      out.print("<b>√</b>");
      
      }else{
       out.print("<font color=red><b>×</b></font>");
      }
       %>
      </td>
      
      
  
      <td>思想汇报：<%=commie.getSxhb()%>&nbsp;篇</td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>备注</strong></td>
      <td colspan="2"><%=commie.getBeizhu()%></td>
    </tr>
</table>
<BR>
<table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center">
       
        <input type="button" name="Submit1" value="查看详细信息" onClick="location.href='../student/StudentInfo.jsp?stuid=<%=commie.getStuid()%>'">  
         &nbsp;&nbsp;&nbsp;   
      <input type="button" name="Submit2" value="修改信息" onClick="location.href='CommieEdit.jsp?stuid=<%=commie.getStuid()%>'">  
	  &nbsp;&nbsp;&nbsp;<input type="button" name="Submit3" value="添加党员" onClick="location.href='CommieAdd.jsp'"></td>
    </tr> 
</table>
<% 
 } %>
</body>
</html>
