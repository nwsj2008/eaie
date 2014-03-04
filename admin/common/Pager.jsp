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
<center>
<% 
   if(curPage==1){out.print("首页 上一页");}
   else{%>
   <a class=news href="javascript:gotoPage(1)">首页</a>
   <a class=news href="javascript:gotoPage(<%=curPage-1 %>)">上一页</a>
   <%} 
   if (curPage==pager.getMaxPage()){out.print("下一页 尾页");}
   else{%>
   <a class=news href="javascript:gotoPage(<%=curPage+1 %>)">下一页</a>
   <a class=news href="javascript:gotoPage(<%=pager.getMaxPage() %>)">尾页</a>
   <%} %>
   转到第<select name="curPage" onchange="Jumping()">
   <% for(int i=1; i<=pager.getMaxPage(); i++){
          if(i==curPage){%>
              <option selected value=<%=i %>><%=i %></option>
          <%}
          else {%> <option value=<%=i %>><%=i %></option>
          <%}
   }
   %>
   </select>页
   共有<%=pager.getRowsNum() %>条记录 第<font color="red"><%=curPage %></font>页 共<%=pager.getMaxPage() %>页
 </center>
   
