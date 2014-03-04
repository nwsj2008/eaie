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
    
    <title>党员信息</title>
    
	<link rel="stylesheet" type="text/css" href="party/css/css.css">

  </head>
  
  <body>
  <% try{
     Commie commie = (Commie)session.getAttribute("Commie"); %>
  	<table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="maintable">
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
      		} %>
       		</td>
      		<td>函调：
      <%
      if(!(commie.getHd()==null)){
      	out.print("<b>√</b>");
      }else{
      	out.print("<font color=red><b>×</b></font>");
      }  %>
     		 </td>
    	</tr>
    	<tr class="tdbg">
      		<td>入党志愿书：
      <% if(!(commie.getRdzys()==null)){
      		out.print("<b>√</b>");
       	}else{
       		out.print("<font color=red><b>×</b></font>");
      	} %>
       		</td>
      		<td>自传：  
      <%
      	if(!(commie.getZz()==null)){
      		out.print("<b>√</b>");
      	}else{
       		out.print("<font color=red><b>×</b></font>");
      	} %>
       		</td>
    	</tr>
    	<tr class="tdbg">
      		<td>党课结业证：
      <% if(!(commie.getDkjyz()==null)){
      		out.print("<b>√</b>");
      	  }else{
       		out.print("<font color=red><b>×</b></font>");
      		} %>
       		</td>
      		<td>半年总结：
      <%
      if(!(commie.getBnzj()==null)){
      out.print("<b>√</b>");
      }else{
       out.print("<font color=red><b>×</b></font>");
      } %>
       		</td>
    	</tr>
    	<tr class="tdbg">
      		<td>预备党员考察表：
	      <%
	      if(!(commie.getYbdykcb()==null)){
	      out.print("<b>√</b>"); 
	      }else{
	       out.print("<font color=red><b>×</b></font>");
	      } %>
       		</td>
      		<td>全年总结：
	      <%
	      if(!(commie.getQnzj()==null)){
	      out.print("<b>√</b>");
	      }else{
	       out.print("<font color=red><b>×</b></font>");
	      } %>
      	 	</td>
    	</tr>
    	<tr class="tdbg">
      		<td>转正申请书：
     	 <%
	      if(!(commie.getZzsqs()==null)){
	      out.print("<b>√</b>");
	      }else{
	       out.print("<font color=red><b>×</b></font>");
	      }%>
      		</td>
		    <td>思想汇报：<%=(commie.getSxhb()==null||commie.getSxhb().equals(""))?0:commie.getSxhb()%>&nbsp;篇</td>
    	</tr>
   		 <tr class="tdbg">
		      <td width="30"><strong>备注</strong></td>
		      <td colspan="2"><%=commie.getBeizhu()%></td>
    	</tr>
	</table>
	<br><br>
  <%} catch(Exception e){e.printStackTrace();} %>
  </body>
</html>
