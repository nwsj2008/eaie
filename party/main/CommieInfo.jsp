<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��Ա��Ϣ</title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">

  </head>
  
  <body>
  <% try{
     Commie commie = (Commie)session.getAttribute("Commie"); %>
  	<table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="maintable">
    	<tr class="tdbg">
      		<td colspan="3" align="center" class="titlebg">ѧ����Ա��Ϣ</td>
   		</tr>
    	<tr class="tdbg">
      		<td width="30" rowspan="2"><strong>������Ϣ</strong></td>
      		<td>ѧ�ţ�<%=commie.getStuid()%></td>
      		<td>������<%=(commie.getName()==null)?"":commie.getName()%></td>
    	</tr>
    	<tr class="tdbg">
      		<td>�Ա�<%=(commie.getSex()==null)?"":commie.getSex()%></td>
      		<td>�༶��<%=commie.getBanji()%></td>
    	</tr>
    	<tr class="tdbg">     
      		<td width="30" rowspan="2"><strong>��Ա��Ϣ</strong></td>
      		<td>֧�����ƣ�<%=commie.getBranch()%></td>
 			 <td>ְ��
      	<%
      	if(commie.getPost().equals(9)){
     		out.print("��ͨ��Ա");
      	}else if(commie.getPost().equals(1)){
      		out.print("���");
      	}else if(commie.getPost().equals(2)){
      		out.print("��ί");
      	}else if(commie.getPost().equals(3)){
      		out.print("��ί");
     	}
		%></td>
    	</tr>
    	<tr class="tdbg">
      		<td>�뵳ʱ�䣺<%=commie.getAddtime()%></td>
      		<td>�Ƿ���ʽ��<%if (!(commie.getSfzs()==null)) {
      			out.print("��("+((commie.getZzsj()==null)?" ":commie.getZzsj())+")");
      		}else{
      		out.print("��");
      		}%></td>
    	</tr>
    	<tr class="tdbg">
      		<td width="30" rowspan="5"><strong>������Ϣ</strong></td>
      		<td>�뵳�����飺
      	<%
     	 if(!(commie.getRdsqs()==null)){
      		out.print("<b>��</b>");
     	 }else{
      		out.print("<font color=red><b>��</b></font>");
      		} %>
       		</td>
      		<td>������
      <%
      if(!(commie.getHd()==null)){
      	out.print("<b>��</b>");
      }else{
      	out.print("<font color=red><b>��</b></font>");
      }  %>
     		 </td>
    	</tr>
    	<tr class="tdbg">
      		<td>�뵳־Ը�飺
      <% if(!(commie.getRdzys()==null)){
      		out.print("<b>��</b>");
       	}else{
       		out.print("<font color=red><b>��</b></font>");
      	} %>
       		</td>
      		<td>�Դ���  
      <%
      	if(!(commie.getZz()==null)){
      		out.print("<b>��</b>");
      	}else{
       		out.print("<font color=red><b>��</b></font>");
      	} %>
       		</td>
    	</tr>
    	<tr class="tdbg">
      		<td>���ν�ҵ֤��
      <% if(!(commie.getDkjyz()==null)){
      		out.print("<b>��</b>");
      	  }else{
       		out.print("<font color=red><b>��</b></font>");
      		} %>
       		</td>
      		<td>�����ܽ᣺
      <%
      if(!(commie.getBnzj()==null)){
      out.print("<b>��</b>");
      }else{
       out.print("<font color=red><b>��</b></font>");
      } %>
       		</td>
    	</tr>
    	<tr class="tdbg">
      		<td>Ԥ����Ա�����
	      <%
	      if(!(commie.getYbdykcb()==null)){
	      out.print("<b>��</b>"); 
	      }else{
	       out.print("<font color=red><b>��</b></font>");
	      } %>
       		</td>
      		<td>ȫ���ܽ᣺
	      <%
	      if(!(commie.getQnzj()==null)){
	      out.print("<b>��</b>");
	      }else{
	       out.print("<font color=red><b>��</b></font>");
	      } %>
      	 	</td>
    	</tr>
    	<tr class="tdbg">
      		<td>ת�������飺
     	 <%
	      if(!(commie.getZzsqs()==null)){
	      out.print("<b>��</b>");
	      }else{
	       out.print("<font color=red><b>��</b></font>");
	      }%>
      		</td>
		    <td>˼��㱨��<%=(commie.getSxhb()==null||commie.getSxhb().equals(""))?0:commie.getSxhb()%>&nbsp;ƪ</td>
    	</tr>
   		 <tr class="tdbg">
		      <td width="30"><strong>��ע</strong></td>
		      <td colspan="2"><%=commie.getBeizhu()%></td>
    	</tr>
	</table>
	<br><br>
  <%} catch(Exception e){e.printStackTrace();} %>
  </body>
</html>
