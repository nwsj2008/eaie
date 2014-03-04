package org.apache.jsp.message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.admin.message.*;
import com.eaie.system.*;

public final class MsgShow_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/head.jsp");
    _jspx_dependants.add("/message/../admin/common/Pager.jsp");
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
      out.write("\r\n");

request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    <title>所有站内留言</title>  \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\r\n");
      out.write("\t<link href=\"../css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\r\n");
      out.write("\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t<script language=\"javascript\">\r\n");
      out.write("</script> \r\n");
      out.write("  </head>\r\n");
      out.write("   <body>\r\n");
      out.write("  ");
		
        String id = request.getParameter("id");
		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		MessageList mlist = new MessageList();		
		List list = mlist.getMessageList(curPage,id);
		Page pager = mlist.getCurrentPage();
        String type = request.getParameter("type");
	    if(type==null)
	    {
	    return;
	    }

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
 
String website="http://localhost/eaie";


      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
      out.write("    <title>head.jsp</title>\r\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<LINK href=\"css/menu.css\"  type=text/css rel=stylesheet>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("\r\n");
      out.write("a.head:link {\r\n");
      out.write("\tcolor: #FFFFFF;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("a.head:visited {\r\n");
      out.write("\tcolor: #FFFFFF;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("a.head:active {\r\n");
      out.write("\tcolor: #61CFEB;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("a.head:hover {\r\n");
      out.write("\tcolor: #FFFFFF;\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write(".topmenu {\r\n");
      out.write("\tborder-top-width: 1px;\r\n");
      out.write("\tborder-bottom-width: 1px;\r\n");
      out.write("\tborder-top-style: solid;\r\n");
      out.write("\tborder-bottom-style: solid;\r\n");
      out.write("\tborder-top-color: #000000;\r\n");
      out.write("\tborder-bottom-color: #000000;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("  </head>\r\n");
      out.write("<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>\r\n");
      out.write("<table width=782 border=0 cellpadding=0 cellspacing=0 align=\"center\" height=\"26\">\r\n");
      out.write("  <tr><td height=\"5\" bgcolor=\"#445390\" colspan=\"5\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("<tr height=18>\r\n");
      out.write("     <td width=\"227\" align=left><a href=#>&nbsp;&nbsp;<img src=images/m02.gif width=70 height=\"18\" border=0></a></td>\r\n");
      out.write("    <td  align=\"left\" valign=middle nowrap><script language=JavaScript>\r\n");
      out.write("  today=new Date();\r\n");
      out.write("  function initArray(){\r\n");
      out.write("   this.length=initArray.arguments.length\r\n");
      out.write("   for(var i=0;i<this.length;i++)\r\n");
      out.write("   this[i+1]=initArray.arguments[i]  }\r\n");
      out.write("   var d=new initArray(\r\n");
      out.write("     \"星期日\",\r\n");
      out.write("     \"星期一\",\r\n");
      out.write("     \"星期二\",\r\n");
      out.write("     \"星期三\",\r\n");
      out.write("     \"星期四\",\r\n");
      out.write("     \"星期五\",\r\n");
      out.write("     \"星期六\");\r\n");
      out.write("    document.write(\"<font color=#800080 style='font-size:12px;font-family: 宋体;font-weight:bold'>\",\r\n");
      out.write("     today.getYear(),\"年\",\r\n");
      out.write("     today.getMonth()+1,\"月\",\r\n");
      out.write("     today.getDate(),\"日\",\"&nbsp;\",\r\n");
      out.write("     d[today.getDay()+1],\r\n");
      out.write("     \"</font>\" );\r\n");
      out.write("   </script></td>\r\n");
      out.write("   <td align=\"center\" bgcolor=\"#FFFFFF\" nowrap style=\"font-size:12; font-weight:bold; color:#800080;\">总访问量：");
      out.print(Operation.getVisitNum());
      out.write("人次</td>\r\n");
      out.write("   <td align=\"right\" width=\"217\" valign=bottom><img src=images/m02-right--.gif width=217 border=0 style=\"height: 18px;\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<table width=782 height=\"150\" border=0 cellpadding=0 cellspacing=0 align=\"center\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("  <tr height=\"150\">\r\n");
      out.write("     <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("    <td height=\"150\" valign=\"center\" background=\"images/top2-.jpg\" align=\"center\" colspan=\"2\"><object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width=\"200\" height=\"145\">\r\n");
      out.write("      <param name=\"movie\" value=\"images/circlue.swf\" >\r\n");
      out.write("      <param name=\"quality\" value=\"high\">\r\n");
      out.write("      <param name=\"wmode\" value=\"transparent\">\r\n");
      out.write("      <embed src=\"images/circlue.swf\" quality=\"high\" wmode=\"transparent\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"560\" height=\"145\"></embed>\r\n");
      out.write("    </object></td>\r\n");
      out.write("\r\n");
      out.write("\t   <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\t  <td width=\"78\" height=\"5\"><img src=\"images/gray-title.gif\" width=\"100%\"></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table id=\"secTable\" nowrap width=782 height=25 border=0 cellpadding=0 cellspacing=0 align=\"center\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <!--FLASH-->\r\n");
      out.write("     <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("    <td width=780 height=25 colspan=2 valign=\"bottom\" background=\"images/1-.jpg\">\r\n");
      out.write("         <TABLE cellSpacing=0 cellPadding=0 width=\"780\"  border=0 height=\"25\">\r\n");
      out.write("            \t\t<TBODY>\r\n");
      out.write("              \t\t\t<TR>\r\n");
      out.write("              \t\t\t\t<TD valign=\"bottom\" width=20>&nbsp;</TD>\r\n");
      out.write("                  \t\t\t<TD width=\"780\" height=\"25\" class=write><!-- Begin menu -->\r\n");
      out.write("                    \t\t<SCRIPT language=javascript src=\"js/transmenu.js\"></SCRIPT>\r\n");
      out.write("                   \t\t\t<DIV id=wrap><DIV id=menu>\r\n");
      out.write("                        \t\t<TABLE cellSpacing=5 cellPadding=0 border=0 align=center width=\"760\" height=\"25\">\r\n");
      out.write("                          \t\t\t<TBODY>\r\n");
      out.write("                            \t\t\t<TR>\r\n");
      out.write("                            \t\t\t<td width=10></td>\r\n");
      out.write("                            \t\t\t\t<TD ><A width=\"55\" class=mainlevel-trans href=\"index.jsp\">首页</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"81\" class=mainlevel-trans id=menu62 href=\"ShowContent.jsp?smallclassid=91&type=1\">学院概况</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"94\"class=mainlevel-trans id=menu59 href=\"ShowClass.jsp?id=21&type=2\">本科生工作</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"94\"class=mainlevel-trans id=menu61 href=\"ShowClass.jsp?id=31&type=3\">研究生工作</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"81\" class=mainlevel-trans id=menu71 href=\"ShowClass.jsp?id=41&type=4\">科学研究</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"81\" class=mainlevel-trans id=menu93 href=\"teacher/teachers.jsp?gradeid=1&type=5\">师资队伍</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"131\" class=mainlevel-trans id=menu95 href=\"ShowContent.jsp?id=58&type=6\">学科与实验室建设</A></TD>\r\n");
      out.write("                                \t\t\t<TD><A width=\"81\" class=mainlevel-trans  href=\"/party/\" target=_blank>党建工作</A></TD>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<TD><A width=\"81\" class=mainlevel-trans id=menu98 href=\"/ShowClass.jsp?id=81&type=7\">学生天地</A></TD>\r\n");
      out.write("<!--                               \r\n");
      out.write("                                \t\t\t<TD><A class=mainlevel-trans id=menu66 href=\"#\">客户服务</A></TD>\r\n");
      out.write("-->\r\n");
      out.write("                           \t\t\t \t</TR>\r\n");
      out.write("                          \t\t\t</TBODY>\r\n");
      out.write("                        \t\t</TABLE>\r\n");
      out.write("                    \t\t</DIV></DIV>\r\n");
      out.write("                    \t\t<SCRIPT language=javascript src=\"js/menu.js\"></SCRIPT>\r\n");
      out.write("                   \t\t\t</TD><!-- End menu -->\r\n");
      out.write("\t\t\t\t   \t\t\t<TD vAlign=top align=right width=274>&nbsp;</TD>\r\n");
      out.write("              \t\t\t</TR>\r\n");
      out.write("            \t\t</TBODY>\r\n");
      out.write("          \t\t</TABLE>\r\n");
      out.write("\t</td>\r\n");
      out.write("     <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("    <!--FLASH-->\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<table width=782 height=\"100%\" border=0 cellpadding=0 cellspacing=0 align=\"center\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("\t<tr align=left valign=top>\r\n");
      out.write("\t    <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("\t    <td width=\"220\" align=left valign=top height=100%><iframe id=\"left\" name=\"left\" height=100% width=100% bgcolor=#f8f9fb src=\"showleft.jsp?type=");
      out.print(type );
      out.write("\" frameborder=\"0\" scrolling=\"no\" width=220></iframe></td>\r\n");
      out.write("\t    <td width=\"5\" background=\"images/b-1.jpg\" rowspan=\"100\" align=left height=100%></td>\r\n");
      out.write("\t\t<td width=\"556\" height=100% valign=top align=right>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("  <table width=\"540\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"406\" height=\"40\" colspan=\"2\"><img src=\"images/topic-znly.jpg\" width=\"406\" height=\"22\"></td>\r\n");
      out.write("    <td width=37><img src=\"images/listmain-w1.jpg\" align=right border=\"0\"></td>\r\n");
      out.write("    <td height=\"30\" style=\"font-size:15px\" background=\"images/msg-back.jpg\"><a href=\"message/MsgNew.jsp?id=");
      out.print(id );
      out.write("\" class=message>我要留言</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table width=\"540\"border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\" class=border>\r\n");
      out.write(" ");

	if(list.size()>0){
		for(int i=0;i<list.size();i++){		
			Message message = (Message)list.get(i);			
 
      out.write("\r\n");
      out.write("   <tr>\r\n");
      out.write("    <td height=\"18\" bgcolor=\"#dedede\" class=\"infotd\">");
      out.print(i+1);
      out.write("楼&nbsp;&nbsp;问：");
      out.print(message.getPart());
      out.write("&nbsp;&nbsp;</td>\r\n");
      out.write("    <td align=\"right\" bgcolor=\"#dedede\" class=\"infotd\">");
      out.print(message.getName()==null?"--":message.getName());
      out.write("&nbsp;（");
      out.print(message.getIp()==null?"--":message.getIp());
      out.write("）于&nbsp;");
      out.print(message.getGivetime()==null? "--":message.getGivetime().toString());
      out.write("&nbsp;&nbsp;</td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("    <td class=\"content\" colspan=2>");
      out.print(message.getContent()==null?"--":message.getContent());
      out.write("</td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("    <td class=\"reply\"><b>回复:</b>");
      out.print(message.getReply()==null?"--":message.getReply());
      out.write("</td>\r\n");
      out.write("    <td class=\"replytime\" align=right>回复时间:");
      out.print(message.getReplytime()==null?"--":message.getReplytime());
      out.write("</td>\r\n");
      out.write("   </tr>\r\n");

		}
	}
 
      out.write("\r\n");
      out.write(" <tr><td colspan=3><form name=\"pageForm\" action=\"\" method=\"post\">\r\n");
      out.write("\t    <table align=\"center\" width=530>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t");
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
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("   </form></td></tr>\r\n");
      out.write(" </table>  \r\n");
      out.write("\r\n");
      out.write(" <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t \r\n");
      out.write("</table>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/foot.jsp", out, true);
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
