package org.apache.jsp.admin.news;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.tools.JavaScript;
import com.eaie.admin.news.NewsImp;
import com.eaie.dbmanage.Bigclass;
import com.eaie.dbmanage.Smallclass;

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
      out.write("\r\n");

request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>添加文章</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  ");
 try{
         List bigClassList = NewsImp.getAllList();
 		 if (bigClassList.isEmpty())
         	out.println(JavaScript.alertandRedirect("文章类别不存在，请先添加大类","../column/AddBigClass.jsp"));
         else{
      out.write("\r\n");
      out.write("           \r\n");
      out.write("  <table width=\"80%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\" style=\"margin-top:30px\">\r\n");
      out.write("  <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("    <td colspan=\"2\">请先选择文章类别</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("    ");

         	 Iterator it = bigClassList.iterator();
             Bigclass bigClass = new Bigclass();
             while (it.hasNext()) {
            	 bigClass = (Bigclass)it.next(); 
 		 	
   
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <tr class=\"title2bg\">\r\n");
      out.write("     <td colspan=\"2\"><img src=\"admin/images/add.gif\" width=\"15\" height=\"15\">");
      out.print(bigClass.getBigclass());
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");
 Set smallClassSet = bigClass.getSmallclasses();
     if (!smallClassSet.isEmpty()) {
        Iterator itSmall = smallClassSet.iterator();
        while (itSmall.hasNext()){
           Smallclass smallClass = (Smallclass)itSmall.next();
  
      out.write("\r\n");
      out.write("  <tr class=\"tdbg\">\r\n");
      out.write("     <td width=\"50%\">&nbsp;&nbsp;&nbsp;<img src=\"admin/images/sub.gif\" width=\"15\" height=\"15\">");
      out.print(smallClass.getSmallclass());
      out.write("</td>\r\n");
      out.write("     <td width=\"50%\" align=\"center\"><a href=\"admin/news/NewsEdit.jsp?smallclassid=");
      out.print(smallClass.getId());
      out.write("\">进入添加</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"admin/news/NewsList.jsp?goClass=");
      out.print(smallClass.getSmallclassid());
      out.write("&curPage=1\">管理文章</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");
     } 
  	  }
  	  }
  	  }
  
      out.write("\r\n");
      out.write("  </table>\r\n");
      out.write("  ");
}catch(Exception e){e.printStackTrace();} 
      out.write("\r\n");
      out.write("  </body>\r\n");
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
