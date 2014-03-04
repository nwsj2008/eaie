package org.apache.jsp.admin.kxfzg;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.*;
import com.eaie.common.BasicDAO;
import com.eaie.tools.BufferString;
import com.eaie.dbmanage.*;

public final class NewsSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      com.eaie.dbmanage.KxfzgNews n = null;
      synchronized (_jspx_page_context) {
        n = (com.eaie.dbmanage.KxfzgNews) _jspx_page_context.getAttribute("n", PageContext.PAGE_SCOPE);
        if (n == null){
          n = new com.eaie.dbmanage.KxfzgNews();
          _jspx_page_context.setAttribute("n", n, PageContext.PAGE_SCOPE);
          out.write('\r');
          out.write('\n');
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("n"), request);
          out.write('\r');
          out.write('\n');
        }
      }
      out.write('\r');
      out.write('\n');

request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>   \r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">     \r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    <title>添加新闻</title>   \r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  ");
 
         if(request.getParameter("istop")==null)
             n.setIstop(0);
         else n.setIstop(Integer.parseInt(request.getParameter("istop")));
         if(request.getParameter("ispicnews")==null)
             n.setIspicnews(0);
         else n.setIspicnews(Integer.parseInt(request.getParameter("ispicnews")));   
         n.setTitle(request.getParameter("title"));
         n.setContent(request.getParameter("content"));
         n.setFilename(request.getParameter("filename"));
         n.setPubtime(new java.util.Date());
         n.setFileurl(request.getParameter("fileurl"));
         n.setImageurl(request.getParameter("imageurl"));
         n.setPart("团委");
         n.setHit(0);
         BasicDAO.save(n);    
         out.println(BufferString.getDoneMessage("NewsList.jsp"));
   
         
   
      out.write("\r\n");
      out.write("  \t\r\n");
      out.write("\t\r\n");
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
