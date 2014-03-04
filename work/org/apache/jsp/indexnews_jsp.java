package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.admin.news.*;
import com.eaie.dbmanage.*;
import com.eaie.tools.*;
import java.util.*;

public final class indexnews_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

private String getImage(News news) {

		String imagename, imagetitle;
		if (news.getIstop() != null && news.getIstop() > 0) {
			imagename = "istop.gif";
			imagetitle = "置顶";
		} else {
			imagename = "arrow.gif";
			imagetitle = "普通";
		}
		return "<img src='images/news/" + imagename
				+ "' width=9 height=15 title='" + imagetitle + "'>";
	}
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<title></title>\r\n");
      out.write("\t\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\t  function secBoard(n)\r\n");
      out.write("  {\r\n");
      out.write("    for(i=0;i<secTable.cells.length;i++)\r\n");
      out.write("      secTable.cells[i].className=\"sec1\";\r\n");
      out.write("    secTable.cells[n].className=\"sec2\";\r\n");
      out.write("    for(i=0;i<mainTable.tBodies.length;i++)\r\n");
      out.write("      mainTable.tBodies[i].style.display=\"none\";\r\n");
      out.write("    mainTable.tBodies[n].style.display=\"block\";\r\n");
      out.write("  }\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<table align=center width=\"542\"  border=\"0\" cellpadding=\"0\"cellspacing=\"0\">\r\n");
      out.write("\t<tr><td colspan=4 align=center><img src=\"images/index_3_16.gif\" width=\"542\" height=\"40\" alt=\"\"></td></tr></table>\r\n");
      out.write("\t<table align=center width=\"500\" height=\"18\" border=\"0\" cellpadding=\"0\"\r\n");
      out.write("\t\tcellspacing=\"0\" id=\"secTable\">\r\n");
      out.write("\r\n");
      out.write("\t\t<tr align=\"center\" valign=\"top\">\r\n");
      out.write("\t\t\t<td width=\"25%\" class=\"sec2\" onMouseover=\"secBoard(0)\">\r\n");
      out.write("\t\t\t\t学院新闻\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"25%\" class=\"sec1\" onMouseover=\"secBoard(1)\">\r\n");
      out.write("\t\t\t\t本科生通知\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"25%\" class=\"sec1\" onMouseover=\"secBoard(2)\">\r\n");
      out.write("\t\t\t\t研究生通知\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"25%\" class=\"sec1\" onMouseover=\"secBoard(3)\">\r\n");
      out.write("\t\t\t\t就业信息\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<table width=\"500\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n");
      out.write("\t\tid=\"mainTable\" align=center>\r\n");
      out.write("\t\t<tbody style=\"display: block\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t");

							List list = NewsImp.getTopNews(10, "学院新闻");
							Iterator it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(getImage(news));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"ShowArticle.jsp?id=");
      out.print(news.getId());
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttitle=\"");
      out.print(news.getTitle());
      out.write("\" target=\"_blank\">");
      out.print(news.getTitle());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									
      out.write(" </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t");
	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td width=\"60\" height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(DateTimeFormat.getDateString(news.getPubtime()));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

						}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</tbody>\r\n");
      out.write("\t\t<tbody style=\"display: none\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t");

							list = NewsImp.getTopNews(10, "本科生通知");
							it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(getImage(news));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"ShowArticle.jsp?id=");
      out.print(news.getId());
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttitle=\"");
      out.print(news.getTitle());
      out.write("\" target=\"_blank\">");
      out.print(news.getTitle());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									
      out.write(" </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t");
	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td width=\"60\" height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(DateTimeFormat.getDateString(news.getPubtime()));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

						}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</tbody>\r\n");
      out.write("\t\t<tbody style=\"display: none\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t");

							list = NewsImp.getTopNews(10, "研究生通知");
							it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(getImage(news));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"ShowArticle.jsp?id=");
      out.print(news.getId());
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttitle=\"");
      out.print(news.getTitle());
      out.write("\" target=\"_blank\">");
      out.print(news.getTitle());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									
      out.write(" </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t");
	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td width=\"60\" height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(DateTimeFormat.getDateString(news.getPubtime()));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

						}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</tbody>\r\n");
      out.write("\t\t<tbody style=\"display: none\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t");

							list = NewsImp.getTopNews(10, "就业信息");
							it = list.iterator();

							while (it.hasNext()) {

								News news = (News) it.next();
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(getImage(news));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"ShowArticle.jsp?id=");
      out.print(news.getId());
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttitle=\"");
      out.print(news.getTitle());
      out.write("\" target=\"_blank\">");
      out.print(news.getTitle());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											if (news.getImageurl() != null
											&& !news.getImageurl().equals(""))
												out.println("[图]");
									
      out.write(" </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t");
	
									String sPubTime  = DateTimeFormat.getDateString(news.getPubtime());
									String sNow = DateTimeFormat.getDateString(new Date());
									if(sNow.equalsIgnoreCase(sPubTime)){
									
										out.println("<img src=images/news/new.gif>");
									
									}
								 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td width=\"60\" height=\"25\" class=\"newsline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(DateTimeFormat.getDateString(news.getPubtime()));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

						}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</tbody>\r\n");
      out.write("\t</table>\r\n");
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
