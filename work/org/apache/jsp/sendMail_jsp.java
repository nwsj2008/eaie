package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.news.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.system.*;

public final class sendMail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/head.jsp");
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("<title>书记信箱</title>\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".tdline {\r\n");
      out.write("\tborder-bottom-width: 1px;\r\n");
      out.write("\tborder-bottom-style: dashed;\r\n");
      out.write("\tborder-bottom-color: #ffffff;\r\n");
      out.write("\tpadding-top: 10px;\r\n");
      out.write("\tfont-size: 14px;\r\n");
      out.write("\tline-height: 1.6;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<script language=\"javascript\">\r\n");
      out.write("\t\tfunction otherEmail(){\r\n");
      out.write("\t\t    document.email.from.value = \"\";\r\n");
      out.write("\t\t    document.email.pw.value = \"\";\r\n");
      out.write("\t\t    document.email.pname.value = \"\";\r\n");
      out.write("\t\t    document.email.from.disabled = false;\r\n");
      out.write("\t\t    document.email.pw.disabled = false;\r\n");
      out.write("\t\t    document.email.pname.disabled = false;\r\n");
      out.write("\t\t    document.getElementById(\"other\").disabled = true;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction init() {\r\n");
      out.write("\t\t    document.getElementById(\"from\").disabled = true;\r\n");
      out.write("\t\t    document.getElementById(\"pw\").disabled = true;\r\n");
      out.write("\t\t    document.getElementById(\"pname\").disabled = false;\r\n");
      out.write("\t\t    document.getElementById(\"tablecc\").style.display=\"none\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction addCC(){\r\n");
      out.write("\t\t    document.getElementById(\"add\").disabled = true;\r\n");
      out.write("\t\t    document.getElementById(\"tablecc\").style.display=\"\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction Blank() {\r\n");
      out.write("\t\t    document.getElementById(\"text\").value = \"\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t function isNull(id,paraName)\r\n");
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
      out.write("\t\t\tif(!isNull(\"pname\",\"姓名\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"subject\",\"标题\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\t\r\n");
      out.write("\t\t\tif(!isNull(\"text\",\"内容\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\t\t\t\r\n");
      out.write("\t\t}\t\t\r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
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
      out.write("                                \t\t\t<TD><A width=\"81\" class=mainlevel-trans  id=menu99 href=\"/party/\" target=_blank>党建工作</A></TD>\r\n");
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
      out.write("<table width=780 height=\"100%\" border=0 cellpadding=0 cellspacing=0 align=\"center\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t    <td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("\t\t<td width=780 height=100% valigh=top align=left>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<table width=\"762\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_bg\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"40\" align=\"center\" class=\"news_title\">书记信箱</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"460\" align=\"center\" valign=\"top\">\r\n");
      out.write("<table width=\"80%\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("   <td align=\"center\" class=\"tdline\"><font color=\"#0000FF\">给书记留言（如需回复请您在内容中注明联系方式）</font></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td class=\"tdline\">\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write(" <form name=\"email\" method=\"post\" action=\"sendEmail.jsp\">\r\n");
      out.write("     <table align=\"center\" width=\"80%\" border=\"0\" bgcolor=\"#FFFFFF\" cellspacing=\"1\" cellpadding=\"1\">\r\n");
      out.write("     \r\n");
      out.write("         <tr>\r\n");
      out.write("             <td></td>\r\n");
      out.write("             <td><input type=\"text\" name=\"to\" size=\"30\" id=\"to\" style=\"display: none\" >&nbsp;<input name=\"add\" id=\"add\" type=\"checkbox\" value=\"1\" onPropertyChange=\"addCC()\"style=\"display: none\">\r\n");
      out.write("             <table border=\"0\" id=\"tablecc\">\r\n");
      out.write("                 <tr>\r\n");
      out.write("                    <td><input type=\"text\" name=\"cc\" size=\"30\" id=\"cc\" style=\"display: none\"></td>           \r\n");
      out.write("                 </tr>\r\n");
      out.write("                 <tr> \r\n");
      out.write("                    <td><input type=\"text\" name=\"bcc\" size=\"30\" id=\"bcc\" style=\"display: none\"></td>           \r\n");
      out.write("                 </tr>\r\n");
      out.write("             </table>\r\n");
      out.write("             </td>\r\n");
      out.write("         </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("             <td>姓&nbsp;&nbsp;名：</td>\r\n");
      out.write("                <td><input type=\"text\" name=\"pname\"  size=\"20\" id=\"pname\">&nbsp;<font color=\"red\">*</font></td>\r\n");
      out.write("             <td>\r\n");
      out.write("             <table>\r\n");
      out.write("                 <tr>\r\n");
      out.write("                    <td><input type=\"text\" name=\"from\" value=\"dzxyyjs@bjtu.edu.cn\" id=\"from\" style=\"display: none\"></td>\r\n");
      out.write("                    <!-- <td align=\"right\" width=\"20%\">密 码</td> -->\r\n");
      out.write("                    <td><input type=\"password\" name=\"pw\" value=\"dzxyyjs\" id=\"pw\" style=\"display: none\"></td>\r\n");
      out.write("                 </tr>\r\n");
      out.write("                 <tr>\r\n");
      out.write("                 \r\n");
      out.write("                   \r\n");
      out.write("                    <td id=\"othertd\"><input name=\"other\" type=\"checkbox\" value=\"0\"  onPropertyChange=\"otherEmail()\" id=\"other\"style=\"display: none\"></td>\r\n");
      out.write("                 </tr>\r\n");
      out.write("             </table>\r\n");
      out.write("             </td>\r\n");
      out.write("         </tr>\r\n");
      out.write("         <tr>\r\n");
      out.write("             <td>标&nbsp;&nbsp;题：</td>\r\n");
      out.write("             <td><input type=\"text\" name=\"subject\" size=\"40\">&nbsp;<font color=\"red\">*</font></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("         <tr>\r\n");
      out.write("             <td>内&nbsp;&nbsp;容：</td>\r\n");
      out.write("             <td><textarea name=\"text\" rows=\"10\" cols=\"60\" id=\"text\">&nbsp;</textarea></td>                  \r\n");
      out.write("         </tr>\r\n");
      out.write("       \r\n");
      out.write("         <tr>\r\n");
      out.write("             <td align=center colspan=\"2\"><input type=\"submit\" value=\" 提 交 \" name=\"send\" onclick=\"return formCheck();\">\r\n");
      out.write("             <input type=\"button\" value=\" 重 写 \" name=\"buttonReset\" onClick=\"Blank()\"></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("     </table>\r\n");
      out.write("     </form>\r\n");
      out.write("\t</td>\r\n");
      out.write("  </tr>\r\n");
      out.write(" </table>\r\n");
      out.write("</table>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td width=\"1\" bgcolor=\"#000000\" rowspan=\"100\"><img src=\"images/spacer.gif\" width=\"1\" height=\"1\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "foot.jsp", out, true);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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