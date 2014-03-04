<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="java.util.*" %>

<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
	<script language = "JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>
<title>创新实验选题学生列表</title>
</head>
<body>
<%		
	String id = request.getParameter("id");
	String order = request.getParameter("order");
	if(order==null){ order = "1";}	
	if(id==null){return;}
	Innovativelexp exp = ExpManage.getExp(Integer.valueOf(id));
	if(exp==null){return;}
	List<Expstudent> list = ChoseManage.getStudents(exp,order);	
%>
<br>
<table width="640"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong>选题学生列表</strong></td>   
  </tr>
  <tr>
    <td align="right">
    	 <select name="banji" id="banji" onChange="JumpMenu('self',this,0)">   
			<option value="?id=<%=id %>&order=1" <%if(order.equals("1")) out.println("selected"); %>>第一志愿</option>
			<option value="?id=<%=id %>&order=2" <%if(order.equals("2")) out.println("selected"); %>>第二志愿</option>
      	</select>
      	<input type="button" value="返&nbsp;回" onClick="location.href='ExpList.jsp'">
	</td>   
  </tr>
</table>
<%
	if(list.size()<1){	
		out.println("<center><h4>暂无选题学生信息</h4></center>");
		return;		
	}
 %>
<table width="640"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">   
    <td width="80" align="center"><strong>姓名</strong></td>
    <td width="100" align="center"><strong>学号</strong></td>  
 	<td width="100" align="center"><strong>班级</strong></td>
    <td width="100" align="center"><strong>电话</strong></td> 
    <td width="140" align="center"><strong>邮箱</strong></td> 
    <td align="120"><strong>志愿顺序</strong></td>
  </tr>
 <%
 	
	for(int i =0;i<list.size();i++){			
		Expstudent student = list.get(i);		
 %>
  <tr bgcolor="#FFFFFF" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
    <td  align="center"><%=student.getName() %></td>
    <td  align="center"><%=student.getStuid()  %></td>
    <td  align="center"><%=student.getClassinfo() %></td> 
 	<td  align="center" ><%=student.getTel() %></td>
    <td  align="center" ><%=student.getEmail() %></td>
    <td  align="center" ><%if(order.equals("1")){ out.println("第一志愿"); }else {out.println("第二志愿");}%></td>
  </tr>
<%
	}
 %>
</table>
</body>
</html>