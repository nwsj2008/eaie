<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbstudent.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
	
</script>
		
		
		<title>查看提前攻博生信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tqgb tqgb where tqgb.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Tqgb tqgb=(Tqgb)list.get(0);
 %>

 	<body>
		<BR>
	    <form name="form1" method="post" action="admin/tqgbxt/tqgbstudent/TqgbstudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						查看提前攻博生信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;名：
						
						<%=(tqgb.getName()==null)?"":tqgb.getName()%>
					</td>
					<td>
						学&nbsp;号：
						<%=(tqgb.getXuehao() == null) ? ""
							: tqgb.getXuehao()%>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					性&nbsp;别：
					<%=(tqgb.getSex() == null) ? ""
							: tqgb.getSex()%>
						</td>	
				
					<td >
				硕士专业：
					<%=(tqgb.getSszy()==null)?"":tqgb.getSszy()%>
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				拟报博士专业： 
				<%=(tqgb.getNbzy()==null)?"":tqgb.getNbzy()%>
						</td >
						<td>
						原硕导：
					<%=(tqgb.getSd()==null)?"":tqgb.getSd()%>
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						拟报博导：&nbsp; 
			<%=(tqgb.getNbbd()==null)?"":tqgb.getNbbd()%>
						</td>	
				
				
			  
					<td >
						成绩排名：
				<%=(tqgb.getCjpm()==null)?"":tqgb.getCjpm()%>
						</td>	
				
				</tr>
					
					
				<tr class="tdbg">
					<td >
						导师信息：
				<input name="dsxx" value="<%=(tqgb.getDsxx() == null) ? ""
						: tqgb.getDsxx()%>">	
						</td>	
				
					<td >
                     录取类别：
                  <input name="lqlb" value="<%=(tqgb.getLqlb()== null) ? ""
						: tqgb.getLqlb()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
						<td>
					录取专业： 
						<input name="lqzy" value="<%=(tqgb.getLqzy() == null) ? ""
						: tqgb.getLqzy()%>">	
						</td>
						<td>
				       联系方式：
				<%=(tqgb.getTel()==null)?"":tqgb.getTel()%>
				       
				</td>
						</tr>	
				<tr class="tdbg">
					<td colspan="2">
						备&nbsp;注：
					
					 <%=(tqgb.getBeizhu()==null)?"":tqgb.getBeizhu()%>
					
				</table>
			<BR>
			<center>
			    <input type="submit" name="submit" value="确定修改">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='TqgbstudentListSq.jsp'">
			</center>
    </form>
	</body>
	<%
 }
 %>
</html>