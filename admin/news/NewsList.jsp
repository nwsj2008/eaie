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
    
    <title>所有新闻</title>
    
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
    <td width="35">选中</td>
    <td>文章标题</td>
    <td>类别</td>
    <td>发布人</td>
    <td>发布时间</td>
    <td>操作</td>
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
       out.println("<div align=center><strong>此栏目下没有记录<strong></div>");
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
    <td align="center"><a href="admin/news/NewsEdit.jsp?newsid=<%=news.getId()%>">编辑</a>&nbsp;&nbsp;<a href="servlet/DeleteNews?id=<%=news.getId() %>"onclick="{if(confirm('确定删除吗？')){return true;}return false;}">删除</a></td>
  </tr>
  <%}
   %>
   </table>
   <table width="96%"  border="0" cellspacing="0" cellpadding="6" align="center">
   <tr>
     <td><input name="checkAll" type="checkbox" id="checkAll" onPropertyChange="selAll()">
         选中本页所有文章&nbsp;&nbsp;
        <input type="submit" name="delAll" value="删除选中的文章" class="button" onClick="{if(confirm('确定删除选中的文章吗？')){return true;}return false;}">
     </td>
    </tr>
    </table>
 </form>
 
 
 <form name="pageForm" action="admin/news/NewsList.jsp" method="post">   
    <table align="center" width="96%">
       <tr><td align="center"><% 
   if(curPage==1){out.print("首页 上一页");}
   else{%>
   <a href="javascript:gotoPage(1)">首页</a>
   <a href="javascript:gotoPage(<%=curPage-1 %>)">上一页</a>
   <%} 
   if (curPage==list.getMaxPage()){out.print("下一页 尾页");}
   else{%>
   <a href="javascript:gotoPage(<%=curPage+1 %>)">下一页</a>
   <a href="javascript:gotoPage(<%=list.getMaxPage() %>)">尾页</a>
   <%} %>
   转到第<select name="curPage" onchange="Jumping()">
   <% for(int i=1; i<=list.getMaxPage(); i++){
          if(i==curPage){%>
              <option selected value=<%=i %>><%=i %></option>
          <%}
          else {%> <option value=<%=i %>><%=i %></option>
          <%}
   }
   %>
   </select>页
   <div align="right">共有<%=list.getRowsNum() %>条记录 <font color="blue"><%=list.getRowsPerPage() %></font>条记录/页 第<font color="red"><%=curPage %></font>页 共<%=list.getMaxPage() %>页&nbsp;&nbsp;</div>
   <%if (goClass!=null){%><input type="hidden" name="goClass" value="<%=goClass%>"><%} %>
   <%if (searchPart!=null){ %><input type="hidden" name="searchPart" value="<%=searchPart%>"><%} %>
   <%if (keyWord!=null){ %><input type="hidden" name="keyWord" value="<%=keyWord%>"><%} %>
</td></tr>
    </table>
  </form>
  <%} %>
  </body>
</html>
