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
    
    <title>������Ŀ</title>
    
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
    <td align="center"><a href="admin/column/AddBigClass.jsp"><strong>�����Ŀ</strong></a></td>
  </tr>
  </table>
  
  <table width="80%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
     <td width="40%">��Ŀ����</td>
     <td width="60%">����ѡ��</td>
  </tr>
  <% if(bigClassList == null){ %>
  <tr align="center" class="tdbg">
     <td><a href="AddBiggClass.jsp">�����Ŀ</a></td>
     <td>��</td>
  </tr>
  <%}else{
        Iterator it = bigClassList.iterator();
        Bigclass bigClass = new Bigclass();
        while (it.hasNext()) {
            bigClass = (Bigclass)it.next();  
  %>    
  <tr class="title2bg">
     <td><img src="admin/images/add.gif" width="15" height="15"><%=bigClass.getBigclass()%>&nbsp;(<%=bigClass.getBigclassid() %>)</td>
     <td align="right"><a href="admin/column/AddSmallClass.jsp?bigClass=<%=bigClass.getBigclass()%>&bigClassId=<%=bigClass.getId()%>">��Ӷ�������</a>&nbsp;&nbsp;&nbsp;<a href="admin/column/ClassEdit.jsp?name=<%=bigClass.getBigclass()%>&id=<%=bigClass.getId()%>&table=Bigclass">�޸�</a>&nbsp;&nbsp;&nbsp;<a href="servlet/DeleteObj?table=Bigclass&id=<%=bigClass.getId()%>" onClick="{if(confirm('ȷ��ɾ����')){return true;}return false;}">ɾ��</a>&nbsp;&nbsp;</td>
  </tr>
  <% Set smallClassSet = bigClass.getSmallclasses();
     if (!smallClassSet.isEmpty()) {
        Iterator itSmall = smallClassSet.iterator();
        while (itSmall.hasNext()){
           Smallclass smallClass = (Smallclass)itSmall.next();
  %>
  <tr class="tdbg">
     <td>&nbsp;&nbsp;&nbsp;<img src="admin/images/sub.gif" width="15" height="15"><a href="admin/news/NewsEdit.jsp?smallclassid=<%=smallClass.getId()%>"><%=smallClass.getSmallclass()%></a>&nbsp;(<%=smallClass.getSmallclassid()%>)</td>
     <td align="right"><a href="admin/column/ClassEdit.jsp?name=<%=smallClass.getSmallclass()%>&id=<%=smallClass.getId()%>&table=Smallclass">�޸�</a>&nbsp;&nbsp;&nbsp;<a href="servlet/DeleteObj?table=Smallclass&id=<%=smallClass.getId()%>" onClick="{if(confirm('ȷ��ɾ����')){return true;}return false;}">ɾ��</a>&nbsp;&nbsp;</td>
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
