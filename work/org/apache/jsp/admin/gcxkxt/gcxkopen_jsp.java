package org.apache.jsp.admin.gcxkxt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.dbmanage.*;

public final class gcxkopen_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=gbk");
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("  \r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<title>开启工程硕士招生系统</title>\r\n");
      out.write("\t\t<link href=\"tmszsxtstudent/tm_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("   <div align=\"left\"><br> \r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"admin/gcxkxt/gcxkopensave.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t开启工程硕士招生系统\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<BR>\r\n");
      out.write("\t\t\t<center> \r\n");
      out.write("\t\t\t\t开启 &nbsp;&nbsp;<select name=\"term\" >\r\n");
      out.write("\t\t\t\t<option value=\"1\" selected>2009上</option>\r\n");
      out.write("\t\t\t\t<option value=\"2\">2009下</option>\r\n");
      out.write("\t\t\t\t<option value=\"3\">2010上</option>\r\n");
      out.write("\t\t\t\t<option value=\"4\">2010下</option>\r\n");
      out.write("\t\t\t\t<option value=\"5\">2011上</option>\r\n");
      out.write("\t\t\t\t<option value=\"6\">2011下</option>\r\n");
      out.write("\t\t\t\t<option value=\"7\">2012上</option>\r\n");
      out.write("\t\t\t\t<option value=\"8\">2012下</option>\r\n");
      out.write("\t\t\t\t<option value=\"9\">2013上</option>\r\n");
      out.write("\t\t\t\t<option value=\"10\">2013下</option>\r\n");
      out.write("\t\t\t\t</select> \r\n");
      out.write("\t\t\t\t学期选课系统 &nbsp; &nbsp; \r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确定\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t</center>\r\n");
      out.write("\t\t</form>\r\n");
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
