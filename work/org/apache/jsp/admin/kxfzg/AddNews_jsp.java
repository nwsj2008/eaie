package org.apache.jsp.admin.kxfzg;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.BasicDAO;
import com.eaie.tools.*;

public final class AddNews_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=GBK");
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

    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>添加文章</title>\r\n");
      out.write("\t\t<style type=\"text/css\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\tbody {\r\n");
      out.write("\t\tbackground-color: #FEFFED;\r\n");
      out.write("\t}\r\n");
      out.write("\t-->\r\n");
      out.write("\t</style>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\tfunction CheckForm()\r\n");
      out.write("\t\t{\t\t  \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\tif (document.myform.title.value.length == 0) {\r\n");
      out.write("\t\t\t\talert(\"请填写文章标题\");\r\n");
      out.write("\t\t\t\tdocument.myform.title.focus();\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif (document.myform.part.value.length == 0) {\r\n");
      out.write("\t\t\t\talert(\"请填写发布部门\");\r\n");
      out.write("\t\t\t\tdocument.myform.part.focus();\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write(" \t\tfunction AutoIframe()\r\n");
      out.write("\t    {  \r\n");
      out.write("\t        if(document.readyState!='complete')\r\n");
      out.write("\t        {\r\n");
      out.write("\t            setTimeout( function(){AutoIframe();},25 );\r\n");
      out.write("\t            return;\r\n");
      out.write("\t        }\r\n");
      out.write("\t        else\r\n");
      out.write("\t        {\r\n");
      out.write("\t           var ifobj=document.getElementById(\"d_pic\");\r\n");
      out.write("\t           ifobj.height= ifobj.contentWindow.document.body.scrollHeight;\r\n");
      out.write("\t        }\r\n");
      out.write("\t    }\r\n");
      out.write("\t    function SetWinHeight(obj)\r\n");
      out.write("\t\t{\t\t\t     \r\n");
      out.write("\t\t\t var win=obj;\r\n");
      out.write("\t\t\t if (document.getElementById)\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t    if (win && !window.opera)\r\n");
      out.write("\t\t\t    {\r\n");
      out.write("\t\t\t\t  if (win.contentDocument && win.contentDocument.body.offsetHeight)\r\n");
      out.write("\t\t\t\t    win.height = win.contentDocument.body.offsetHeight;\r\n");
      out.write("\t\t\t\t  else if(win.Document && win.Document.body.scrollHeight)\r\n");
      out.write("\t\t\t\t    win.height = win.Document.body.scrollHeight;\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t    }\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<form name=\"myform\" method=\"post\" action=\"admin/kxfzg/NewsSave.jsp\"\r\n");
      out.write("\t\t\tonSubmit=\"return CheckForm();\">\r\n");
      out.write("\t\t\t<table width=\"730\" border=\"0\" align=\"left\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t发布部门：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print("团委");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章标题：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"title\" type=\"text\" id=\"title\" size=\"70\"\r\n");
      out.write("\t\t\t\t\t\t\tmaxlength=\"35\">\r\n");
      out.write("\t\t\t\t\t\t（不多于35个字）\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t文章内容：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"content\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<IFRAME ID=\"eWebEditor1\"\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"eWebEditor/eWebEditor.jsp?id=content&style=standard\"\r\n");
      out.write("\t\t\t\t\t\t\tframeborder=\"0\" scrolling=\"no\" width=\"650\" height=\"350\"></IFRAME>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t粘贴附件：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"filename\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"fileurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_file frameborder=0 src=\"upload/uploadfile.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" height=\"25\" scrolling=no frameborder=\"0\" allowtransparency=\"yes\"></iframe>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t添加图片：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"imageurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_pic frameborder=0 src=\"upload/uploadpic.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" 　height=\"25\" scrolling=no frameborder=\"0\" border=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tonload=\"SetWinHeight(this)\"></iframe>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章属性：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<blockquote><input type=\"checkbox\" name=\"istop\" id=\"istop\" value=\"1\"> \r\n");
      out.write("\t\t\t\t\t\t置顶 \r\n");
      out.write("\t\t\t\t\t\t");
      out.write("</blockquote></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr align=\"right\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"提 交\" class=\"button\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" name=\"Submit2\" value=\"重 置\" class=\"button\">\t\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"part\" value=\"团委\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</body>\r\n");
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
