<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<script language="javascript">
    function JumpHead()
    {
      var url = "NewsList.jsp?curPage=1&goClass="+document.formQuery.goClass.value;
      window.location=url;
    }
    function selCheck()
    {
        if(!isNull("keyWord","��������"))
            return false;
        if(!isTooLong("keyWord",100,"��������"))
            return false;
        return true;
    }	
</script>

  <form name="formQuery" method="post" action="admin/news/NewsList.jsp" onSubmit="return selCheck()">
  <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" align="center" cellpadding="4" cellspacing="0">
        <tr>
          <td>&nbsp;<strong>��������</strong>��
            <select name="searchPart" id="searchPart">
              <option value="title" selected>���±���</option>
              <option value="content" <%if(searchPart!=null&&searchPart.equals("content")){out.print("selected");}else{out.print("");} %>>��������</option>
              <option value="teacher"<%if(searchPart!=null&&searchPart.equals("teacher")){out.print("selected");}else{out.print("");} %>>������Ա</option>
            </select>
            <input name="keyWord" type="text" id="keyWord" size="40" value="<%=(keyWord==null?"":keyWord) %>">
            <input name="submit" type="submit" value="��  ��" class="button"></td>
          <td><select name="goClass" onchange="JumpHead()">
            <option value="" selected>��ת��Ŀ��...</option>
            <%          
            out.println(BufferString.getNewsList(request.getParameter("goClass"),keyWord));
            %>
          </select></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
