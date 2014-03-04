package org.apache.jsp.gcstudentxk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.xk.*;
import com.eaie.tools.*;

public final class help_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");

Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>选课帮助</title>\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"style.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t\t<h1 align=\"center\">电子信息工程学院工程硕士选课系统</h1>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t<div id=\"mainarea\">\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t<a class=\"active\" href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"NewsList.jsp\">查看通知</a>\r\n");
      out.write("\t\t<a href=\"xk.jsp\">选定本学期课程</a>\t\r\n");
      out.write("\t\t<a href=\"showCourse.jsp\">显示本学期课程</a>\t\r\n");
      out.write("\t    <a href=\"showScore.jsp\">查看分数</a>\r\n");
      out.write("\t    <a href=\"help.jsp\">选课帮助</a>\r\n");
      out.write("\t\t<a href=\"logout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<h2>同学,你好：</h2>\r\n");
      out.write("\t\t<h2>欢迎使用院工程硕士选课系统！</h2>\r\n");
      out.write("\t\t使用流程:\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t1.登陆选课系统\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t2.在查看通知中可以下载本学期的课程安排。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t3.点击选定本学期课程，页面会显示出本学期的所有的课程，点击课程名称可以查看该课程的详细信息，点击选上该课程按钮即可选课成功\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t4.点击显示本学期课程，该页面显示你已经选上的课程。若想要删除课程，点击操作中的删除按钮即可。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t5.点击查看分数，该页面显示你已选课程的分数。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t6.点击选课帮助，查看选课流程。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t7.点击退出系统，即可退出系统。\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
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
