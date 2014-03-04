package org.apache.jsp.admin.sbldxt.sbldnews;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.sbldxt.sbnews.*;

public final class SbnewsEdit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t<title>修改硕博连读生通知</title>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language = \"JavaScript\">\r\n");
      out.write("\t\t<script language = \"JavaScript\">\r\n");
      out.write("\t\tfunction formCheck(){\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(!isNull(\"title\",\"请输入标题\")){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!isNull(\"content\",\"请输入内容\")){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t}\r\n");
      out.write("</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");

  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Sbnews sbnews where sbnews.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Sbnews sbnews=(Sbnews)list.get(0);
 
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<form name=\"myform\" id=\"myform\" method=\"post\"\r\n");
      out.write("\t\t\taction=\"admin/sbldxt/sbldnews/SbnewsUpate.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t修改硕博连读生通知\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t标&nbsp;题：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t    <input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input name=\"title\" type=\"text\" id=\"subject\" size=\"90\" value=\"");
      out.print(sbnews.getTitle());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t内&nbsp;容：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<td valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"content\" value=\"");
      out.print(sbnews.getContent()==null?"":HtmlEncode.htmlEncode(sbnews.getContent()));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<IFRAME ID=\"eWebEditor1\"\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"eWebEditor/eWebEditor.jsp?id=content&style=standard\"\r\n");
      out.write("\t\t\t\t\t\t\tframeborder=\"0\" scrolling=\"no\" width=\"650\" height=\"350\"></IFRAME>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t附&nbsp;件：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"filename\" value=\"");
      out.print(sbnews.getFilename() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"fileurl\" value=\"");
      out.print(sbnews.getFileurl() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_file frameborder=0 src=\"upload/uploadfile.jsp?action=show&filename=");
      out.print((sbnews.getFilename()==null)?"":sbnews.getFilename() );
      out.write("&fileurl=");
      out.print((sbnews.getFileurl()==null)?"":sbnews.getFileurl() );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" height=\"25\" scrolling=no frameborder=\"0\" allowtransparency=\"yes\"></iframe>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"修&nbsp;改\" onClick=\"check()\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" name=\"Submit2\" value=\"重&nbsp;置\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"button\" name=\"back\" value=\"返&nbsp;回\"  onClick=\"window.location.href='SbnewsList.jsp'\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t");

 }
 
      out.write("\r\n");
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
