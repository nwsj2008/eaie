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
<title>文件列表</title>
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
          <td>&nbsp;<strong>文件搜索</strong>：            
            <input name="keyword" type="text" id="keyword" size="30"/>
            <input name="Submit" type="submit" value="搜&nbsp;索" /></td>
          <td width="150"><input type="button" name="Submit2" value="上传文件" onClick="location.href='Upload.jsp'" />
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
      选中所有的文件&nbsp;&nbsp;
      <input type="submit" name="Submit" value="删除选中文件" onClick="{if(confirm('确定删除选中的文件吗？')){return true;}return false;}"></td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
    <td width="35">选中</td>
    <td>文件名称</td>
    <td width="80">栏目</td>
    <td width="70">部门</td>
    <td width="60">大小</td>
    <td width="50">下载</td>
    <td width="70">上传人</td>
    <td width="120">上传时间</td>
    <td>操作</td>
    </tr>
<%
	while(it.hasNext()){			
		Upfile file = (Upfile)it.next();
		String bigClass ="";
		int bigid = file.getBigclassid();
		if(bigid==2){
		
		 	 bigClass ="本科生";
		
		}else if(bigid==3){
		
			 bigClass ="研究生";
		
		}else if(bigid==4){
		
			 bigClass ="科学研究";
		
		}else{
		
			 bigClass ="就业专栏";
		
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
	<a href="admin/dailyfiles/FileDelete.jsp?id=<%=file.getId()%>"onclick="{if(confirm('确定删除吗？')){return true;}return false;}">删除</a></td>
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
