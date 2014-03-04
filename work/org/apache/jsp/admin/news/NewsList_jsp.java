package org.apache.jsp.admin.news;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.tools.BufferString;
import com.eaie.dbmanage.News;
import com.eaie.admin.news.NewsList;
import java.text.SimpleDateFormat;
import java.util.*;

public final class NewsList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/news/NewsHead.jsp");
  }

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html;charset=GBK");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write('\r');
      out.write('\n');
      com.eaie.dbmanage.News news = null;
      synchronized (_jspx_page_context) {
        news = (com.eaie.dbmanage.News) _jspx_page_context.getAttribute("news", PageContext.PAGE_SCOPE);
        if (news == null){
          news = new com.eaie.dbmanage.News();
          _jspx_page_context.setAttribute("news", news, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>所有新闻</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\r\n");
      out.write("\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t<script language=\"javascript\">\r\n");
      out.write("  \tfunction Jumping(){\r\n");
      out.write("      \tdocument.pageForm.submit();\r\n");
      out.write("  \t}\r\n");
      out.write("  \r\n");
      out.write("  \tfunction gotoPage(curPage){\r\n");
      out.write("    \tdocument.pageForm.curPage.value=curPage;\r\n");
      out.write("      \tdocument.pageForm.submit();\r\n");
      out.write("  \t}\r\n");
      out.write("</script>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  ");
 String goClass = (request.getParameter("goClass")==null||request.getParameter("goClass").equals(""))?null:request.getParameter("goClass");
     String searchPart = (request.getParameter("searchPart")==null||request.getParameter("searchPart").equals(""))?null:request.getParameter("searchPart");
     String keyWord = ((request.getParameter("keyWord")==null||request.getParameter("keyWord").equals(""))?null:(request.getParameter("keyWord").trim()));
     int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
   
      out.write("\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("    function JumpHead()\r\n");
      out.write("    {\r\n");
      out.write("      var url = \"NewsList.jsp?curPage=1&goClass=\"+document.formQuery.goClass.value;\r\n");
      out.write("      window.location=url;\r\n");
      out.write("    }\r\n");
      out.write("    function selCheck()\r\n");
      out.write("    {\r\n");
      out.write("        if(!isNull(\"keyWord\",\"搜索内容\"))\r\n");
      out.write("            return false;\r\n");
      out.write("        if(!isTooLong(\"keyWord\",100,\"搜索内容\"))\r\n");
      out.write("            return false;\r\n");
      out.write("        return true;\r\n");
      out.write("    }\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("  <form name=\"formQuery\" method=\"post\" action=\"admin/news/NewsList.jsp\" onSubmit=\"return selCheck()\">\r\n");
      out.write("  <table width=\"96%\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin-top:20px\">\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td class=\"tdbg\"><table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>&nbsp;<strong>文章搜索</strong>：\r\n");
      out.write("            <select name=\"searchPart\" id=\"searchPart\">\r\n");
      out.write("              <option value=\"title\" selected>文章标题</option>\r\n");
      out.write("              <option value=\"content\" ");
if(searchPart!=null&&searchPart.equals("content")){out.print("selected");}else{out.print("");} 
      out.write(">文章内容</option>\r\n");
      out.write("              <option value=\"teacher\"");
if(searchPart!=null&&searchPart.equals("teacher")){out.print("selected");}else{out.print("");} 
      out.write(">发布人员</option>\r\n");
      out.write("            </select>\r\n");
      out.write("            <input name=\"keyWord\" type=\"text\" id=\"keyWord\" size=\"40\" value=\"");
      out.print((keyWord==null?"":keyWord) );
      out.write("\">\r\n");
      out.write("            <input name=\"submit\" type=\"submit\" value=\"搜  索\" class=\"button\"></td>\r\n");
      out.write("          <td><select name=\"goClass\" onchange=\"JumpHead()\">\r\n");
      out.write("            <option value=\"\" selected>跳转栏目至...</option>\r\n");
      out.write("            ");
          
            out.println(BufferString.getNewsList(request.getParameter("goClass"),keyWord));
            
      out.write("\r\n");
      out.write("          </select></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<form name=\"mainForm\" method=\"post\" action=\"admin/news/BulkDel.jsp\" onSubmit=\"return checkBulk()\">\r\n");
      out.write("<table width=\"96%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("  <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("    <td width=\"35\">选中</td>\r\n");
      out.write("    <td>文章标题</td>\r\n");
      out.write("    <td>类别</td>\r\n");
      out.write("    <td>发布人</td>\r\n");
      out.write("    <td>发布时间</td>\r\n");
      out.write("    <td>操作</td>\r\n");
      out.write("  </tr> \r\n");
  SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  

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
 
      out.write("\r\n");
      out.write("  <tr bgcolor=\"#FFFFFF\" class=\"tdbg\" onMouseOut=\"this.style.backgroundColor=''\" onMouseOver=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("    <td width=\"35\" align=\"center\"><input name=\"ele\" type=\"checkbox\" id=\"del\" value=\"");
      out.print(news.getId());
      out.write("\"></td>\r\n");
      out.write("    <td><a href=\"ShowArticle.jsp?id=");
      out.print(news.getId());
      out.write("\" target=\"_blank\">");
      out.print(news.getTitle());
      out.write("</a></td>\r\n");
      out.write("    <td align=\"center\"><a href=\"admin/news/NewsList.jsp?goClass=");
      out.print(news.getSmallclassid());
      out.write('"');
      out.write('>');
      out.print(news.getSmallclass() );
      out.write("</a></td>\r\n");
      out.write("    <td align=\"center\"><a href=\"admin/news/NewsList.jsp?searchPart=teacher&keyWord=");
      out.print(news.getTeacher());
      out.write('"');
      out.write('>');
      out.print(news.getTeacher() );
      out.write("</a></td>\r\n");
      out.write("    <td align=\"center\">");
      out.print(dateFormatStart.format(news.getPubtime()) );
      out.write("</td>\r\n");
      out.write("    <td align=\"center\"><a href=\"admin/news/NewsEdit.jsp?newsid=");
      out.print(news.getId());
      out.write("\">编辑</a>&nbsp;&nbsp;<a href=\"servlet/DeleteNews?id=");
      out.print(news.getId() );
      out.write("\"onclick=\"{if(confirm('确定删除吗？')){return true;}return false;}\">删除</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");
}
   
      out.write("\r\n");
      out.write("   </table>\r\n");
      out.write("   <table width=\"96%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"6\" align=\"center\">\r\n");
      out.write("   <tr>\r\n");
      out.write("     <td><input name=\"checkAll\" type=\"checkbox\" id=\"checkAll\" onPropertyChange=\"selAll()\">\r\n");
      out.write("         选中本页所有文章&nbsp;&nbsp;\r\n");
      out.write("        <input type=\"submit\" name=\"delAll\" value=\"删除选中的文章\" class=\"button\" onClick=\"{if(confirm('确定删除选中的文章吗？')){return true;}return false;}\">\r\n");
      out.write("     </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    </table>\r\n");
      out.write(" </form>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write(" <form name=\"pageForm\" action=\"admin/news/NewsList.jsp\" method=\"post\">   \r\n");
      out.write("    <table align=\"center\" width=\"96%\">\r\n");
      out.write("       <tr><td align=\"center\">");
 
   if(curPage==1){out.print("首页 上一页");}
   else{
      out.write("\r\n");
      out.write("   <a href=\"javascript:gotoPage(1)\">首页</a>\r\n");
      out.write("   <a href=\"javascript:gotoPage(");
      out.print(curPage-1 );
      out.write(")\">上一页</a>\r\n");
      out.write("   ");
} 
   if (curPage==list.getMaxPage()){out.print("下一页 尾页");}
   else{
      out.write("\r\n");
      out.write("   <a href=\"javascript:gotoPage(");
      out.print(curPage+1 );
      out.write(")\">下一页</a>\r\n");
      out.write("   <a href=\"javascript:gotoPage(");
      out.print(list.getMaxPage() );
      out.write(")\">尾页</a>\r\n");
      out.write("   ");
} 
      out.write("\r\n");
      out.write("   转到第<select name=\"curPage\" onchange=\"Jumping()\">\r\n");
      out.write("   ");
 for(int i=1; i<=list.getMaxPage(); i++){
          if(i==curPage){
      out.write("\r\n");
      out.write("              <option selected value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
          else {
      out.write(" <option value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
   }
   
      out.write("\r\n");
      out.write("   </select>页\r\n");
      out.write("   <div align=\"right\">共有");
      out.print(list.getRowsNum() );
      out.write("条记录 <font color=\"blue\">");
      out.print(list.getRowsPerPage() );
      out.write("</font>条记录/页 第<font color=\"red\">");
      out.print(curPage );
      out.write("</font>页 共");
      out.print(list.getMaxPage() );
      out.write("页&nbsp;&nbsp;</div>\r\n");
      out.write("   ");
if (goClass!=null){
      out.write("<input type=\"hidden\" name=\"goClass\" value=\"");
      out.print(goClass);
      out.write('"');
      out.write('>');
} 
      out.write("\r\n");
      out.write("   ");
if (searchPart!=null){ 
      out.write("<input type=\"hidden\" name=\"searchPart\" value=\"");
      out.print(searchPart);
      out.write('"');
      out.write('>');
} 
      out.write("\r\n");
      out.write("   ");
if (keyWord!=null){ 
      out.write("<input type=\"hidden\" name=\"keyWord\" value=\"");
      out.print(keyWord);
      out.write('"');
      out.write('>');
} 
      out.write("\r\n");
      out.write("</td></tr>\r\n");
      out.write("    </table>\r\n");
      out.write("  </form>\r\n");
      out.write("  ");
} 
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
