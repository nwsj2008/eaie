package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class MyJsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=ISO-8859-1");
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
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <head>\r\n");
      out.write("<title>Flower</title>\r\n");
      out.write("<meta http-equiv=\"Content-Language\" content=\"English\" />\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style1.css\" media=\"screen\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("<h1><a href=\"#\">Website Title</a></h1>\r\n");
      out.write("<h2>Subheader, website description H2</h2>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"right\">\r\n");
      out.write("\r\n");
      out.write("<h2><a href=\"#\">License and terms of use</a></h2>\r\n");
      out.write("<div class=\"articles\">\r\n");
      out.write("Flower is a CSS template that is free and fully standards compliant. <a href=\"http://www.free-css-templates.com/\">Free CSS templates</a> designed this template.\r\n");
      out.write("This template is allowed for all uses, including commercial use, as it is released under the <strong>Creative Commons Attributions 2.5</strong> license. The only stipulation to the use of this free template is that the links appearing in the footer remain intact. Beyond that, simply enjoy and have fun with it!\t \r\n");
      out.write("<br /><br />\r\n");
      out.write("<img src=\"images/pic.jpg\" alt=\"Example pic\" style=\"border: 3px solid #ccc;\" />\r\n");
      out.write("<br /><br />\r\n");
      out.write("Donec nulla. Aenean eu augue ac nisl tincidunt rutrum. Proin erat justo, pharetra eget, posuere at, malesuada \r\n");
      out.write("et, nulla. Donec pretium nibh sed est faucibus suscipit. Nunc nisi. Nullam vehicula. In ipsum lorem, bibendum sed, \r\n");
      out.write("consectetuer et, gravida id, erat. Ut imperdiet, leo vel condimentum faucibus, risus justo feugiat purus, vitae \r\n");
      out.write("congue nulla diam non urna.\r\n");
      out.write("</div>\r\n");
      out.write("<h2><a href=\"#\">Title with a link - Example of heading 2</a></h2>\r\n");
      out.write("<div class=\"articles\">\r\n");
      out.write("Donec nulla. Aenean eu augue ac nisl tincidunt rutrum. Proin erat justo, pharetra eget, posuere at, malesuada \r\n");
      out.write("et, nulla. Donec pretium nibh sed est faucibus suscipit. Nunc nisi. Nullam vehicula. In ipsum lorem, bibendum sed, \r\n");
      out.write("consectetuer et, gravida id, erat. Ut imperdiet, leo vel condimentum faucibus, risus justo feugiat purus, vitae \r\n");
      out.write("congue nulla diam non urna.\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"left\"> \r\n");
      out.write("\r\n");
      out.write("<h3>Categories :</h3>\r\n");
      out.write("<ul>\r\n");
      out.write("<li><a href=\"#\">World Politics</a></li> \r\n");
      out.write("<li><a href=\"#\">Europe Sport</a></li> \r\n");
      out.write("<li><a href=\"#\">Networking</a></li> \r\n");
      out.write("<li><a href=\"#\">Nature - Africa</a></li>\r\n");
      out.write("<li><a href=\"#\">SuperCool</a></li> \r\n");
      out.write("<li><a href=\"#\">Last Category</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("<h3>Archives</h3>\r\n");
      out.write("<ul>\r\n");
      out.write("<li><a href=\"#\">January 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">February 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">March 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">April 2007</a></li>\r\n");
      out.write("<li><a href=\"#\">May 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">June 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">July 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">August 2007</a></li> \r\n");
      out.write("<li><a href=\"#\">September 2007</a></li>\r\n");
      out.write("<li><a href=\"#\">October 2007</a></li>\r\n");
      out.write("<li><a href=\"#\">November 2007</a></li>\r\n");
      out.write("<li><a href=\"#\">December 2007</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div style=\"clear: both;\"> </div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("Designed by <a href=\"http://www.free-css-templates.com/\">Free CSS Templates</a>, Thanks to <a href=\"http://www.injuryexperts.com/\">Personal Injury Attorney</a>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
