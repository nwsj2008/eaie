<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%@ page import="com.eaie.party.PartyImp" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="commie" class="com.eaie.dbmanage.Commie" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>支部成员</title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">
  </head>
  
  <body>
   <%try{ 
     commie = (Commie)session.getAttribute("Commie");
     Collection collection = PartyImp.getBranchInfo(commie.getBranch()); %>
     <table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="maintable">
     <% int num = Integer.parseInt(((List)collection).get(0).toString());
        List nameList = (List)((List)collection).get(1);
     %>
         <tr>
		 	<td class="zhibu"><strong><%=commie.getBranch()%></strong>&nbsp;(<font color="red"><%=num%></font>)人<br>
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
     </table>
  <%} catch(Exception e){e.printStackTrace();} %>
  <br><br>
  </body>
</html>
