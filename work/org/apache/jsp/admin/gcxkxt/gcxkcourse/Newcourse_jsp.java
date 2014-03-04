package org.apache.jsp.admin.gcxkxt.gcxkcourse;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import java.util.List;

public final class Newcourse_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<title>课程信息</title>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/calendar.js\"></script>\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/lecture.js\"></script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script language=javascript> \r\n");
      out.write("\t\tfunction isNull(id,paraName)\r\n");
      out.write("    {\r\n");
      out.write("        if(document.getElementById(id).value==\"\" || document.getElementById(id).value==null)\r\n");
      out.write("        {\r\n");
      out.write("            alert(paraName+\"不能为空!\");\r\n");
      out.write("            document.getElementById(id).focus();\r\n");
      out.write("            document.getElementById(id).select();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        else return true;\r\n");
      out.write("    }  \t\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\tfunction formCheck(){\r\n");
      out.write("\t\t\t//return false;\r\n");
      out.write("\t\t\tif(!isNull(\"title\",\"课程名称\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t}\t\t\t\r\n");
      out.write("\t\t\t</script>\t\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t</head>\r\n");
      out.write("\t");

		
		String hql = "From Gcteacher As Gt ";
		List listA = BasicDAO.queryByHql(hql);
	
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<BR>\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\"\r\n");
      out.write("\t\t\taction=\"admin/gcxkxt/gcxkcourse/GccourseSave.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t上传课程信息\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t课&nbsp;&nbsp;&nbsp;&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"title\" type=\"text\" id=\"title\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t任课教师：\r\n");
      out.write("\t\t\t\t\t\t<select name=\"teacher\">\r\n");
      out.write("\t\t\t\t\t\t\t");

								for (int j = 0; j < listA.size(); j++) {
									Gcteacher gcteacher = (Gcteacher) listA.get(j);
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<option value=");
      out.print(gcteacher.getName());
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(gcteacher.getName());
      out.write("</option>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									}
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t学&nbsp;&nbsp;&nbsp; 分：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"credit\" type=\"text\" id=\"credit\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t教&nbsp;&nbsp;&nbsp; 材：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"book\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t年&nbsp;&nbsp;&nbsp; 度：\r\n");
      out.write("\t\t\t\t\t\t<select name = \"nian\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2009上\" selected>2009上</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2009下\">2009下</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2010上\">2010上</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2010下\">2010下</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2011上\">2011上</option>\r\n");
      out.write("\t\t\t\t        <option value=\"2011下\">2011下</option>\r\n");
      out.write("\t\t\t\t        <option value=\"2012上\">2012上</option>\r\n");
      out.write("\t\t\t\t         <option value=\"2012下\">2002下</option>\r\n");
      out.write("\t\t\t\t        <option value=\"2013上\">2013上</option>\r\n");
      out.write("\t\t\t\t        <option value=\"2013下\">2013下</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t上课时间：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"shijian\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t上课地点：&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input name=\"place\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t考试信息：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"test\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<div style=\"float: middle\">\r\n");
      out.write("\t\t\t\t\t\t\t备注：\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"beizhu\" rows=\"4\" cols=\"68\"> </textarea>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<BR>\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确定上传\"\r\n");
      out.write("\t\t\t\t\tonclick=\"return formCheck();\">\r\n");
      out.write("\t\t\t\t&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t<input type=\"button\" name=\"back\" value=\"返&nbsp;&nbsp;&nbsp;&nbsp;回\"\r\n");
      out.write("\t\t\t\t\tonClick=\"window.location.href='Gcchoose.jsp'\">\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
