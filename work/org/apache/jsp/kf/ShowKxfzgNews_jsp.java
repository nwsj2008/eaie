package org.apache.jsp.kf;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.common.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.kxfzg.*;
import java.text.SimpleDateFormat;
import java.util.*;

public final class ShowKxfzgNews_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/kf/Footer.jsp");
  }

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
      response.setContentType("text/html;charset=GBk");
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
  
    request.setCharacterEncoding("GBK");
    
    String id = request.getParameter("id");
    //String id="19";
    if(id==null){	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
	
    KxfzgNews n = new KxfzgNews();
    int temp = Integer.parseInt(id);
    n = (KxfzgNews)BasicDAO.queryById(KxfzgNews.class,temp);
    
    if(n==null){
	
		out.println("<center><font color='#333333'><h3>没有您要找的内容</h3></font></center>");
		return;
	}
    kxfzgNews.updateHit(n);
 
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".content { font-size: 11pt; }\r\n");
      out.write("td{word-break:break-all}\r\n");
      out.write(".bj {\r\n");
      out.write("\tBACKGROUND-POSITION: center top; BACKGROUND-IMAGE: url(images/background.jpg); BACKGROUND-REPEAT:repeat\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<SCRIPT language=JavaScript>\r\n");
      out.write("var currentpos,timer;\r\n");
      out.write("\r\n");
      out.write("function initialize()\r\n");
      out.write("{\r\n");
      out.write("timer=setInterval(\"scrollwindow()\",50);\r\n");
      out.write("}\r\n");
      out.write("function sc(){\r\n");
      out.write("clearInterval(timer);\r\n");
      out.write("}\r\n");
      out.write("function scrollwindow()\r\n");
      out.write("{\r\n");
      out.write("currentpos=document.body.scrollTop;\r\n");
      out.write("window.scroll(0,++currentpos);\r\n");
      out.write("if (currentpos != document.body.scrollTop)\r\n");
      out.write("sc();\r\n");
      out.write("}\r\n");
      out.write("document.onmousedown=sc\r\n");
      out.write("document.ondblclick=initialize\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css.css\" type=\"text/css\">\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/css.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css1.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("<title>");
      out.print( n.getTitle() );
      out.write(" - 深入学习实践科学发展观</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".style1 {\r\n");
      out.write("\tcolor: #FF0000;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body topmargin=\"0\" class=bj background=\"fk/images/bg2.jpg\">\r\n");
      out.write("\t<TABLE cellSpacing=0 cellPadding=0 width=762 align=center border=0>\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD><center><img src=\"images/party_01.gif\" width=\"766\" height=\"120\"></center></TD></TR>\r\n");
      out.write("  </TBODY></TABLE>\r\n");
      out.write("  \r\n");
      out.write("<table width=\"766\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#F5F5F5\">\r\n");
      out.write("<tr>\r\n");
      out.write("  <td><table width=\"766\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#F5F5F5\">\r\n");
      out.write("  <tr> \r\n");
      out.write("    <td width=\"6\" rowspan=\"2\" align=\"center\" valign=\"top\">　</td>\r\n");
      out.write("    <td width=\"760\" align=\"right\" valign=\"top\" bgcolor=\"#F5F5F5\"> \r\n");
      out.write("      <table width=\"95%\" border=\"0\" align=\"center\" valign=\"top\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("        <tr> \r\n");
      out.write("          <td height=\"20\" colspan=\"2\" align=\"center\" class=\"tit\">");
      out.print(n.getTitle());
      out.write("</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr> \r\n");
      out.write("          <td width=\"40%\" height=\"30\" style=\"border-top: 1 solid #666666;border-bottom: 1 solid #666666\">双击自动滚屏</td>\r\n");
      out.write("          <td width=\"60%\" align=\"center\" style=\"border-top: 1 solid #666666;border-bottom: 1 solid #666666\">发布者：");
      out.print( n.getPart() );
      out.write(" \r\n");
      out.write("            发布时间： ");
      out.print( n.getPubtime().toString().substring(0,19) );
      out.write(" 阅读：<font color=\"#FF0000\">");
      out.print( n.getHit() );
      out.write("</font>次</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("        \r\n");
      out.write("        ");

							if(n.getImageurl()!=null&&!n.getImageurl().equals("")){ 
								String[] imageurl = n.getImageurl().split("\\|");
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t <tr height=5>\r\n");
      out.write("\t\t\t\t\t\t\t<th colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<table width=\"400\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t\t\t");

								for(int i = 0;i<imageurl.length; i++){
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"../UploadFiles/uppic/");
      out.print(imageurl[i]);
      out.write("\" width=\"400\" border=\"0\">\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

								}
										
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

						 	}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<br><br><br><br>\r\n");
      out.write("\t\t\t\t\t\t<tr width=742>\r\n");
      out.write("\t\t\t\t\t\t\t<th colspan=\"2\" class=\"news_content\" align=\"left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(n.getContent()==null?"":n.getContent() );
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<br><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr><td>");

									if(n.getFileurl()!=null&&!n.getFileurl().equals("")){
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;附件：\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"../kxfzg_down.jsp?id=");
      out.print(n.getId() );
      out.write('"');
      out.write('>');
      out.print(n.getFilename() );
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									}
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("      </table>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"20\" align=\"right\" bgcolor=\"#F5F5F5\" width=\"760\"> \r\n");
      out.write("      <table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td align=\"right\"> <img src=\"images/printer.gif\" width=\"16\" height=\"14\" align=\"absmiddle\">        \r\n");
      out.write("            <a href=\"javascript:window.print()\">打印本页</a> | <img src=\"images/close.gif\" width=\"14\" height=\"14\" align=\"absmiddle\">             \r\n");
      out.write("            <a href=\"javascript:window.close()\">关闭窗口</a></td>            \r\n");
      out.write("        </tr><hr>\r\n");
      out.write("\r\n");
      out.write("        <tr> \r\n");
      out.write("          <td colspan=\"2\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td colspan=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("          <p>&nbsp;</p></td>\r\n");
      out.write("        </tr>\t  \r\n");
      out.write("      </table>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write(" <table width=\"766\" height=\"70\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" bgcolor=\"#B10000\">\r\n");
      out.write("  \t<tr>\r\n");
      out.write("    \t<td height=\"10\" align=\"center\" class=\"foot\"></td>\r\n");
      out.write("  \t</tr>\r\n");
      out.write("  \t<tr>\r\n");
      out.write("   \t \t<td height=\"25\" align=\"center\" class=\"foot\">版权所有：北京交通大学电子信息工程学院&nbsp;&nbsp;&nbsp;网页制作：电子信息工程学院 </td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t    <td height=\"25\" align=\"center\" class=\"foot\">地址：北京市海淀区上园村3号，北京交通大学九号教学楼&nbsp;&nbsp;邮编：100044&nbsp;&nbsp;电话：010-51683484</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t    <td height=\"10\" align=\"center\" class=\"foot\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write(" </table>");
      out.write("\r\n");
      out.write("</body>\r\n");
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
