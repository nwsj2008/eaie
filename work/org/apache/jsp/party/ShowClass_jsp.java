package org.apache.jsp.party;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.admin.column.ClassImp;
import com.eaie.party.ClassList;
import com.eaie.tools.DateTimeFormat;
import java.util.*;
import java.util.*;

public final class ShowClass_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(3);
    _jspx_dependants.add("/party/Header.jsp");
    _jspx_dependants.add("/party/PageMan.jsp");
    _jspx_dependants.add("/party/Footer.jsp");
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

request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int id = Integer.parseInt(request.getParameter("smallclassid"));
String className = null;
try{
	className = ClassImp.getSmallClassName(id);
}catch(Exception e)
{e.printStackTrace();}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>");
      out.print(className);
      out.write("</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"party/css/css.css\">\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body background=\"party/images/bg2.jpg\">\r\n");
      out.write("  ");
 int curPage = request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage"));
     ClassList list = new ClassList();
     try{
     List classList = list.getList(id,curPage);
   
      out.write("\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("<table width=\"762\" height=\"110\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#990000\"><img src=\"party/images/party_01.gif\" width=\"762\" height=\"110\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("  <table width=\"762\" height=\"25\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" background=\"party/images/party_02.gif\">\r\n");
      out.write("  <tr align=\"center\">\r\n");
      out.write("    <td height=\"25\"><a href=\"party/index.jsp\" class=\"topmenu\">党建首页</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=71\" class=\"topmenu\">党建新闻</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/Branch.jsp\" class=\"topmenu\">机构设置</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=73\" class=\"topmenu\">支部风采</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=74\" class=\"topmenu\">理论知识</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=75\" class=\"topmenu\">党课学习</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=76\" class=\"topmenu\">入党导航</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <table width=\"762\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>\r\n");
      out.write("\t<table width=\"90%\"  border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"0\">\r\n");
      out.write(" \t\t<tr>\r\n");
      out.write("    \t\t<td height=\"40\" class=\"topic\">您的位置：<a href=\"party/index.jsp\">首页</a> &gt;&gt;&nbsp;");
      out.print(className);
      out.write("</td>\r\n");
      out.write("  \t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<table width=\"600\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\" style=\"margin-top:20\">\r\n");
      out.write(" \t\t<tr class=\"topic\">\r\n");
      out.write("    \t\t<td width=\"30\" height=\"30\" align=\"center\" class=\"td1\"><strong>NO.</strong></td>\r\n");
      out.write("    \t\t<td height=\"30\" align=\"center\" class=\"td1\"><strong>标题</strong></td>\r\n");
      out.write("    \t\t<td width=\"80\" height=\"30\" class=\"td1\"><strong>添加时间</strong></td>\r\n");
      out.write("    \t\t<td width=\"50\" height=\"30\" align=\"center\" class=\"td1\"><strong>点击量</strong></td>\r\n");
      out.write(" \t\t</tr>\r\n");
      out.write("        ");
 for (int i=0; i<classList.size(); i++) {
           Object[] obj = (Object[])classList.get(i); 
      out.write("\r\n");
      out.write(" \t\t<tr class=\"topic\">\r\n");
      out.write("   \t\t\t<td height=\"30\" align=\"center\" class=\"line\">");
      out.print(i+1);
      out.write("</td>\r\n");
      out.write("\t\t\t<td height=\"30\" class=\"line\"><a href=\"party/ShowArticle.jsp?id=");
      out.print(obj[0]);
      out.write("\" target=\"_blank\">");
      out.print(obj[1]);
      out.write("</a>\r\n");
      out.write("\t\t\t ");
if (String.valueOf(obj[4]).equals("1")) {out.print("&nbsp;[图]");}
      out.write("</td>\r\n");
      out.write("\t        <td height=\"30\" class=\"line\">");
      out.print(DateTimeFormat.getDateString((Date)obj[2]));
      out.write("</td>\r\n");
      out.write("\t\t\t<td height=\"30\" align=\"center\" class=\"line\">");
      out.print(obj[3]);
      out.write("</td>\r\n");
      out.write(" \t\t</tr>\r\n");
      out.write("        ");
 } 
      out.write("\r\n");
      out.write("        <tr><td>&nbsp;</td></tr>\r\n");
      out.write("    </table>\r\n");
      out.write("    <form name=\"pageForm\" method=\"post\" action=\"party/ShowClass.jsp\">\r\n");
      out.write("    <table width=\"700\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("    \t<tr>\r\n");
      out.write("      \t\t<td align=\"center\" class=\"topic\">");
      out.write('\r');
      out.write('\n');
request.setCharacterEncoding("GBK"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("  function Jumping(){\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  function gotoPage(curPage){\r\n");
      out.write("      document.pageForm.curPage.value=curPage;\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
 
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
      out.write("   </select>页<br><br>\r\n");
      out.write("   <div align=\"right\">共有");
      out.print(list.getRowsNum() );
      out.write("条记录 <font color=\"blue\">");
      out.print(list.getRowsPerPage() );
      out.write("</font>条记录/页 第<font color=\"red\">");
      out.print(curPage );
      out.write("</font>页 共");
      out.print(list.getMaxPage() );
      out.write("页&nbsp;&nbsp;</div>\r\n");
      out.write("   \r\n");
      out.write("</td>\r\n");
      out.write("    \t</tr>\r\n");
      out.write("    \t<input type=\"hidden\" name=\"smallclassid\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("  \t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("    <br>\r\n");
      out.write("  </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write(" <table width=\"762\" height=\"70\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" bgcolor=\"#B10000\">\r\n");
      out.write("  \t<tr>\r\n");
      out.write("    \t<td height=\"10\" align=\"center\" class=\"foot\"></td>\r\n");
      out.write("  \t</tr>\r\n");
      out.write("  \t<tr>\r\n");
      out.write("   \t \t<td height=\"25\" align=\"center\" class=\"foot\">版权所有：北京交通大学电子信息工程学院&nbsp;&nbsp;&nbsp;网页制作：电子信息工程学院 </td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t    <td height=\"25\" align=\"center\" class=\"foot\">地址：北京市海淀区上园村3号，北京交通大学九号教学楼&nbsp;&nbsp;邮编：100044&nbsp;&nbsp;电话：010-51683484</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t    <td height=\"10\" align=\"center\" class=\"foot\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write(" </table>");
      out.write("\r\n");
      out.write("  ");
 }catch(Exception exc){exc.printStackTrace();} 
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
