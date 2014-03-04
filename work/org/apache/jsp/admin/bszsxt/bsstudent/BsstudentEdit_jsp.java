package org.apache.jsp.admin.bszsxt.bsstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.bszsxt.bsstudent.*;

public final class BsstudentEdit_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script language = \"JavaScript\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\tfunction isNull(id,paraName)\r\n");
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
      out.write("\t\tfunction formCheck(){\r\n");
      out.write("\t\t\t//return false;\r\n");
      out.write("\t\t\tif(!isNull(\"name\",\"姓名\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"pwd\",\"身份证号\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\t\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<title>修改博士生信息</title>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/calendar.js\"></script>\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/lecture.js\"></script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");

  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  Bsstudent bsstudent = (Bsstudent)BasicDAO.queryById(Bsstudent.class, id);
 
 
      out.write("\r\n");
      out.write(" <body>\r\n");
      out.write("\t\t<BR>\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"admin/bszsxt/bsstudent/BsstudentSave.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t编辑博士生信息\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"30\" rowspan=\"7\">\r\n");
      out.write("\t\t\t\t\t\t<strong>基本信息</strong>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<input name=\"name\" type=\"text\" id=\"name\"  size=\"20\" value=\"");
      out.print((bsstudent.getName()==null)?"":bsstudent.getName());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t身份证号：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"pwd\" type=\"text\" id=\"pwd\"   value=\"");
      out.print((bsstudent.getPwd()==null)?"":bsstudent.getPwd());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t报考专业：\r\n");
      out.write("\t\t\t\t\t<input name=\"bkzy\"  cols=\"62\" value=\"");
      out.print((bsstudent.getBkzy() == null) ? ""
						: bsstudent.getBkzy());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t报考导师：\r\n");
      out.write("\t\t\t\t\t<input name=\"bkds\" value=\"");
      out.print((bsstudent.getBkds()== null) ? ""
						: bsstudent.getBkds());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t总&nbsp;&nbsp;&nbsp; 分： \r\n");
      out.write("\t\t\t\t<input name=\"zongfen\" type=\"text\"  value=\"");
      out.print((bsstudent.getZongfen() == null) ? ""
						: bsstudent.getZongfen());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td >\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t外语成绩：\r\n");
      out.write("\t\t\t\t\t<input name=\"waiyu\" type=\"text\"  value=\"");
      out.print((bsstudent.getWaiyu() == null) ? ""
						: bsstudent.getWaiyu());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t<td > \r\n");
      out.write("\t\t\t\t\t\t业务课1：&nbsp; \r\n");
      out.write("\t\t\t<input name=\"yewu1\" type=\"text\"  value=\"");
      out.print((bsstudent.getYewu1() == null) ? ""
						: bsstudent.getYewu1());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t<td> \r\n");
      out.write("                     业务课2：&nbsp; \r\n");
      out.write("\t\t\t\t\t<input name=\"yewu2\" type=\"text\"  value=\"");
      out.print((bsstudent.getYewu2() == null) ? ""
						: bsstudent.getYewu2());
      out.write("\">\r\n");
      out.write("\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t</tr>\t\t\r\n");
      out.write("\t\t\t     <tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t\t录取导师：\r\n");
      out.write("\t\t\t\t<input name=\"lqds\" value=\"");
      out.print((bsstudent.getLqds() == null) ? ""
						: bsstudent.getLqds());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("                     录取类别：\r\n");
      out.write("                  <input name=\"lqlb\" value=\"");
      out.print((bsstudent.getLqlb()== null) ? ""
						: bsstudent.getLqlb());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\" align=left>\r\n");
      out.write("\t\t\t\t\t录取专业： \r\n");
      out.write("\t\t\t\t\t\t<input name=\"lqzy\" value=\"");
      out.print((bsstudent.getLqzy() == null) ? ""
						: bsstudent.getLqzy());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t<div style=\"float:middle\">\r\n");
      out.write("\t\t\t\t\t\t面试通知：\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"mstz\" rows=\"4\" cols=\"62\" >");
      out.print((bsstudent.getMstz() == null) ? ""
						: bsstudent.getMstz());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</textarea>\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t<BR>\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确定修改\" onclick=\"return formCheck();\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t<input type=\"button\" name=\"back\"  value=\"返&nbsp;&nbsp;&nbsp;&nbsp;回\" onClick=\"window.location.href='BsstudentListbj.jsp'\">\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</body>\r\n");
      out.write("\t//");

 //}
 //
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
