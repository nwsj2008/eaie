<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%@ page import="com.eaie.party.PartyImp" %>
<%@ page import="com.eaie.tools.JavaScript" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸�����</title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
	function checkForm()
    {
        if(!isNull("pwd","����"))
            return false;
        if(!isNull("pwd1","����"))
            return false;
        if(!isEqual("pwd","pwd1","��������������벻һ��������������"))
        	return false;
        if(!isTooLong("pwd",20,"�����������"))
            return false;   
        return true;
    }
    </script>

  </head>
  
  <body>
  <% try{
     Commie commie = (Commie)session.getAttribute("Commie"); 
     if (request.getParameter("action")==null)
     { %>
  	<form name="pwForm" method="post" action="party/main/Pw.jsp?action=change" onSubmit="return checkForm()">
  	<table width="300" border="0" align="center" cellpadding="6" cellspacing="1" class="maintable">
    	<tr align="center">
      		<td colspan="2" class="titlebg">�޸�����</td>
    	</tr>
   		 <tr class="tdbg">
      		<td>�����룺</td>
      		<td><input name="pwd" type="password" id="pwd" size="20"></td>
    	</tr>
	    <tr class="tdbg">
	      	<td>ȷ�����룺</td>
	      	<td><input name="pwd1" type="password" id="pwd1" size="20"></td>
	    </tr>
	    <tr align="center" class="tdbg">
	     	 <td colspan="2"><input type="submit" name="Submit" value="��  ��"></td>
	    </tr>
	</table>
	</form>
	<br><br>
	<%} else if(request.getParameter("action").equals("change")){	
			boolean isDone = PartyImp.setPw(request.getParameter("pwd").trim(),commie);
			if(isDone)
				out.print(JavaScript.alertandRedirect("�����޸ĳɹ���","CommieInfo.jsp"));
			else 
			out.print(JavaScript.alertandRedirect("�����޸�ʧ�ܣ�","CommieInfo.jsp"));
		}	
  } catch(Exception e){e.printStackTrace();} %>
  </body>
</html>
