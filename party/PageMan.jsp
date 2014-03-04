<%@ page language="java"  pageEncoding="GBK"%>
<%request.setCharacterEncoding("GBK"); %>

<script language="javascript">
  function Jumping(){
      document.pageForm.submit();
  }
  
  function gotoPage(curPage){
      document.pageForm.curPage.value=curPage;
      document.pageForm.submit();
  }
</script>

<% 
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
   </select>页<br><br>
   <div align="right">共有<%=list.getRowsNum() %>条记录 <font color="blue"><%=list.getRowsPerPage() %></font>条记录/页 第<font color="red"><%=curPage %></font>页 共<%=list.getMaxPage() %>页&nbsp;&nbsp;</div>
   
