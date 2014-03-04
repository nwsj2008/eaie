package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import java.util.Date;
import com.eaie.admin.lecture.*;

public final class left_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");


String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("<title>北京交通大学电子信息工程学院</title>\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("</style>\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("function MM_jumpMenu(targ,selObj,restore)\r\n");
      out.write("{ //v3.0\r\n");
      out.write("  eval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");\r\n");
      out.write("  if (restore) selObj.selectedIndex=0;\r\n");
      out.write("}\r\n");
      out.write("if(document.images) {\r\n");
      out.write("\r\n");
      out.write("  image01 = new Image;\r\n");
      out.write("  image02 = new Image;\r\n");
      out.write("  image11 = new Image;\r\n");
      out.write("  image12 = new Image;\r\n");
      out.write("  image21 = new Image;\r\n");
      out.write("  image22 = new Image;\r\n");
      out.write("  image31 = new Image;\r\n");
      out.write("  image32 = new Image;\r\n");
      out.write("  image41 = new Image;\r\n");
      out.write("  image42 = new Image;\r\n");
      out.write("  image51 = new Image;\r\n");
      out.write("  image52 = new Image;\r\n");
      out.write("\r\n");
      out.write("// source images\r\n");
      out.write("\r\n");
      out.write("  image01.src = \"images/b21.jpg\";\r\n");
      out.write("  image02.src = \"images/b22.jpg\";\r\n");
      out.write("  image11.src = \"images/b31.jpg\";\r\n");
      out.write("  image12.src = \"images/b32.jpg\";\r\n");
      out.write("  image21.src = \"images/b41.jpg\";\r\n");
      out.write("  image22.src = \"images/b42.jpg\";\r\n");
      out.write("  image31.src = \"images/b51.jpg\";\r\n");
      out.write("  image32.src = \"images/b52.jpg\";\r\n");
      out.write("  image41.src = \"images/b61.jpg\";\r\n");
      out.write("  image42.src = \"images/b62.jpg\";\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// MouseOver Function\r\n");
      out.write("\r\n");
      out.write("function swapOn(imgLocation) {\r\n");
      out.write("  if(document.images) {\r\n");
      out.write("    document.images[imgLocation].src = eval(imgLocation + \"2.src\");\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// MouseOut Function\r\n");
      out.write("\r\n");
      out.write("function swapOff(imgLocation) {\r\n");
      out.write("  if(document.images) {\r\n");
      out.write("    document.images[imgLocation].src = eval(imgLocation + \"1.src\");\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// end hiding script -->\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");

        LectureList lectureList = new LectureList();
        String date=LectureList.getDate();
       
        //System.out.print(nowdate);
		List list = lectureList.getList(date);
		Iterator it = list.iterator();

		
		

      out.write("\r\n");
      out.write("  <body topmargin=\"0\" rightmargin=\"0\" leftmargin=\"0\"> \r\n");
      out.write("  <table height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\" valign=\"top\"> \r\n");
      out.write(" <br> <tr width=240 height=58>\r\n");
      out.write("<Td valign=\"top\"><img src=\"images/sear_pic-.jpg\" ></Td>\r\n");
      out.write("<td background=\"images/edit_bg.jpg\" width=\"211\" style=\"padding-left:5px \">\r\n");
      out.write("<form action=\"search/Search.jsp\" method=\"post\" name=\"search\" target=\"_blank\" style=\"margin: 0pt; padding: 0pt;\"> \r\n");
      out.write("<font color=\"#ffffff\"><b>Search</b></font><input type=\"text\" name=\"keyWord\" class=\"searchinput\" id=\"keyWord\" maxlength=\"15\" style=\"width: 105px; height: 20px;\">\r\n");
      out.write("<input type=\"image\" src=\"images/but_sear.jpg\" border=0 align=\"absmiddle\" style=\"width: 19px; height: 19px;\">\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr height=8 width=242><td colspan=2 valign=\"bottom\" background=\"images/left-top.jpg\" height=8 width=242></td></tr>\r\n");
      out.write("\r\n");
      out.write("<tr height=60><Td colspan=2 valign=\"top\" background=\"images/menu_bg.jpg\" bgcolor=\"#FFFFFF\" style=\"background-position:bottom;background-repeat:repeat-x;padding-bottom:15px\"><img src=\"images/corner_1.jpg\"><br>\r\n");
      out.write("  <div style=\"padding-left:20px\"><img src=\"images/news_subs-l.jpg\" width=\"114\" height=\"19\">\r\n");
      out.write("  <table>\r\n");
      out.write("\t\t<tr> \r\n");
      out.write("\t\t\t<td valign=\"top\" background=\"images/left_4.gif\" colspan=2>\r\n");
      out.write("\t\t<br><table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" valign=top>\r\n");
      out.write("\t\t<tr><a href=\"listwithleft.jsp\" onMouseOver=\"swapOn('image0');\" onMouseOut=\"swapOff('image0');\" target=\"_parent\"><img src=\"images/b21.jpg\" name=\"image0\" border=\"0\" alt=\"\"></a></tr>\r\n");
      out.write("\t\t<tr><a href=\"vote/VoteList.jsp?type=7\" onMouseOver=\"swapOn('image1');\" onMouseOut=\"swapOff('image1');\" target=\"_parent\"><img src=\"images/b31.jpg\" name=\"image1\" border=\"0\" alt=\"\"></a></tr>\r\n");
      out.write("\t\t<tr><a href=\"http://eaie.njtu.edu.cn/yanjiu/enrolment/index.asp\" onMouseOver=\"swapOn('image2');\" onMouseOut=\"swapOff('image2');\" target=\"_blank\"><img src=\"images/b41.jpg\" name=\"image2\" border=\"0\" alt=\"\"></a></tr>\r\n");
      out.write("\t\t<tr><a href=\"LetterList.jsp\" onMouseOver=\"swapOn('image3');\" onMouseOut=\"swapOff('image3');\" target=\"_parent\"><img src=\"images/b51.jpg\" name=\"image3\" border=\"0\" alt=\"\"></a></tr>\r\n");
      out.write("\t\t<tr><a href=\"kf/index.jsp\" onMouseOver=\"swapOn('image4');\" onMouseOut=\"swapOff('image4');\" target=\"_parent\"><img src=\"images/b61.jpg\" name=\"image4\" border=\"0\" alt=\"\"></a></tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\r\n");
      out.write("\t\t</td>\t\t\t\t\r\n");
      out.write("\t</tr></table>\r\n");
      out.write("</div>\r\n");
      out.write("</Td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr height=100><Td colspan=2 valign=\"top\" background=\"images/menu_bg.jpg\" bgcolor=\"#FFFFFF\" style=\"background-position:bottom;background-repeat:repeat-x;padding-bottom:15px\"><img src=\"images/corner_1.jpg\"><br>\r\n");
      out.write("  <div style=\"padding-left:20px\"><img src=\"images/news_subs-c.jpg\" width=\"114\" height=\"19\">\r\n");
      out.write("  <table><br><tr> \r\n");
      out.write("\t<td valign=\"middle\" height=\"20\" align=\"left\" colspan=2> \r\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name=\"link\" width=150 class=\"xiaoneilink\" id=\"link\" onChange=\"MM_jumpMenu('parent',this,0)\"> \r\n");
      out.write("                             <option>校内常用链接</option> \r\n");
      out.write("                             <option value=\"http://www.njtu.edu.cn\">北京交通大学</option> \r\n");
      out.write("                             <option value=\"http://jgjwc.njtu.edu.cn:8080/bjtujwc/index.jsp\">教务处</option> \r\n");
      out.write("                             <option value=\"http://mail.bjtu.edu.cn/\">校内邮箱登录</option> \r\n");
      out.write("                             <option value=\"http://bbs.njtu.edu.cn/bbsnew/index.html\">红果园BBS</option> \r\n");
      out.write("                             <option value=\"http://bbs.bjtu.org/index.asp\">特思论坛</option> \r\n");
      out.write("                        </select> </td> \r\n");
      out.write("\t</tr></table>\r\n");
      out.write("</div>\r\n");
      out.write("</Td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr height=140><Td colspan=2 valign=\"top\" background=\"images/menu_bg.jpg\" bgcolor=\"#FFFFFF\" style=\"background-position:bottom;background-repeat:repeat-x;padding-bottom:15px\"><img src=\"images/corner_1.jpg\"><br>\r\n");
      out.write("  <div style=\"padding-left:20px\"><img src=\"images/news_subs-x.jpg\" width=\"114\" height=\"19\">\r\n");
      out.write("  <br> \r\n");
      out.write(" <table>\r\n");
      out.write(" <tr valign=\"top\"> \r\n");
      out.write("\t\t\t\t\t<td valign=\"top\" background=\"images/bg.jpg\" align=\"justify\" class=\"quicklink\" style=\"padding-left: 15px; padding-right: 20px;\" colspan=2> \r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("<marquee direction=\"up\" scrollamount=\"1\" scrolldelay=\"20\" onMouseOver=\"this.stop()\" onMouseOut=\"this.start()\"> \r\n");
      out.write("<table width=\"95%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\"> \r\n");
 
        while (it.hasNext()) { 
			Lecture lecture = (Lecture) it.next(); 

      out.write(" \r\n");
      out.write("  <tbody><tr> \r\n");
      out.write("    <td class=\"lectureline\"><a href=\"ShowLecture.jsp?id=");
      out.print(lecture.getId());
      out.write("\" target=\"_blank\" class=\"lecture\">");
      out.print(lecture.getSubject());
      out.write("</a><br> \r\n");
      out.write("\t报告人：");
      out.print(lecture.getLecturer());
      out.write("<br> \r\n");
      out.write("\t时&nbsp;&nbsp;间：");
      out.print(lecture.getGivetime());
      out.write("<br> \r\n");
      out.write("\t地&nbsp;&nbsp;点：");
      out.print(lecture.getGivesite());
      out.write("</td> \r\n");
      out.write("  </tr> \r\n");
 
} 

      out.write(" \r\n");
      out.write("</tbody></table> \r\n");
      out.write("</marquee> \r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t</td> \r\n");
      out.write("</tr> \r\n");
      out.write(" <tr height=\"12\" align=\"right\" width=240><td align=\"right\" width=240 colspan=2><a href=\"LectureList.jsp?type=4\" target=\"_blank\"><img height=\"12\" src=\"images/listmain-readmore.jpg\"></a><img src=\"images/arrow_1.gif\">&nbsp;&nbsp;</td>\r\n");
      out.write("</tr>  \r\n");
      out.write(" </table>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</Td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table> \r\n");
      out.write("   </body>\r\n");
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
