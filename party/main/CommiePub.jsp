<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%@ page import="com.eaie.dbmanage.Commiepub" %>
<%@ page import="com.eaie.party.PartyImp" %>
<%@ page import="com.eaie.tools.JavaScript" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Commie commie = (Commie)session.getAttribute("Commie");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>������ʾ</title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
	function check()
    {
        if(!textareaVaild("publist","��ʾ����",400))
        	return false;
        if(!isTooLong("publist",400,"��ʾ����"))
            return false;  
        return true;
    }
   </script>
	

  </head>
  
  <body>
  <% try{ 
  if (request.getParameter("action")==null) {%>

  <form name="pubForm" method="post" action="party/main/CommiePub.jsp" onSubmit="return check()">
  	<table width="550" border="0" align="center" cellpadding="5" cellspacing="1" class="maintable">
    	<tr align="center">
      		<td colspan="2" class="titlebg">������ʾ</td>
    	</tr>
   		 <tr class="tdbg">
      		<td>֧�����ƣ�</td>
      		<td><%=commie.getBranch() %></td>
    	</tr>
	    <tr class="tdbg">
	      	<td>��ʾ������</td>
	      	<td><textarea name="publist" cols="45" rows="10" id="publist"></textarea> </td>
	    </tr>
	    <tr align="center" class="tdbg">
	     	 <td colspan="2"><input type="submit" name="Submit" value="��  ��">
	     	  &nbsp;&nbsp;&nbsp;
      ����������<input type="reset" name="Submit2" value="�ء���">
      ����������<input type="hidden" name="action" value="save"></td>
	    </tr>
	</table>
	</form>
  <%}else if(request.getParameter("action").equals("save")){
  		Commiepub pub = new Commiepub();
  		pub.setBranch(commie.getBranch());
  		pub.setPublist(request.getParameter("publist"));
  		pub.setPubtime(new java.util.Date());
  		boolean isDone = PartyImp.savePub(pub);
  		if(isDone)
  			out.print(JavaScript.alertandRedirect("������ʾ�ɹ�! �����������ݽ���1Сʱ֮������ҳ���ֳ���","CommieInfo.jsp"));
  	    else
  	    	out.print(JavaScript.alert("������ʾʧ��,����ϵͳ����Ա��ϵ!"));
     }
  }
  catch(Exception e){e.printStackTrace();} %>
  <br><br>
  </body>
</html>
