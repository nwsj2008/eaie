package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.admin.news.*;
import com.eaie.dbmanage.*;
import com.eaie.tools.*;
import java.util.*;

public final class picnews_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write('\r');
      out.write('\n');

	String pics="";
	String links="";
	String texts="";

	List list = NewsImp.getPicNews(3);		
	Iterator it = list.iterator();
	while (it.hasNext()) {	
	
		News news = (News) it.next();	
		String[] newspic = news.getImageurl().split("\\|");
		if(newspic!=null){
			for(int i=0;i<newspic.length;i++){
				links +=news.getId().toString() + "|";
				texts +=news.getTitle()+ "|";
				pics += newspic[i] + "|";
			}
		}
			
	}		
	while(pics.endsWith("|")){
		pics = pics.substring(0,pics.length()-1);	
	}	
	pics = pics.replaceAll("\\|","|UploadFiles/uppic/");	
	pics = "UploadFiles/uppic/" + pics;
	
	links = links.substring(0,links.length()-1);
	links = links.replace("|","|ShowArticle.jsp?id=");
	links = "ShowArticle.jsp?id=" + links;
	texts = texts.substring(0,texts.length()-1);	
 
      out.write("\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("<!--\r\n");
      out.write("\tvar focus_width=540\r\n");
      out.write("\tvar focus_height=280\r\n");
      out.write("\tvar text_height=20\r\n");
      out.write("\tvar swf_height = focus_height+text_height\r\n");
      out.write("\t\r\n");
      out.write("\tvar pics='");
      out.print(pics);
      out.write("'\r\n");
      out.write("\tvar links='");
      out.print(links);
      out.write("'\r\n");
      out.write("\tvar texts='");
      out.print(texts);
      out.write("'\r\n");
      out.write("\r\n");
      out.write("\tdocument.write('<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=3,0,0,0\" width=\"'+ focus_width +'\" height=\"'+ swf_height +'\">');\r\n");
      out.write("\tdocument.write('<param name=\"allowScriptAccess\" value=\"sameDomain\"><param name=\"movie\" value=\"images/picnews.swf\"><param name=\"quality\" value=\"high\"><param name=\"bgcolor\" value=\"#CCCCCC\">');\r\n");
      out.write("\tdocument.write('<param name=\"menu\" value=\"false\"><param name=wmode value=\"opaque\">');\r\n");
      out.write("\tdocument.write('<param name=\"FlashVars\" value=\"pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'\">');\r\n");
      out.write("\tdocument.write('<embed src=\"images/picnews.swf\" wmode=\"opaque\" FlashVars=\"pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'\" menu=\"false\" bgcolor=\"#ffffff\" quality=\"high\" width=\"'+ focus_width +'\" height=\"'+ swf_height +'\" allowScriptAccess=\"sameDomain\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />');\t\r\n");
      out.write("\tdocument.write('</object>');\r\n");
      out.write("//-->\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
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
