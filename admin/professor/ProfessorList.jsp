<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>导师列表</title>
	<base href="<%=basePath%>">
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
<Script Language=JavaScript>
	function checkall() 
	{ 	var num; 
		num=document.form2.elements.length; 
	
		if(document.form2.chkall.checked) 
		{	var i; 
			for(i=0;i<num;i++) 
			if(document.form2.elements[i].type=="checkbox"&&document.form2.elements[i].name!="chkall") 
				document.form2.elements[i].checked = true; 
			return true; 
		} 
		else 
		{ 	var j; 
			for(i=0;i<num;i++) 
			if(document.form2.elements[i].type == "checkbox"&&document.form2.elements[i].name!="chkall") 
				document.form2.elements[i].checked = !(document.form2.elements[i].checked); 
			return true; 
		} 

	} 
</Script>
</head>
<body>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		
	ProfessorList plist = new ProfessorList(); 
	List list = plist.getList(curPage);
	Page pager = plist.getCurrentPage();		
	Iterator<Professor> it =list.iterator();
 %>



<form action="admin/professor/ProfessorDel.jsp" method="post" name="form2" id="form2">
 	<table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
	<tr>
	<td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
	选取所有的导师&nbsp;&nbsp;
	<input type="submit" name="Submit" value="删除所选的导师" onClick="{if(confirm('确定删除选中的导师吗？')){return true;}return false;}"></td>
	<td align="right"><input type="button" value="添加导师" onClick="location.href='ProfessorAdd.jsp'">
	&nbsp;&nbsp;</td>
	</tr>
	</table>
 <%
 	if(list.size()==0){
 		
 		out.println("<center><h4>没有导师记录，请添加</h4></center>");
 		return;
 	}
 %>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
<tr align="center" class="titlebg">
<td width="35">选中</td>
<td width="100">姓名</td>
<td width="40">性别</td>
<td width="70">职称</td>
<td width="70">导师</td>
<td>学科</td>
<td width="80">操作</td>
</tr>
<%
		while(it.hasNext()){			
			Professor professor = it.next();
 %>
<tr align="center" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
<td width="35"><input name="id" type="checkbox" id="id" value="<%=professor.getId() %>"></td>
<td width="100"><a href="admin/professor/ProfessorEdit.jsp?id=<%=professor.getId() %>"><%=professor.getName() %></a></td>
<td width="40"><%if(professor.getSex()!=null&&professor.getSex()>0){ out.println("男");} else {out.println("女");}%></td>
<td width="70"><%=professor.getDegree()==null?"": professor.getDegree()%></td>
<td width="70">
<%
			if(professor.getGradeid().equals(1)){
			
				out.println("院士");
			}
			if(professor.getGradeid().equals(2)){
			
				out.println("博导");
			}
			if(professor.getGradeid().equals(3)){
				
				out.println("硕导");
			}
			if(professor.getGradeid().equals(4)){
				
				out.println("讲师");
			}	
 %>

 </td>
<td><%=professor.getMajor()==null?"":professor.getMajor() %></td>
<td width="80"><a href="admin/professor/ProfessorEdit.jsp?id=<%=professor.getId() %>">编辑</a>&nbsp;&nbsp;<a href="admin/professor/ProfessorDel.jsp?id=<%=professor.getId() %>" onClick="{if(confirm('确定删除吗？')){return true;}return false;}">删除</a></td>
</tr> 

<%
		}
%>

</table>
</form>
<form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">         
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
</form>
</body>
</html>

