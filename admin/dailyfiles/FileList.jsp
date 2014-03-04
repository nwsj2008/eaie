<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.upfile.*" %>
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
   num=document.del.elements.length;     
        
   if(document.del.chkall.checked)     
   {  var i;     
      for(i=0;i<num;i++)     
        if(document.del.elements[i].type=="checkbox"&&document.del.elements[i].name!="chkall")     
           document.del.elements[i].checked = true;     
      return true;     
   }     
   else   
   {  var j;     
      for(i=0;i<num;i++)     
        if(document.del.elements[i].type == "checkbox"&&document.del.elements[i].name!="chkall")     
           document.del.elements[i].checked = !(document.del.elements[i].checked);     
      return true;     
   }     
     
}     
</Script>
<title>�ļ��б�</title>
</head>
<body>
<%
	List list;
 %>
<%
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
	String sKeyWords = request.getParameter("keyword");	
	UpFileList ulist = new UpFileList();	
	if(sKeyWords==null){	
		list = ulist.getFileList(curPage);
	}else{
		list = ulist.searchFile(curPage,sKeyWords);
	}
		//System.out.println(list.size());
	Page pager = ulist.getCurrentPage();		
	Iterator it =list.iterator();
		
		
		
 %>

<form name="search" method="post" action="admin/dailyfiles/FileList.jsp">
  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" align="center" cellpadding="4" cellspacing="0">
        <tr>
          <td>&nbsp;<strong>�ļ�����</strong>��            
            <input name="keyword" type="text" id="keyword" size="30"/>
            <input name="Submit" type="submit" value="��&nbsp;��" /></td>
          <td width="150"><input type="button" name="Submit2" value="�ϴ��ļ�" onClick="location.href='Upload.jsp'" />
    &nbsp;&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
<form action="admin/dailyfiles/FileDelete.jsp" method="post" name="delete" id="del">
<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  <tr>
    <td><input name="chkall" type="checkbox" id="chkall" value="checkbox" onClick="checkall();">
      ѡ�����е��ļ�&nbsp;&nbsp;
      <input type="submit" name="Submit" value="ɾ��ѡ���ļ�" onClick="{if(confirm('ȷ��ɾ��ѡ�е��ļ���')){return true;}return false;}"></td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
    <td width="35">ѡ��</td>
    <td>�ļ�����</td>
    <td width="80">��Ŀ</td>
    <td width="70">����</td>
    <td width="60">��С</td>
    <td width="50">����</td>
    <td width="70">�ϴ���</td>
    <td width="120">�ϴ�ʱ��</td>
    <td>����</td>
    </tr>
<%
	while(it.hasNext()){			
		Upfile file = (Upfile)it.next();
		String bigClass ="";
		int bigid = file.getBigclassid();
		if(bigid==2){
		
		 	 bigClass ="������";
		
		}else if(bigid==3){
		
			 bigClass ="�о���";
		
		}else if(bigid==4){
		
			 bigClass ="��ѧ�о�";
		
		}else{
		
			 bigClass ="��ҵר��";
		
		}
 %>
  <tr bgcolor="#FFFFFF" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
    <td  align="center"><input name="id" type="checkbox" id="id" value="<%=file.getId() %>" /></td>
    <td><a href="UploadFiles/upfile/<%=file.getFileurl() %>"><%=file.getFilename() %></a></td>
    <td align="center"><%=bigClass%></td>
    <td align="center"><%=file.getPart() %></td>
    <td align="right"><%=file.getFilesize() %>&nbsp;</td>
    <td align="center"><%=file.getDownnum() %></td>
    <td align="center"><%=file.getTeacher() %></td>
    <td align="center"><%=file.getUptime().toLocaleString() %></td>
    <td align="center">
	<a href="admin/dailyfiles/FileDelete.jsp?id=<%=file.getId()%>"onclick="{if(confirm('ȷ��ɾ����')){return true;}return false;}">ɾ��</a></td>
    </tr><%
 	}
%>
</table>
</form>
<form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">
       <input type="hidden" id="keyword" name="keyword" value=<%=sKeyWords==null?"":sKeyWords %>>     
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
 </form>

</body>
</html>
