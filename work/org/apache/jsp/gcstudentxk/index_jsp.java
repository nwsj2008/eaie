package org.apache.jsp.gcstudentxk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.xk.*;
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
      out.write("<title>电子信息工程学院工程硕士选课系统</title>\r\n");
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
      out.write("\t\t<a href=\"xk.jsp?id=");
      out.print(gc.getId());
      out.write("\">选定本学期课程</a>\t\r\n");
      out.write("\t\t<a href=\"showCourse.jsp?id=");
      out.print(gc.getId());
      out.write("\">显示本学期课程</a>\t\r\n");
      out.write("\t    <a href=\"showScore.jsp?id=");
      out.print(gc.getId());
      out.write("\">查看分数</a>\r\n");
      out.write("\t    <a href=\"help.jsp\">选课帮助</a>\r\n");
      out.write("\t\t<a href=\"logout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<h2>");
      out.print((gc.getName()==null?"同学":gc.getName() ));
      out.write(",你好：</h2>\r\n");
      out.write("\t\t<h2>欢迎登录电子信息工程学院工程硕士选课系统！</h2>\r\n");
      out.write("\t\t 1.为使页面正常显示，推荐您使用1024x768或者更高的屏幕分辨率。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t2.每次登录时间限为30分钟,请节约时间。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t3.请您保护好自己的登录密码，离开时记得退出系统。\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t4.如果选课，请查看通知并下载课表。\r\n");
      out.write("\t\t<br><br>\r\n");
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
