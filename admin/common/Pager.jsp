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
   if(curPage==1){out.print("��ҳ ��һҳ");}
   else{%>
   <a class=news href="javascript:gotoPage(1)">��ҳ</a>
   <a class=news href="javascript:gotoPage(<%=curPage-1 %>)">��һҳ</a>
   <%} 
   if (curPage==pager.getMaxPage()){out.print("��һҳ βҳ");}
   else{%>
   <a class=news href="javascript:gotoPage(<%=curPage+1 %>)">��һҳ</a>
   <a class=news href="javascript:gotoPage(<%=pager.getMaxPage() %>)">βҳ</a>
   <%} %>
   ת����<select name="curPage" onchange="Jumping()">
   <% for(int i=1; i<=pager.getMaxPage(); i++){
          if(i==curPage){%>
              <option selected value=<%=i %>><%=i %></option>
          <%}
          else {%> <option value=<%=i %>><%=i %></option>
          <%}
   }
   %>
   </select>ҳ
   ����<%=pager.getRowsNum() %>����¼ ��<font color="red"><%=curPage %></font>ҳ ��<%=pager.getMaxPage() %>ҳ
 </center>
   
