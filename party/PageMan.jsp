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
   </select>ҳ<br><br>
   <div align="right">����<%=list.getRowsNum() %>����¼ <font color="blue"><%=list.getRowsPerPage() %></font>����¼/ҳ ��<font color="red"><%=curPage %></font>ҳ ��<%=list.getMaxPage() %>ҳ&nbsp;&nbsp;</div>
   
