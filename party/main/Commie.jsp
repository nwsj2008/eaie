<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.JavaScript" %>
<%@ page import="com.eaie.dbmanage.Commie"%>
<%@ page import="com.eaie.party.PartyImp"%>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Commie commie = (Commie)session.getAttribute("Commie");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>��Ա��Ϣ</title>
 
	<link rel="stylesheet" type="text/css" href="party/css/css.css">

  </head>
  
  <body background="party/images/bg2.jpg">
  <% try{ %>
   <%@ include file="/party/Header.jsp" %>
   <table width="762" border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
   	<td align="center" bgcolor="#FFFFFF">
   	<table width="90%"  border="0" align="center" cellpadding="4" cellspacing="0">
    	<tr>
    		<td height="40" class="topic">����λ�ã�<a href="party/index.jsp">��ҳ</a> &gt;&gt;&nbsp;<a href="party/main/CommieInfo.jsp" target="main">��Ա��Ϣ</a> | <%if (commie.getPost()==1) {%><a href="party/main/MyBranch.jsp" target="main">֧����Ա</a> | <a href="party/main/CommiePub.jsp" target="main">������ʾ</a> | <%}%><a href="party/main/Pw.jsp" target="main">�޸�����</a> | <a href="party/Logout.jsp">�˳���¼</a>
    	    </td>
  		</tr>
  	</table>
  	</td>
  </tr>
  <tr>
    <td align="center" valign="top"><span id="ospan" valign="top">
	<iframe src="party/main/CommieInfo.jsp" frameborder="0" id="main" name="main" scrolling="no"  style="height: 100%; width: 100%; z-index: 1" onload="ospan.style.height=main.document.body.scrollHeight;">
	</iframe>
	</span></td>
  </tr>
  </table>
   <%@ include file="/party/Footer.jsp" %>
   <% }catch(Exception e){e.printStackTrace();} %>
  </body>
</html>
