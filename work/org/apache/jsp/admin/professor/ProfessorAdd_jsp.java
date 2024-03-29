package org.apache.jsp.admin.professor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ProfessorAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<title>添加导师信息</title>\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\"　>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\tfunction CheckForm(){\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\tif(!isNull(\"name\",\"导师姓名\"))\r\n");
      out.write("\t\t\t \t{\r\n");
      out.write("\t\t\t \t\treturn false;\r\n");
      out.write("\t\t\t\t}\t\r\n");
      out.write("\t\t\t\tif(!isNull(\"pwd\",\"登录密码\"))\r\n");
      out.write("\t\t\t \t{\r\n");
      out.write("\t\t\t \t\treturn false;\r\n");
      out.write("\t\t\t\t}\t\r\n");
      out.write("\t\t\t\tvar picname = myform.fileurl.value;\r\n");
      out.write("\t\t\t\tvar name=picname.substring(picname.lastIndexOf(\".\"),picname.length);   \r\n");
      out.write("\t\t\t  \tif (name!=\".gif\" && name!=\".jpg\"&&name!=\".jpeg\"&&name!=\".JPEG\"&&name!=\"\"&&name!=\".JPG\"&&name!= \".GIF\"&&name !=\".bmp\"&&name!=\".BMP\")   \r\n");
      out.write("\t\t\t  \t{   \r\n");
      out.write("\t\t\t   \t\talert(\"请上传图片文件（gif/jpg/jpeg/bmp）,请删除后重新上传！\");   \r\n");
      out.write("\t\t\t    \treturn false;   \r\n");
      out.write("\t\t\t  \t}   \r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<form action=\"admin/professor/ProfessorSave.jsp\" method=\"post\" name=\"myform\" onSubmit=\"return CheckForm()\">\r\n");
      out.write("\t\t\t<table width=\"70%\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t添加导师信息\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t导师类别：\r\n");
      out.write("\t\t\t\t\t\t<select name=\"gradeid\" id=\"gradeid\">\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t院士\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t博导\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t硕导\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t讲师\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t登录密码：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"pwd\" type=\"text\" id=\"pwd\" size=\"15\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t排列序号：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"orderid\" type=\"text\" id=\"orderid\" size=\"8\">\r\n");
      out.write("\t\t\t\t\t\t（不填则按姓名音序排列）\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t<fieldset>\r\n");
      out.write("\t\t\t\t\t\t\t<legend>\r\n");
      out.write("\t\t\t\t\t\t\t\t基本信息\r\n");
      out.write("\t\t\t\t\t\t\t</legend>\r\n");
      out.write("\t\t\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"name\" type=\"text\" id=\"name\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t性&nbsp;&nbsp;&nbsp;&nbsp;别：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"sex\" id=\"sex\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"1\" selected>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t男\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t女\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t出生年月：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"birth\" type=\"text\" id=\"birth\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t职&nbsp;&nbsp;&nbsp;&nbsp;称：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"degree\" type=\"text\" id=\"degree\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t所属学科：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"major\" type=\"text\" id=\"major\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t电&nbsp;&nbsp;&nbsp;&nbsp;话：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"tel\" type=\"text\" id=\"tel2\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t办公地点：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"address\" type=\"text\" id=\"address2\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t电子邮箱：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"email\" type=\"text\" id=\"email2\" size=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=2 height=25>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t上传照片：\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<iframe name=\"uploadpic\" src=\"upload/upsinglepic.jsp\" marginWidth=0\tmarginHeight=3 frameborder=0 width=\"320\" height=\"25\" scrolling=no\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tframespacing=0 allowtransparency=\"yes\"></iframe>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=hidden name=\"filename\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=hidden name=\"fileurl\" value=\"\">\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr valign=\"top\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t个人简介：&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"resume\" cols=\"60\" rows=\"5\" id=\"resume\"></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t研究方向：&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"field\" cols=\"60\" rows=\"5\" id=\"field\"></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t科研项目：&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"projects\" cols=\"60\" rows=\"5\" id=\"projects\"></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t学术著作：&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"book\" cols=\"60\" rows=\"5\" id=\"book\"></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t获奖情况：&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"honor\" cols=\"60\" rows=\"5\" id=\"honor\"></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"添&nbsp;&nbsp;加\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" value=\"重&nbsp;&nbsp;置\">\t\r\n");
      out.write("\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"button\" value=\"返&nbsp;&nbsp;回\" onclick=\"location.href='ProfessorList.jsp'\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</body>\r\n");
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
