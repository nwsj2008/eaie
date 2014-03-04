<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.party.PartyImp" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>机构设置</title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">

  </head>
  
  <body background="party/images/bg2.jpg">
  <% try { 
     List list = PartyImp.getBranchLish(); %>
  <%@ include file="/party/Header.jsp" %>
  <table width="762" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td>
	<table width="90%"  border="0" align="center" cellpadding="4" cellspacing="0">
 		<tr>
    		<td height="40" class="topic">您的位置：<a href="party/index.jsp">首页</a> &gt;&gt;&nbsp;机构设置</td>
  		</tr>
	</table>
	<table width="600"  border="0" align="center" cellpadding="2" cellspacing="0" style="margin-top:20">
	<% if(list.size()==0){ %>
 		<tr class="topic">
    		<td><div align="center"><strong>暂时没有机构</strong></div></td>
 		</tr>
 	<% } else {%>
        <% for (int i=0; i<list.size(); i++) {
           String branchName = list.get(i).toString();
           Collection collection = PartyImp.getBranchInfo(branchName);
           int num = Integer.parseInt(((List)collection).get(0).toString());
           List nameList = (List)((List)collection).get(1);
         %>
         <tr>
		 	<td class="zhibu"><strong><%=branchName%></strong>&nbsp;(<font color="red"><%=num%></font>)人<br>
		 	<% for(int j=0; j<nameList.size(); j++) {
			 	   String name = (((Object[])nameList.get(j))[0]).toString();
			 	   int post = Integer.parseInt((((Object[])nameList.get(j))[1]).toString());
			 	   String title;
			 	   switch(post){
				 	   case 1: title="<font color=red>(书记)</font>"; break;
				 	   case 2: title="<font color=blue>(组委)</font>"; break;
				 	   case 3: title="<font color=green>(宣委)</font>"; break;
				 	   default: title="";
			 	   }
			 	   out.print(name+title+"&nbsp;&nbsp;");
		 	   }
		 	%>
		 	</td>
		 </tr>
		 <tr><td>&nbsp;</td></tr>
     <% } 
     }%> 
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
    </table>
    <br>
  </td>
  </tr>
  </table>
  <%@ include file="/party/Footer.jsp" %>   
  <%} catch(Exception e){e.printStackTrace();} %>
  </body>
</html>
