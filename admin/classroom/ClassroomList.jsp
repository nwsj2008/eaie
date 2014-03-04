<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.classroom.*" %>
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
<title>������б�</title>
<Script Language=JavaScript>
function checkall()     
{  var num;     
   num=document.form2.elements.length;     
        
   if(document.form2.chkall.checked)     
   {  var i;     
      for(i=0;i<num;i++)     
        if(document.form2.elements[i].type=="checkbox"&&document.form2.elements[i].name!="chkall")     
           document.form2.elements[i].checked = true;     
      return true;     
   }     
   else   
   {  var j;     
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
	List list;
 %>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
	
	ApplyList alist = new ApplyList();	
	list = alist.getFileList(curPage);		
	Page pager = alist.getCurrentPage();		
	Iterator it =list.iterator();
		
		
		
 %>

<form name="form2" method="post" action="admin/classroom/ClassroomDel.jsp">
	<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  		<tr>
    	<td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
     	 ѡȡ���е�����&nbsp;&nbsp;
      	<input type="submit" name="Submit" value="ɾ����ѡ������" onClick="{if(confirm('ȷ��ɾ��ѡ�е�������')){return true;}return false;}"></td>
    	<td align="right">&nbsp;&nbsp;</td>
  		</tr>
	</table>
  <table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td width="35">ѡ��</td>
      <td width="45">���</td>
      <td width="80">�����</td>
      <td width="80">��ص�</td>
      <td width="120">����ʱ��</td>
      <td>�����</td>
      <td>ʹ�õ�λ</td>
    </tr>
 <%
	while(it.hasNext()){			
		Classroom cr = (Classroom)it.next();
 %>
	<tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
      <td width="35" align="center"><input name="id" type="checkbox" id="delid" value="<%=cr.getId() %>"></td>
      <td width="45" align="center"><%if(cr.getIsagree()!=null)out.println("����"); %></td>
      <td width="80" align="center"><a href="admin/classroom/ClassroomReply.jsp?id=<%=cr.getId() %>"><%=cr.getTakedate() %></a></td>
      <td width="80" align="center"><%=cr.getClassroom()  %></td>
      <td width="120" align="center"><%=cr.getStarttime() %>��<%= cr.getEndtime() %></td>
      <td><a href="admin/classroom/ClassroomReply.jsp?id=<%=cr.getId() %>"><%=cr.getSubject()  %></a></td>
      <td align="center"><%=cr.getUnit() %></td>
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
