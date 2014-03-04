package org.apache.jsp.admin.tmszsxt.tmstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.dbmanage.*;

public final class TmstudentAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<head>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"expires\" content=\"0\">\r\n");
      out.write("\t\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t\t<title>添加推免生</title>\r\n");
      out.write("\t\t<link href=\"tm_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t\t<script language=\"javascript\">\r\n");
      out.write("    function checkForm()\r\n");
      out.write("    {\r\n");
      out.write("        if(!isNull(\"name\",\"姓名\"))\r\n");
      out.write("            return false;\r\n");
      out.write("        if(!isNull(\"branch\",\"党支部\"))\r\n");
      out.write("            return false;        \r\n");
      out.write("        if(!isNull(\"stuid\",\"学号\"))\r\n");
      out.write("            return false;\r\n");
      out.write("        return true;\r\n");
      out.write("    }\r\n");
      out.write("    </script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<BR>\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"admin/tmszsxt/tmstudent/TmstudentSave.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t添加推免生\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"30\" rowspan=\"6\">\r\n");
      out.write("\t\t\t\t\t\t<strong>基本信息</strong>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"name\" type=\"text\" id=\"name\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t联系电话：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"tel\" type=\"text\" id=\"tel\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t毕业学校：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"byschool\" type=\"text\" id=\"byschool\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t毕业专业：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"byspeciality\" type=\"text\" id=\"byspeciality\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t接收学院：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"jsacademe\" type=\"text\" id=\"jsacademe\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t接收专业：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"jsspeciality\" type=\"text\" id=\"jsspeciality\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t四级成绩：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"siji\" type=\"text\" id=\"siji\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t六级成绩：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"liuji\" type=\"text\" id=\"liuji\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t专业排名：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"zypm\" type=\"text\" id=\"zypm\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t专业人数：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"zyrs\" type=\"text\" id=\"zyrs\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"tdbg\" colspan=\"2\" valign=\"middle\">\r\n");
      out.write("\t\t\t\t\t\t<div style=\"float:left\">\r\n");
      out.write("\t\t\t\t\t\t获奖情况(字数在100字内)：\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div style=\"float:middle\">\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"huoj\" rows=\"5\" cols=\"62\" onKeyDown='if (this.value.length>=100){event.returnValue=false}'></textarea>\r\n");
      out.write("\t\t\t\t\t\t</div>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"30\" rowspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<strong>录取信息</strong>\r\n");
      out.write("\t\t\t\t\t</td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t复试成绩：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"fushiresult\" type=\"text\" id=\"fushiresult\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t考核通知：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"shenheresult\" type=\"text\" id=\"shenheresult\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t录取结果：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"sflq\" type=\"text\" id=\"sflq\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t导师信息：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"teacher\" type=\"text\" id=\"teacher\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<BR>\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确定添加\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t<input type=\"button\" name=\"back\"  value=\"返&nbsp;&nbsp;&nbsp;&nbsp;回\" onClick=\"window.location.href='TmstudentList.jsp'\">\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
