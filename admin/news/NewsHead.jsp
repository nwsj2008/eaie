<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<script language="javascript">
    function JumpHead()
    {
      var url = "NewsList.jsp?curPage=1&goClass="+document.formQuery.goClass.value;
      window.location=url;
    }
    function selCheck()
    {
        if(!isNull("keyWord","搜索内容"))
            return false;
        if(!isTooLong("keyWord",100,"搜索内容"))
            return false;
        return true;
    }	
</script>

  <form name="formQuery" method="post" action="admin/news/NewsList.jsp" onSubmit="return selCheck()">
  <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" align="center" cellpadding="4" cellspacing="0">
        <tr>
          <td>&nbsp;<strong>文章搜索</strong>：
            <select name="searchPart" id="searchPart">
              <option value="title" selected>文章标题</option>
              <option value="content" <%if(searchPart!=null&&searchPart.equals("content")){out.print("selected");}else{out.print("");} %>>文章内容</option>
              <option value="teacher"<%if(searchPart!=null&&searchPart.equals("teacher")){out.print("selected");}else{out.print("");} %>>发布人员</option>
            </select>
            <input name="keyWord" type="text" id="keyWord" size="40" value="<%=(keyWord==null?"":keyWord) %>">
            <input name="submit" type="submit" value="搜  索" class="button"></td>
          <td><select name="goClass" onchange="JumpHead()">
            <option value="" selected>跳转栏目至...</option>
            <%          
            out.println(BufferString.getNewsList(request.getParameter("goClass"),keyWord));
            %>
          </select></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
