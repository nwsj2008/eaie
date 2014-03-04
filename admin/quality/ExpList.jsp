<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
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
<Script Language=JavaScript>
function checkall()     
{  var num;     
   num=document.expform.elements.length;     
        
   if(document.expform.chkall.checked)     
   {  var i;     
      for(i=0;i<num;i++)     
        if(document.expform.elements[i].type=="checkbox"&&document.expform.elements[i].name!="chkall")     
           document.expform.elements[i].checked = true;     
      return true;     
   }     
   else   
   {  var j;     
      for(i=0;i<num;i++)     
        if(document.expform.elements[i].type == "checkbox"&&document.expform.elements[i].name!="chkall")     
           document.expform.elements[i].checked = !(document.expform.elements[i].checked);     
      return true;     
   }     
     
}     
</Script>
<title>创新实验列表</title>
</head>
<body>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	ExpList elist = new ExpList();	
	List<Innovativelexp> list = elist.getList(curPage);
	Page pager = elist.getCurrentPage();		
	if(list.size()<1){	
		out.println("<center><h4>暂无实验信息</h4></center>");
		return;		
	}
	
		
		
 %>

<form name="search" method="post" action="admin/dailyfiles/FileList.jsp" >
  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" align="center" cellpadding="4" cellspacing="0">
        <tr>
          <td>&nbsp;<strong>实验搜索</strong>：            
            <input name="keyword" type="text" id="keyword" size="30"/>
            <input name="Submit" type="submit" value="搜&nbsp;索" /></td>         
        </tr>
      </table></td>
    </tr>
  </table>
</form>
<form action="admin/quality/ExpDel.jsp" method="post" name="delete" id="expform">
<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  <tr>
    <td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
      选中所有&nbsp;&nbsp;
      <input type="submit" name="Submit" value="删除所选实验" onClick="{if(confirm('确定删除选中的文件吗？')){return true;}return false;}"></td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
    <td width="35">选中</td>
    <td>实验名称</td>
    <td width="80">申请人</td>
    <td width="80">指导老师</td>
    <td width="70">选题人数</td>
    <td width="60">是否发布</td>   
    <td width="140">操作</td>
    </tr>
<%
	for(int i = 0;i<list.size();i++){			
		Innovativelexp exp = list.get(i);
 %>
  <tr bgcolor="#FFFFFF" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
    <td  align="center"><input name="id" type="checkbox" id="id" value="<%=exp.getExpid() %>" /></td>
    <td><a href="quality/ExpDetail.jsp?id=<%=exp.getExpid() %>" target="_blank"><%=exp.getName() %></a></td>
    <td align="center">
    <%
		if(exp.getTeacher()!=null){
			
			out.println(exp.getTeacher());
		}else if(exp.getStudent()!=null){
			out.println("学生");
		}		
			
	%>
    </td>
    <td align="center"><%=exp.getTutor() %></td>
    <td align="center">
 <%
 	int stunum = ChoseManage.getStudents(exp).size() ;
 	if(stunum>0){
  %>
  	
    <a href="admin/quality/ExpStudents.jsp?id=<%=exp.getExpid() %>">
	 <%=ChoseManage.getStudents(exp).size() %> </a>  
<%
	}else{ out.println("0");}
 %> 
    </td>
    <td align="center">
    <% 	if(exp.getIspass()!=null&&exp.getIspass()>0){    		
    		out.println("是");
    	}else{
    		out.println("否");
    	}
	%></td>  
    <td align="center">
	<a href="admin/quality/ExpDel.jsp?id=<%=exp.getExpid()%>"onclick="{if(confirm('确定删除吗？')){return true;}return false;}">删除</a>&nbsp;
    <a href="admin/quality/ExpEdit.jsp?id=<%=exp.getExpid() %>">编辑</a>&nbsp;
 <%if(exp.getIspass()!=null&&exp.getIspass()>0){%>
 
  <a href="admin/quality/ExpPass.jsp?id=<%=exp.getExpid() %>&action=cancel">取消发布</a>
 <%}else{%>
   <a href="admin/quality/ExpPass.jsp?id=<%=exp.getExpid() %>">发布实验</a>
<% }%>   
   	</td>
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
