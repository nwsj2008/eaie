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
<title>����ʵ���б�</title>
</head>
<body>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	ExpList elist = new ExpList();	
	List<Innovativelexp> list = elist.getList(curPage);
	Page pager = elist.getCurrentPage();		
	if(list.size()<1){	
		out.println("<center><h4>����ʵ����Ϣ</h4></center>");
		return;		
	}
	
		
		
 %>

<form name="search" method="post" action="admin/dailyfiles/FileList.jsp" >
  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" align="center" cellpadding="4" cellspacing="0">
        <tr>
          <td>&nbsp;<strong>ʵ������</strong>��            
            <input name="keyword" type="text" id="keyword" size="30"/>
            <input name="Submit" type="submit" value="��&nbsp;��" /></td>         
        </tr>
      </table></td>
    </tr>
  </table>
</form>
<form action="admin/quality/ExpDel.jsp" method="post" name="delete" id="expform">
<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  <tr>
    <td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
      ѡ������&nbsp;&nbsp;
      <input type="submit" name="Submit" value="ɾ����ѡʵ��" onClick="{if(confirm('ȷ��ɾ��ѡ�е��ļ���')){return true;}return false;}"></td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
    <td width="35">ѡ��</td>
    <td>ʵ������</td>
    <td width="80">������</td>
    <td width="80">ָ����ʦ</td>
    <td width="70">ѡ������</td>
    <td width="60">�Ƿ񷢲�</td>   
    <td width="140">����</td>
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
			out.println("ѧ��");
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
    		out.println("��");
    	}else{
    		out.println("��");
    	}
	%></td>  
    <td align="center">
	<a href="admin/quality/ExpDel.jsp?id=<%=exp.getExpid()%>"onclick="{if(confirm('ȷ��ɾ����')){return true;}return false;}">ɾ��</a>&nbsp;
    <a href="admin/quality/ExpEdit.jsp?id=<%=exp.getExpid() %>">�༭</a>&nbsp;
 <%if(exp.getIspass()!=null&&exp.getIspass()>0){%>
 
  <a href="admin/quality/ExpPass.jsp?id=<%=exp.getExpid() %>&action=cancel">ȡ������</a>
 <%}else{%>
   <a href="admin/quality/ExpPass.jsp?id=<%=exp.getExpid() %>">����ʵ��</a>
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
