package org.apache.jsp.gcteacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.gcteacher.*;
import com.eaie.tools.*;
import com.eaie.admin.gcteacher.UserManage;
import java.util.*;
import com.eaie.common.*;

public final class kcdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
		String courseId=request.getParameter("id");
		//查询课程信息	
		List lista = BasicDAO
				.queryByHql("From Gccourse gccourse where gccourse.id='"
						+ courseId + "'");
	
      out.write("\r\n");
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
      out.write("\t<br>\r\n");
      out.write("\t<h2>");
      out.print(gcteacher.getName() );
      out.write("老师,你好：</h2>\r\n");
      out.write("\t\t<table border=\"1\"  cellpadding=\"2\" cellspacing=\"1\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");
 if (lista.size() == 0) 
				{
				out.print("没有记录");
				} 
				else {	
					Gccourse gccourse = (Gccourse) lista.get(0);
			
      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\" height=\"25\">\r\n");
      out.write("\t\t\t\t<td width=\"100\"  align=\"center\">\r\n");
      out.write("\t\t\t\t课程名称\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td  width=\"200\">\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getTitle()==null?"":gccourse.getTitle() );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td  width=\"100\" align=\"center\">\r\n");
      out.write("\t\t\t\t学分\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"200\">\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getCredit()==null?"": gccourse.getCredit());
      out.write("\r\n");
      out.write("\t\t\t\t</td>\t\t\t\t\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr align=\"center\" height=\"25\">\r\n");
      out.write("\t\t\t\t<td width=\"100\" align=\"center\">\r\n");
      out.write("\t\t\t\t教师用书\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"200\">\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getBook()==null?"":gccourse.getBook() );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"100\" align=\"center\">\r\n");
      out.write("\t\t\t\t上课地点\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"200\">\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getPlace()==null?"":gccourse.getPlace() );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr align=\"center\" height=\"25\">\r\n");
      out.write("\t\t\t\t<td width=\"100\" align=\"center\">\r\n");
      out.write("\t\t\t\t上课时间\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"200\">\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getShijian()==null?"": gccourse.getShijian());
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t考试时间\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getTest()==null?"":gccourse.getTest() );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
} 
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t<br><br><center>\r\n");
      out.write("\t\t<input type=\"button\" name=\"back\" value=\"返&nbsp;回\"  onClick=\"window.location.href='kcxx.jsp'\">\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t</div>\r\n");
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
      out.write("   \r\n");
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
