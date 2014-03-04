<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.student.*" %>

<html>
<head>
<title>��������ѧ����ѯ</title>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<Script Language=JavaScript>
			function checkall()
			{
				for (var i=0;i<list.elements.length;i++){
					var e = list.elements[i];
				if (e.name != 'chkall') e.checked = list.chkall.checked; 
				}
			}
			function JumpMenu(targ,selObj,restore){
				eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
				if (restore) selObj.selectedIndex=0;
			}
		</Script>

</head>
<body>


<%!
	List list;
	String sKeyWords,sType;
 %>
<%
		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		sKeyWords = request.getParameter("keyword");			
		sType = request.getParameter("type");	
			
	  	AidStudentList slist = new AidStudentList(); 
	  	list = slist.getAidStudentList(curPage,sType,sKeyWords);
		Page pager = slist.getCurrentPage();		
		Iterator it =list.iterator();
	  	
 %>
<form name="search" method="post" action="admin/student/AidStudentList.jsp">
  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" align="center" cellpadding="4" cellspacing="0">
        <tr>
          <td>&nbsp;<strong>�򵥲�ѯ��
		  </strong>
		  <select name="type" id="type">
           	<option value="stuid" <%if(sType!=null&&sType.equalsIgnoreCase("stuid")) out.println("selected"); %>>ѧ��</option>
           	<option value="name" <%if(sType!=null&&sType.equalsIgnoreCase("name")) out.println("selected"); %> >����</option>
          </select>
            <input name="keyword" type="text" id="keyword" size="30" value="<%=sKeyWords==null?"":sKeyWords %>">
            <input type="submit" name="Submit3" value="��&nbsp;ѯ"></td>
			<td>&nbsp;</td>
			<td width="100"><input type="button" value="���ѧ��" onClick="location.href='AidStudentEdit.jsp'">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>

<form name="list" method="post" action="admin/student/AidStudentDel.jsp">	
  <table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td width="35">ѡ��</td>
      <td width="80">ѧ��</td>
      <td>����</td>
      <td width="40">�Ա�</td>
      <td>�༶</td>
      <td>����</td>
      <td>����绰</td>
      <td>�ֻ�</td>
      <td>�Ƿ����</td>
      <td>�������</td>
    </tr>
<%
	while(it.hasNext()){			
		Student student = (Student)it.next();
 %>
    <tr align="center" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
      <td width="35"><input name="delid" type="checkbox" id="delid" value="<%=student.getStuid() %>"></td>
      <td width="80"><a href="admin/student/AidStudentInfo.jsp?stuid=<%=student.getStuid() %>"><%=student.getStuid() %></a></td>
      <td><%=student.getName() %></td>
      <td><%=student.getSex()==null?"": student.getSex()%></td>
      <td><%=student.getBanji()==null?"":student.getBanji() %></td>
      <td><%=student.getDorm()==null?"" :student.getDorm()%></td>
      <td><%=student.getDormtel()==null?"":student.getDormtel() %></td>
      <td><%=student.getMobiletel()==null? "":student.getMobiletel()%></td>
      <td><%=student.getIsloan()==null?"":student.getIsloan() %></td>
      <td><%=student.getAid()==null?"":student.getAid() %></td>
    </tr>
<% 
	}
%>
  </table>
  <table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  		<tr>
    		<td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
     		 ѡȡ����&nbsp;&nbsp;
     		 <input type="submit" name="Submit" value="ɾ����ѡ" onClick="{if(confirm('ȷ��ɾ��ѡ�е�ѧ����')){return true;}return false;}"></td>
   		 	<td align="right"></td>
  		</tr>
	</table>
</form>
<form name="pageForm" action="">   
 	<table align="center" width="96%">
       <tr><td align="center">
       <input type="hidden" id="keyword" name="keyword" value=<%=sKeyWords==null?"":sKeyWords %>>  
       <input type="hidden" id="keyword" name="type" value=<%=sType==null?"":sType %>>       
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
</form>
</body>
</html>
