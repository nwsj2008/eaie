package org.apache.jsp.gcteacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.gcteacher.*;
import com.eaie.tools.*;
import com.eaie.admin.gcteacher.UserManage;

public final class lianxi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>电子信息工程学院工程硕士选课教师登陆系统</title>\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"gctchstyle.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t\t<h1 align=\"center\">电子信息工程学院工程硕士选课教师登陆系统</h1>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t<div id=\"mainarea\">\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t<a href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"ModifyPwd.jsp\">修改登陆密码</a>\r\n");
      out.write("\t\t<a href=\"kcxx.jsp\">查看课程信息</a>\r\n");
      out.write("\t\t<a href=\"score.jsp\">编辑学生成绩</a>\r\n");
      out.write("\t\t<a href=\"lianxi.jsp\">联系我们</a>\r\n");
      out.write("\t\t<a href=\"logout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t 研究生招生咨询电话：51683615\r\n");
      out.write("\t\t <br>\r\n");
      out.write("\t\t 邮箱：dzxyyjs@center.njtu.edu.cn\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t张燕宁\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t室主任 负责科研工作\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t电话：51687339\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t高万英\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t负责研究生培养及学位\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t电话：51683615\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t申振明\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t\t负责研究生招生，专业学位研究生管理\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t电话：51683615\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t熊慧丽\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t负责研究生管理\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t电话：51683615\r\n");
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
