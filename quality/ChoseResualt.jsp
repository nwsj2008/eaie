<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%
	Expstudent student = (Expstudent)session.getAttribute("EXPSTUDENT");
	if(student==null){
		
		return;
	}	
	String firstOrder = "δѡ��";
	String secondOrder = "δѡ��";	
	
	Innovativelexp exp1 = ChoseManage.getExps(student,"1");	
	Innovativelexp exp2 = ChoseManage.getExps(student,"2");
	if(exp1!=null){
		firstOrder= exp1.getName();
	}
	if(exp2!=null){
		secondOrder= exp2.getName();
		
	}
	
%>
<html>
<head>
<style type="text/css">
<!--
table {
	font-size: 12px;	
	BORDER-COLLAPSE: collapse;
}
-->
</style>
</head>
<body>
<table width="480"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong >�ҵ�־Ը</strong></td>   
  </tr>
</table> 
  <table width="90%"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#333333">
  	<tr bgcolor="#E1F2FC">
      <td width="80" align="right">��һ־Ը��</td>
      <td align="center"><%=firstOrder%></td>
      <td align="center" width="40">
       <%
      	if(exp1!=null){
       %>
      <a href="ChoseDel.jsp?order=1">ɾ��</a>
      <%
      	}else{
       %>
       <a href="ExpPassList.jsp">ѡ��</a>
       <%
       	}
        %>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td width="80" align="right">�ڶ�־Ը��</td>
      <td  align="center"><%=secondOrder%></td>
      <td align="center" width="40">
      <%
      	if(exp2!=null){
       %>
      <a href="ChoseDel.jsp?order=2">ɾ��</a>
      <%
      	}else{
       %>
       <a href="ExpPassList.jsp">ѡ��</a>
       <%
       	}
        %>
      </td>
    </tr>   
	
  </table> 
</body>
</html>