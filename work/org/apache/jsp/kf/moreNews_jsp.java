package org.apache.jsp.kf;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.tools.DateTimeFormat;
import com.eaie.tools.Image;
import com.eaie.dbmanage.Commiepub;
import com.eaie.dbmanage.Commie;
import com.eaie.party.PartyImp;
import com.eaie.tools.BufferString;
import com.eaie.kxfzgNews.*;
import java.text.SimpleDateFormat;
import com.eaie.kxfzgNews.KxfzgNewsList;
import com.eaie.common.*;
import com.eaie.dbmanage.KxfzgNews;
import com.eaie.dbmanage.*;
import com.eaie.admin.kxfzg.*;
import java.util.*;

public final class moreNews_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

List list;
	String cKeyWords, csearchpart;
  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/admin/common/Pager.jsp");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("\t\tfunction JumpMenu(targ,selObj,restore)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\teval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");\r\n");
      out.write("\t\t\tif (restore) selObj.selectedIndex=0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
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
      out.write("<title>新闻列表 - 深入学习实践科学发展观</title>\r\n");
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
 Commie commie = (Commie)session.getAttribute("Commie");
     Vector party = PartyImp.getParty(); 
     List list_News = (List)party.get(0);
     List list_ZHIBU = (List)party.get(1);
     List list_LILUN = (List)party.get(2);
     List list_XUEXI = (List)party.get(3);
     List list_DAOHANG = (List)party.get(4);
     List list_Pub = (List)party.get(5);
     List list_File = (List)party.get(6);
     Commiepub pub;
     
  
      out.write('\r');
      out.write('\n');
      out.write(' ');
      out.write("\r\n");
      out.write("\t\t");

		 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			KxfzgList clist = new KxfzgList();
			list = clist.getKxfzgList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
		
      out.write("\r\n");
      out.write("\t\t<TABLE cellSpacing=0 cellPadding=0 width=762 align=center border=0>\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD><center><img src=\"images/party_01.gif\" width=\"766\" height=\"120\"></center></TD></TR>\r\n");
      out.write("  </TBODY></TABLE>\r\n");
      out.write("  \r\n");
      out.write("<table width=\"762\" height=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"\">\r\n");
      out.write("  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"10\" align=\"right\" valign=\"top\" bgcolor=\"#BC0000\">&nbsp;</td>\r\n");
      out.write("    <td width=\"752\" valign=\"top\">\r\n");
      out.write("    <table width=\"100%\" height=\"266\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"42\" bgcolor=\"#990000\"><img src=\"images/party_04.gif\" width=\"754\" height=\"42\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("          \r\n");
      out.write("\t\t  <tr>\r\n");
      out.write("        <td height=\"555\" valign=\"top\">\r\n");
      out.write("\t\t<table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t");
 	
					  int size = list.size();
						for (int i = (size-1); i>=0; i--) {
							KxfzgNews kxfzgNews = (KxfzgNews) list.get(i);
							
				
      out.write("\r\n");
      out.write("\t\t\t<tr class=\"topic\" >\r\n");
      out.write("            \t<td height=\"25\" class=\"line\" width=\"85%\"><img src=\"kf/images/arrow.gif\" width=\"9\" height=\"9\">&nbsp;<a style=\"font-size:17px\" href=\"ShowKxfzgNews.jsp?id=");
      out.print(kxfzgNews.getId());
      out.write('"');
      out.write('>');
      out.print(kxfzgNews.getTitle());
      out.write("</a>&nbsp;</td>\r\n");
      out.write("            \t<td align=\"right\" class=\"line\" width=\"15%\">");
      out.print(DateTimeFormat.getDateString(kxfzgNews.getPubtime()));
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t    ");
} 
	    
	     
	    
      out.write("\t\r\n");
      out.write("\t\t</table>  \r\n");
      out.write(" \t\t</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("\t\t<tr >\r\n");
      out.write("\t\t\t\t<table align=\"center\" width=\"752\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" id=\"keyword\" name=\"keyword\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=");
      out.print(cKeyWords == null ? "" : cKeyWords);
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" id=\"keyword\" name=\"type\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=");
      out.print(csearchpart == null ? "" : csearchpart);
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t");
      out.write('\r');
      out.write('\n');
request.setCharacterEncoding("GBK"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("  function Jumping(){\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  function gotoPage(curPage){\r\n");
      out.write("      document.pageForm.curPage.value=curPage;\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("<center>\r\n");
 
   if(curPage==1){out.print("首页 上一页");}
   else{
      out.write("\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(1)\">首页</a>\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(curPage-1 );
      out.write(")\">上一页</a>\r\n");
      out.write("   ");
} 
   if (curPage==pager.getMaxPage()){out.print("下一页 尾页");}
   else{
      out.write("\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(curPage+1 );
      out.write(")\">下一页</a>\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(pager.getMaxPage() );
      out.write(")\">尾页</a>\r\n");
      out.write("   ");
} 
      out.write("\r\n");
      out.write("   转到第<select name=\"curPage\" onchange=\"Jumping()\">\r\n");
      out.write("   ");
 for(int i=1; i<=pager.getMaxPage(); i++){
          if(i==curPage){
      out.write("\r\n");
      out.write("              <option selected value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
          else {
      out.write(" <option value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
   }
   
      out.write("\r\n");
      out.write("   </select>页\r\n");
      out.write("   共有");
      out.print(pager.getRowsNum() );
      out.write("条记录 第<font color=\"red\">");
      out.print(curPage );
      out.write("</font>页 共");
      out.print(pager.getMaxPage() );
      out.write("页\r\n");
      out.write(" </center>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("   </td>\r\n");
      out.write("   <td width=\"10\" align=\"right\" valign=\"top\" bgcolor=\"#BC0000\">&nbsp;</td>\r\n");
      out.write("   </tr>\r\n");
      out.write("  </table>\r\n");
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
