package org.apache.jsp.Ec;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class teacher_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

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

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>教师信息</title>\r\n");
      out.write("\t\t\r\n");
      out.write("<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<LINK REL=StyleSheet HREF=\"jp.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t\t<h1 align=\"center\">电子信息工程学院博士研究生招生系统</h1>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t<div id=\"mainarea\">\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t<a href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"newslist.jsp\">查看招生通知</a>\r\n");
      out.write("\t\t<a href=\"cscj.jsp\">查看初试成绩</a>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t<br><br><br><br><br>\r\n");
      out.write("\t<font size=3 face=\"黑体\">\r\n");
      out.write("\t<center>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<table width=\"90%\"  border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"content\"  bgcolor=\"#CCCCCC\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>\r\n");
      out.write("         <table width=\"100%\"  border=\"0\" cellpadding=\"1\" cellspacing=\"1\" class=\"content\">\r\n");
      out.write("            <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("              <td>姓&nbsp;&nbsp;&nbsp;&nbsp;名：</td>\r\n");
      out.write("              <td>性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>\r\n");
      out.write("              <td rowspan=\"5\" align=\"center\" colspan=3>\r\n");
      out.write("              \t</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("              <td>出生年月: </td>\r\n");
      out.write("              <td>职&nbsp;&nbsp;&nbsp;&nbsp;称：</td>\r\n");
      out.write("              </tr>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("          </table>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("     <tr>\r\n");
      out.write("      <td>\r\n");
      out.write("       <table width=\"100%\"  border=\"0\" cellpadding=\"1\" cellspacing=\"1\" class=\"content\">\r\n");
      out.write("      <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("        <td><strong>个人简介：</strong><BR>\r\n");
      out.write("          </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("        <td><strong>研究方向：</strong><BR>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("        <td><strong>科研项目：</strong><BR>\r\n");
      out.write("          </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("        <td><strong>学术著作：</strong><BR>\r\n");
      out.write("       </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr bgcolor=\"#FFFFFF\">\r\n");
      out.write("        <td ><strong>获奖荣誉：</strong><BR>\r\n");
      out.write("    </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</center>\r\n");
      out.write("\t</font>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
