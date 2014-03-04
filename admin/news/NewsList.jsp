<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString" %>
<%@ page import="com.eaie.dbmanage.News" %>
<%@ page import="com.eaie.admin.news.NewsList" %>
<%@ page import="java.text.SimpleDateFormat" %>


<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="news" class="com.eaie.dbmanage.News" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
  	function Jumping(){
      	document.pageForm.submit();
  	}
  
  	function gotoPage(curPage){
    	document.pageForm.curPage.value=curPage;
      	document.pageForm.submit();
  	}
</script>
    

  </head>
  
  <body>
  <% String goClass = (request.getParameter("goClass")==null||request.getParameter("goClass").equals(""))?null:request.getParameter("goClass");
     String searchPart = (request.getParameter("searchPart")==null||request.getParameter("searchPart").equals(""))?null:request.getParameter("searchPart");
     String keyWord = ((request.getParameter("keyWord")==null||request.getParameter("keyWord").equals(""))?null:(request.getParameter("keyWord").trim()));
     int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
   %>
  <%@include file="NewsHead.jsp" %>
 
<form name="mainForm" method="post" action="admin/news/BulkDel.jsp" onSubmit="return checkBulk()">
<table width="96%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr align="center" class="titlebg">
    <td width="35">ѡ��</td>
    <td>���±���</td>
    <td>���</td>
    <td>������</td>
    <td>����ʱ��</td>
    <td>����</td>
  </tr> 
<%  SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  

    NewsList list = new NewsList();
    List nList = null;
    if(keyWord!=null && (!keyWord.equals(""))){
    	if(searchPart.equals("teacher"))
    		nList = list.getListByTea(curPage,keyWord);
        if(searchPart.equals("content"))
            nList = list.getListByCon(curPage,keyWord);
        if(searchPart.equals("title"))
            nList = list.getListByTit(curPage,keyWord);    	
    }
    else{
        if(goClass==null || goClass.equals("")){
        	nList = list.getList(curPage);
        }
    	else
        	nList = list.getNeededList(curPage,goClass);
           
    }    
        
    if (nList.isEmpty())
       out.println("<div align=center><strong>����Ŀ��û�м�¼<strong></div>");
    else{   
    Iterator it = nList.iterator();
    while (it.hasNext()) {
       news = (News)it.next();
 %>
  <tr bgcolor="#FFFFFF" class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
    <td width="35" align="center"><input name="ele" type="checkbox" id="del" value="<%=news.getId()%>"></td>
    <td><a href="ShowArticle.jsp?id=<%=news.getId()%>" target="_blank"><%=news.getTitle()%></a></td>
    <td align="center"><a href="admin/news/NewsList.jsp?goClass=<%=news.getSmallclassid()%>"><%=news.getSmallclass() %></a></td>
    <td align="center"><a href="admin/news/NewsList.jsp?searchPart=teacher&keyWord=<%=news.getTeacher()%>"><%=news.getTeacher() %></a></td>
    <td align="center"><%=dateFormatStart.format(news.getPubtime()) %></td>
    <td align="center"><a href="admin/news/NewsEdit.jsp?newsid=<%=news.getId()%>">�༭</a>&nbsp;&nbsp;<a href="servlet/DeleteNews?id=<%=news.getId() %>"onclick="{if(confirm('ȷ��ɾ����')){return true;}return false;}">ɾ��</a></td>
  </tr>
  <%}
   %>
   </table>
   <table width="96%"  border="0" cellspacing="0" cellpadding="6" align="center">
   <tr>
     <td><input name="checkAll" type="checkbox" id="checkAll" onPropertyChange="selAll()">
         ѡ�б�ҳ��������&nbsp;&nbsp;
        <input type="submit" name="delAll" value="ɾ��ѡ�е�����" class="button" onClick="{if(confirm('ȷ��ɾ��ѡ�е�������')){return true;}return false;}">
     </td>
    </tr>
    </table>
 </form>
 
 
 <form name="pageForm" action="admin/news/NewsList.jsp" method="post">   
    <table align="center" width="96%">
       <tr><td align="center"><% 
   if(curPage==1){out.print("��ҳ ��һҳ");}
   else{%>
   <a href="javascript:gotoPage(1)">��ҳ</a>
   <a href="javascript:gotoPage(<%=curPage-1 %>)">��һҳ</a>
   <%} 
   if (curPage==list.getMaxPage()){out.print("��һҳ βҳ");}
   else{%>
   <a href="javascript:gotoPage(<%=curPage+1 %>)">��һҳ</a>
   <a href="javascript:gotoPage(<%=list.getMaxPage() %>)">βҳ</a>
   <%} %>
   ת����<select name="curPage" onchange="Jumping()">
   <% for(int i=1; i<=list.getMaxPage(); i++){
          if(i==curPage){%>
              <option selected value=<%=i %>><%=i %></option>
          <%}
          else {%> <option value=<%=i %>><%=i %></option>
          <%}
   }
   %>
   </select>ҳ
   <div align="right">����<%=list.getRowsNum() %>����¼ <font color="blue"><%=list.getRowsPerPage() %></font>����¼/ҳ ��<font color="red"><%=curPage %></font>ҳ ��<%=list.getMaxPage() %>ҳ&nbsp;&nbsp;</div>
   <%if (goClass!=null){%><input type="hidden" name="goClass" value="<%=goClass%>"><%} %>
   <%if (searchPart!=null){ %><input type="hidden" name="searchPart" value="<%=searchPart%>"><%} %>
   <%if (keyWord!=null){ %><input type="hidden" name="keyWord" value="<%=keyWord%>"><%} %>
</td></tr>
    </table>
  </form>
  <%} %>
  </body>
</html>
