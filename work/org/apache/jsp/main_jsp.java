package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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


      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\" />\r\n");
      out.write("<title>main</title>\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body topmargin=\"0\" rightmargin=\"0\" leftmargin=\"0\">\r\n");
      out.write("<table width=542 valign=top>\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
      out.write("<td width=542>\r\n");
      out.write("\t\t\t<table width=\"542\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t    <td width=25 bgcolor=\"#ffffff\"></td>\r\n");
      out.write("\t\t\t\t\t<td width=\"542\" background=\"images/swf-backpic.jpg\" align=\"right\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "picnews.jsp", out, false);
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t    <td width=25 bgcolor=\"#ffffff\"></td>\r\n");
      out.write("\t\t\t\t\t<td width=\"542\" height=37><img src=\"images/r8.jpg\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr valign=top  height=300>\r\n");
      out.write("\t\t\t\t\t<td  height=100% colspan=2>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"542\" height=300 valign=top border=\"0\" cellpadding=\"0\" cellspacing=\"0\" >\r\n");
      out.write("\t\t\t\t\t\t\t<tr  valign=top align=right>\r\n");
      out.write("\t\t\t\t\t\t\t  <td width=\"542\" background=\"images/index_3_18.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "indexnews.jsp", out, true);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  </td>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</td></tr></table>\r\n");
      out.write("\t\t\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
