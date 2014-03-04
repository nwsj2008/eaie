package org.apache.jsp.sbldstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.bszsxt.bsnews.*;
import com.eaie.admin.news.*;
import java.text.SimpleDateFormat;

public final class news_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
Sbld sbldUser = (Sbld)session.getAttribute("SBLDUSER");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>电子信息工程学院硕博连读招生系统</title>\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"sbldstyle.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("\t\tfunction JumpMenu(targ,selObj,restore)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\teval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");\r\n");
      out.write("\t\t\tif (restore) selObj.selectedIndex=0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");

		SimpleDateFormat dateFormatStart = new SimpleDateFormat(
				"yyyy-MM-dd");
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Sbnews sbnews where sbnews.id='" + id
						+ "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Sbnews sbnews = (Sbnews) list.get(0);
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t\t<h1 align=\"center\">电子信息工程学院硕博招生系统</h1>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t<div id=\"mainarea\">\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t<a class=\"active\" href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"newslist.jsp\">查看通知</a>\r\n");
      out.write("\t\t<a href=\"application/ApplicationAdd.jsp\">提交申请</a>\r\n");
      out.write("\t\t<a href=\"application/ApplicationInfo.jsp\">查看申请</a>\r\n");
      out.write("\t\t<a href=\"application/ApplicationEdit.jsp\">修改申请</a>\r\n");
      out.write("\t\t<a href=\"sbldLogout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t\t\t\t\t<br><br>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<form name=\"form\" method=\"post\" action=\"#\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\t\t\t\tcellspacing=\"1\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr >\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=center>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print((sbnews.getTitle() == null) ? "" : sbnews
						.getTitle());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<br><br><br>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print((sbnews.getContent() == null) ? "" : sbnews
						.getContent());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t");

								if (sbnews.getFileurl() != null
											&& !sbnews.getFileurl().equals("")) {
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t附&nbsp;件：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"../sb_download.jsp?id=");
      out.print(sbnews.getId());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
      out.print(sbnews.getFilename());
      out.write(" </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t");

								}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t发布时间：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(dateFormatStart.format(sbnews.getPubtime()));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t");

								}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"button\" name=\"back\" value=\"返&nbsp;回\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tonClick=\"window.location.href='newslist.jsp'\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"filename\" type=\"hidden\" id=\"filename\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"fileurl\" type=\"hidden\" id=\"fileurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
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
