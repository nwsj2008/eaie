<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.common.BasicDAO" %>
<%@ page import="com.eaie.dbmanage.Bigclass" %>
<%@ page import="com.eaie.dbmanage.Smallclass" %>
<%@ page import="com.eaie.admin.news.NewsImp" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有栏目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
  
    <% try{
       List bigClassList = NewsImp.getAllList(); 
    %>
     
  <table width="200" border="0" align="center" cellpadding="5" cellspacing="0" style="margin-top:30px">
  <tr>
    <td align="center"><a href="admin/column/AddBigClass.jsp"><strong>添加栏目</strong></a></td>
  </tr>
  </table>
  
  <table width="80%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
     <td width="40%">栏目名称</td>
     <td width="60%">操作选项</td>
  </tr>
  <% if(bigClassList == null){ %>
  <tr align="center" class="tdbg">
     <td><a href="AddBiggClass.jsp">添加栏目</a></td>
     <td>无</td>
  </tr>
  <%}else{
        Iterator it = bigClassList.iterator();
        Bigclass bigClass = new Bigclass();
        while (it.hasNext()) {
            bigClass = (Bigclass)it.next();  
  %>    
  <tr class="title2bg">
     <td><img src="admin/images/add.gif" width="15" height="15"><%=bigClass.getBigclass()%>&nbsp;(<%=bigClass.getBigclassid() %>)</td>
     <td align="right"><a href="admin/column/AddSmallClass.jsp?bigClass=<%=bigClass.getBigclass()%>&bigClassId=<%=bigClass.getId()%>">添加二级分类</a>&nbsp;&nbsp;&nbsp;<a href="admin/column/ClassEdit.jsp?name=<%=bigClass.getBigclass()%>&id=<%=bigClass.getId()%>&table=Bigclass">修改</a>&nbsp;&nbsp;&nbsp;<a href="servlet/DeleteObj?table=Bigclass&id=<%=bigClass.getId()%>" onClick="{if(confirm('确定删除吗？')){return true;}return false;}">删除</a>&nbsp;&nbsp;</td>
  </tr>
  <% Set smallClassSet = bigClass.getSmallclasses();
     if (!smallClassSet.isEmpty()) {
        Iterator itSmall = smallClassSet.iterator();
        while (itSmall.hasNext()){
           Smallclass smallClass = (Smallclass)itSmall.next();
  %>
  <tr class="tdbg">
     <td>&nbsp;&nbsp;&nbsp;<img src="admin/images/sub.gif" width="15" height="15"><a href="admin/news/NewsEdit.jsp?smallclassid=<%=smallClass.getId()%>"><%=smallClass.getSmallclass()%></a>&nbsp;(<%=smallClass.getSmallclassid()%>)</td>
     <td align="right"><a href="admin/column/ClassEdit.jsp?name=<%=smallClass.getSmallclass()%>&id=<%=smallClass.getId()%>&table=Smallclass">修改</a>&nbsp;&nbsp;&nbsp;<a href="servlet/DeleteObj?table=Smallclass&id=<%=smallClass.getId()%>" onClick="{if(confirm('确定删除吗？')){return true;}return false;}">删除</a>&nbsp;&nbsp;</td>
  </tr>
  <%
      }
      }
    }
  }
  }catch (Exception e){
      e.printStackTrace();
  }
  %>
</table>
  </body>
</html>
