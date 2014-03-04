package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.tools.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=gb2312");
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
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";

      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>电子信息工程学院网站管理系统</title>\r\n");
      out.write("<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("</head>\r\n");

	if(session.getAttribute("USER")==null){
		
		out.println(JavaScript.alertandRedirect("您尚未登录，请先登录！","login.jsp"));
	}else{
 
      out.write("\r\n");
      out.write("<frameset cols=\"180,*\" framespacing=\"0\" frameborder=\"0\" border=\"false\" id=\"frame\">\r\n");
      out.write("  <frame src=\"admin/left.jsp\" name=\"left\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"auto\">\r\n");
      out.write("  <frame src=\"admin/main.jsp\" name=\"main\" scrolling=\"auto\">\r\n");
      out.write("</frameset>\r\n");
      out.write("<noframes>\r\n");
      out.write("<body leftmargin=\"2\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n");
      out.write("<p>你的浏览器版本过低！！！本系统要求IE5及以上版本才能使用本系统。</p>\r\n");

	}
 
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</noframes>\r\n");
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
