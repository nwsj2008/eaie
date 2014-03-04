package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class foot_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=GBK");
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\" />\r\n");
      out.write("   <title>foot.jsp</title>\r\n");
      out.write("  \r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".foot {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tline-height: 150%;\r\n");
      out.write("\tcolor: #4b7f9d;\r\n");
      out.write("}\r\n");
      out.write(".bottomline {\r\n");
      out.write("\tborder-left-style: none;\r\n");
      out.write("\tborder-bottom-width: 1px;\r\n");
      out.write("\tborder-bottom-style: solid;\r\n");
      out.write("\tborder-bottom-color: #00151E;\r\n");
      out.write("\tborder-top-width: 1px;\r\n");
      out.write("\tborder-top-style: solid;\r\n");
      out.write("\tborder-top-color: #00151E;\r\n");
      out.write("\tborder-right-style: none;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>\r\n");
      out.write("<table width=\"778\" border=\"0\" align=\"center\"  cellpadding=\"0\" cellspacing=\"0\" valign=top>\r\n");
      out.write("<tr valign=top>\t\r\n");
      out.write("     <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("\t\t<td width=\"500\" background=\"images/bottom.gif\" valign=top>\r\n");
      out.write("\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"195\" >\r\n");
      out.write("\t\t\t    <tr valign=top><td colspan=5><img src=\"images/foot-left.jpg\"></td></tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100%\" class=\"text\" style=\"color:#4C5B63\" align=\"center\" valign=\"middle\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"40%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\">\r\n");
      out.write("         \t\t\t\t\t\t <br><tr >\r\n");
      out.write("           \t\t\t\t\t\t <td align=\"center\" class=\"menu1\"><a href=\"ContactUs.jsp\" class=\"footmenu\">联系我们</a></td>\r\n");
      out.write("            \t\t\t\t\t\t<td align=\"center\" class=\"menu1\"><a href=\"message/ErrReport.jsp\" class=\"footmenu\">意见反馈</a></td>\r\n");
      out.write("           \t\t\t\t\t\t <td align=\"center\" class=\"menu1\"><a href=\"admin/login.jsp\" target=\"_blank\" class=\"footmenu\">登录管理</a></td>\r\n");
      out.write("         \t\t\t\t\t\t </tr>\r\n");
      out.write("      \t\t\t\t    </table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("       \r\n");
      out.write("        <td width=\"778\" valign=\"top\">\r\n");
      out.write("\t\t<table width=\"778\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("\r\n");
      out.write("           <tr height=25><td valign=\"middle\" style=\"color:#4b7f9d \" align=center> \r\n");
      out.write("            版权所有：北京交通大学电子信息工程学院&nbsp;&nbsp;&nbsp;&nbsp; \r\n");
      out.write("            地址：北京市海淀区上园村3号，北京交通大学九号教学楼&nbsp;&nbsp; \r\n");
      out.write("            邮编：100044&nbsp;&nbsp; \r\n");
      out.write("          </td></tr>\r\n");
      out.write("          </table>\r\n");
      out.write("        </td>\r\n");
      out.write("        \r\n");
      out.write("</tr>\t\r\n");
      out.write("</table>\r\n");
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
