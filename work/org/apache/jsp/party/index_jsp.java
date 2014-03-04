package org.apache.jsp.party;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.tools.DateTimeFormat;
import com.eaie.tools.Image;
import com.eaie.dbmanage.Commiepub;
import com.eaie.dbmanage.Commie;
import com.eaie.party.PartyImp;
import java.util.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/party/Header.jsp");
    _jspx_dependants.add("/party/Footer.jsp");
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
      out.write("    <title>党建工作</title>\r\n");
      out.write("\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\" />\r\n");
      out.write("    <meta http-equiv=\"Content-Language\" content=\"GBK\" />\r\n");
      out.write("\t\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"party/css/css.css\">\r\n");
      out.write("\t\r\n");
      out.write("\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t<script language=\"javascript\">\r\n");
      out.write("    function formCheck()\r\n");
      out.write("    {   \r\n");
      out.write("        var num = document.getElementById(\"username\").value;\r\n");
      out.write("        if(!isNull(\"username\",\"学号\"))\r\n");
      out.write("            return false;\r\n");
      out.write("        if(!isNull(\"password\",\"密码\"))\r\n");
      out.write("            return false;\r\n");
      out.write("        if((num.length!=8) || (!validateNum(num)))\r\n");
      out.write("        {   \r\n");
      out.write("        \talert(\"请输入正确的学号,学好必须是8位数字\")\r\n");
      out.write("        \treturn false;\r\n");
      out.write("        }\r\n");
      out.write("        return true;\r\n");
      out.write("    }\r\n");
      out.write("    </script>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body background=\"party/images/bg2.jpg\">\r\n");
      out.write("  \r\n");
      out.write("  <map name=\"Map1\" id=\"Map1\">\r\n");
      out.write("  \t<area shape=\"rect\" coords=\"219,5,271,31\" href=\"party/ShowClass.jsp?smallclassid=73\">\r\n");
      out.write("  </map>\r\n");
      out.write("  <map name=\"Map2\" id=\"Map2\">\r\n");
      out.write("  \t<area shape=\"rect\" coords=\"223,5,272,30\" href=\"party/ShowClass.jsp?smallclassid=74\">\r\n");
      out.write("  </map>\r\n");
      out.write("  <map name=\"Map3\" id=\"Map3\">\r\n");
      out.write("  \t<area shape=\"rect\" coords=\"214,2,271,31\" href=\"party/ShowClass.jsp?smallclassid=75\">\r\n");
      out.write("  </map>\r\n");
      out.write("  <map name=\"Map4\" id=\"Map4\">\r\n");
      out.write("  \t<area shape=\"rect\" coords=\"220,4,271,32\" href=\"party/ShowClass.jsp?smallclassid=76\">\r\n");
      out.write("  </map>\r\n");
      out.write("  \r\n");
      out.write("  ");
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
      out.write("<table width=\"762\" height=\"110\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#990000\"><img src=\"party/images/party_01.gif\" width=\"762\" height=\"110\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("  <table width=\"762\" height=\"25\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" background=\"party/images/party_02.gif\">\r\n");
      out.write("  <tr align=\"center\">\r\n");
      out.write("    <td height=\"25\"><a href=\"party/index.jsp\" class=\"topmenu\">党建首页</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=71\" class=\"topmenu\">党建新闻</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/Branch.jsp\" class=\"topmenu\">机构设置</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=73\" class=\"topmenu\">支部风采</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=74\" class=\"topmenu\">理论知识</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=75\" class=\"topmenu\">党课学习</a></td>\r\n");
      out.write("    <td height=\"25\"><a href=\"party/ShowClass.jsp?smallclassid=76\" class=\"topmenu\">入党导航</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <table width=\"762\" height=\"726\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"220\" align=\"right\" valign=\"top\" bgcolor=\"#BC0000\">\r\n");
      out.write("    <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#BC0000\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"40\" align=\"center\" bgcolor=\"#FF0000\"><img src=\"party/images/party_03.gif\" width=\"220\" height=\"42\" alt=\"\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"229\" align=\"center\" valign=\"middle\" background=\"party/images/party_05.gif\" bgcolor=\"#990000\">\r\n");
      out.write("        <table width=\"88%\" height=\"96%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td valign=\"top\" class=\"pubname\">\r\n");
      out.write("            ");
 if(list_Pub.size()>0) { 
      out.write("\r\n");
      out.write("            <marquee direction=\"up\" height=\"200\" scrollamount=\"1\" scrolldelay=\"20\" onMouseOver=\"this.scrollDelay=500\" onMouseOut=\"this.scrollDelay=1\">\r\n");
      out.write("            ");
  for (int iPub=0; iPub<list_Pub.size(); iPub++){
            		pub = (Commiepub)list_Pub.get(iPub); 
            		out.print(pub.getBranch()+":<br>");
            		out.print(pub.getPublist()+"<br>");
            		out.print("<div align=right>"+DateTimeFormat.getDateString(pub.getPubtime())+"</div>");
            		out.print("<hr class=dotline color=#BF2000 size=2>");
   		        }
      out.write("\r\n");
      out.write("            </marquee>\r\n");
      out.write("            ");
} else
              	out.print("<br>");
      out.write("\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"27\" bgcolor=\"#990000\"><img src=\"party/images/party_12.gif\" width=\"220\" height=\"27\" alt=\"\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#BC0000\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"37\" height=\"122\" bgcolor=\"#FF9900\"><img src=\"party/images/party_14.gif\" width=\"37\" height=\"122\" alt=\"\"></td>\r\n");
      out.write("          <td background=\"party/images/party_15.gif\" bgcolor=\"#BC0000\">\r\n");
      out.write("          <form name =\"loginForm\" method=\"post\" action=\"servlet/CommieLogin\" style=\"padding:0;margin:0\" onSubmit=\"return formCheck()\">\r\n");
      out.write("          ");
if (commie==null) {
      out.write("\r\n");
      out.write("          <table width=\"100%\"  border=\"0\" cellspacing=\"4\" cellpadding=\"4\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"right\" class=\"login\">学&nbsp;号：</td>\r\n");
      out.write("              <td><input name=\"username\" type=\"text\" id=\"username\" onFocus=\"this.select(); \" size=\"20\" maxlength=\"10\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"right\" class=\"login\">密&nbsp;码：</td>\r\n");
      out.write("              <td><input name=\"password\" type=\"password\" id=\"password\" onFocus=\"this.select(); \" size=\"20\" maxlength=\"15\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr align=\"center\">\r\n");
      out.write("              <td colspan=\"2\"><input name=\"Submit\" type=\"submit\" class=\"button\" value=\"登&nbsp;录\">\r\n");
      out.write("                &nbsp;&nbsp;\r\n");
      out.write("                <input name=\"Submit2\" type=\"reset\" class=\"button\" value=\"清&nbsp;除\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("          ");
} else { 
      out.write("\r\n");
      out.write("          <table width=\"80%\"  border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"4\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td class=\"topic\">当前登录：");
      out.print(commie.getStuid());
      out.write("</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\" class=\"topic\"><a href=\"party/main/Commie.jsp\">进入</a>&nbsp;&nbsp;<a href=\"party/Logout.jsp\">退出</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("\t\t  ");
 } 
      out.write("\r\n");
      out.write("          </form>\r\n");
      out.write("          </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      <table width=\"100%\" height=\"306\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFCC\" style=\"margin-top:3\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"37\"><img src=\"party/images/party_21.gif\" width=\"37\" height=\"306\" alt=\"\"></td>\r\n");
      out.write("          <td background=\"party/images/party_22.gif\" width=\"100%\">\r\n");
      out.write("          <table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("          \t");
 for(int iFile=0; iFile<list_File.size(); iFile++) { 
      out.write("\r\n");
      out.write("          \t<tr class=\"topic\">\r\n");
      out.write("            \t<td class=\"line\">");
      out.print(Image.getImageFile(((Object[])list_File.get(iFile))[1].toString(),18));
      out.write("&nbsp;<a href=\"download.jsp?id=");
      out.print(((Object[])list_File.get(iFile))[0]);
      out.write("\" title=\"");
      out.print(((Object[])list_News.get(iFile))[1]);
      out.write("\" target=\"_blank\">");
      out.print(((Object[])list_File.get(iFile))[1]);
      out.write("</a>\r\n");
      out.write("            \t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t        ");
}
      out.write("\t\r\n");
      out.write("          </table>\r\n");
      out.write("          </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("    <td valign=\"top\"><table width=\"100%\" height=\"266\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"42\" bgcolor=\"#990000\"><img src=\"party/images/party_04.gif\" width=\"542\" height=\"42\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"11\" align=\"right\" bgcolor=\"#FFFFFF\"><img src=\"party/images/party_07.gif\" width=\"342\" height=\"11\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("\t\t  <tr>\r\n");
      out.write("        <td height=\"195\" valign=\"top\">\r\n");
      out.write("\t\t<table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("\t\t");
 for(int i=0; i<list_News.size(); i++) { 
      out.write("\r\n");
      out.write("\t\t\t<tr class=\"topic\">\r\n");
      out.write("            \t<td height=\"25\" class=\"line\" width=\"80%\"><img src=\"party/images/arrow.gif\" width=\"9\" height=\"9\">&nbsp;<a href=\"party/ShowArticle.jsp?id=");
      out.print(((Object[])list_News.get(i))[0]);
      out.write("\" title=\"");
      out.print(((Object[])list_News.get(i))[1]);
      out.write("\" target=\"_blank\">");
      out.print(((Object[])list_News.get(i))[1]);
      out.write("</a>\r\n");
      out.write("            \t");
if (String.valueOf(((Object[])list_News.get(i))[3]).equals("1")) {out.print("&nbsp;[图]");}
      out.write("</td>\r\n");
      out.write("            \t<td align=\"right\" class=\"line\" width=\"20%\">");
      out.print(DateTimeFormat.getDateString((Date)((Object[])list_News.get(i))[2]));
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t    ");
}
      out.write("\t\r\n");
      out.write("\t\t</table>    \r\n");
      out.write(" \t\t</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"18\" align=\"right\" bgcolor=\"#FFFFFF\"><a href=\"party/ShowClass.jsp?smallclassid=71\"><img src=\"party/images/more.gif\" width=\"57\" height=\"13\" border=\"0\"></a>&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\t  <table width=\"100%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#999999\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td bgcolor=\"#990000\"><img src=\"party/images/party_16.gif\" alt=\"\" width=\"271\" height=\"31\" border=\"0\" usemap=\"#Map1\"></td>\r\n");
      out.write("          <td bgcolor=\"#990000\"><img src=\"party/images/party_17.gif\" alt=\"\" width=\"271\" height=\"31\" border=\"0\" usemap=\"#Map2\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"199\" colspan=\"2\" valign=\"top\" background=\"party/images/party_18.gif\" bgcolor=\"#990000\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"50%\" align=\"center\" valign=\"top\">\r\n");
      out.write("\t\t\t\t<table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("\t\t\t\t");
 for(int i1=0; i1<list_ZHIBU.size(); i1++) { 
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("  \t\t\t\t\t<td height=\"5\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("                  <td height=\"25\" class=\"line\"><img src=\"party/images/arrow.gif\" width=\"9\" height=\"9\">&nbsp;<a href=\"party/ShowArticle?id=");
      out.print(((Object[])list_ZHIBU.get(i1))[0]);
      out.write("\" title=\"");
      out.print(((Object[])list_ZHIBU.get(i1))[1]);
      out.write("\" target=\"_blank\">");
      out.print(((Object[])list_ZHIBU.get(i1))[1]);
      out.write("</a>\r\n");
      out.write("                  ");
if (String.valueOf(((Object[])list_ZHIBU.get(i1))[2]).equals("1")) {out.print("&nbsp;[图]");}
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("                <tr><td>&nbsp;</td></tr>\r\n");
      out.write("  \t\t\t\t</table>\r\n");
      out.write("\t\t\t </td>\r\n");
      out.write("\t\t\t <td width=\"50%\" align=\"center\" valign=\"top\">\r\n");
      out.write("\t\t\t\t<table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("\t\t\t\t");
 for(int i2=0; i2<list_LILUN.size(); i2++) { 
      out.write("\r\n");
      out.write("\t\t\t\t<tr >\r\n");
      out.write("  \t\t\t\t\t<td height=\"5\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("                  <td height=\"25\" class=\"line\"><img src=\"party/images/arrow.gif\" width=\"9\" height=\"9\">&nbsp;<a href=\"party/ShowArticle.jsp?id=");
      out.print(((Object[])list_LILUN.get(i2))[0]);
      out.write("\" title=\"");
      out.print(((Object[])list_LILUN.get(i2))[1]);
      out.write("\" target=\"_blank\">");
      out.print(((Object[])list_LILUN.get(i2))[1]);
      out.write("</a>\r\n");
      out.write("                  ");
if (String.valueOf(((Object[])list_LILUN.get(i2))[2]).equals("1")) {out.print("&nbsp;[图]");}
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("                <tr><td>&nbsp;</td></tr>\r\n");
      out.write("\t\t\t \t</table>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("   </table>\r\n");
      out.write("   <table width=\"100%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#00FFFF\">\r\n");
      out.write("   <tr>\r\n");
      out.write("\t\t<td bgcolor=\"#990000\"><img src=\"party/images/party_23.gif\" alt=\"\" width=\"271\" height=\"31\" border=\"0\" usemap=\"#Map3\"></td>\r\n");
      out.write("   \t\t<td bgcolor=\"#990000\"><img src=\"party/images/party_24.gif\" alt=\"\" width=\"271\" height=\"31\" border=\"0\" usemap=\"#Map4\"></td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("   \t\t<td height=\"199\" colspan=\"2\" align=\"center\" valign=\"top\" background=\"party/images/party_25.gif\" bgcolor=\"#990000\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        \t<tr>\r\n");
      out.write("            \t<td width=\"50%\" align=\"center\" valign=\"top\">\r\n");
      out.write("\t\t\t\t<table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("\t\t\t\t");
 for(int i3=0; i3<list_XUEXI.size(); i3++) { 
      out.write("\r\n");
      out.write("\t\t\t\t<tr >\r\n");
      out.write("  \t\t\t\t\t<td height=\"5\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"topic\">\r\n");
      out.write("                \t<td height=\"25\" class=\"line\"><img src=\"party/images/arrow.gif\" width=\"9\" height=\"9\">&nbsp;<a href=\"party/ShowArticle.jsp?id=");
      out.print(((Object[])list_XUEXI.get(i3))[0]);
      out.write("\" title=\"");
      out.print(((Object[])list_XUEXI.get(i3))[1]);
      out.write("\" target=\"_blank\">");
      out.print(((Object[])list_XUEXI.get(i3))[1]);
      out.write("</a>\r\n");
      out.write("                    ");
if (String.valueOf(((Object[])list_XUEXI.get(i3))[2]).equals("1")) {out.print("&nbsp;[图]");}
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("                <tr><td>&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("              <td width=\"50%\" align=\"center\" valign=\"top\">\r\n");
      out.write("\t\t\t  <table width=\"95%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n");
      out.write("\t\t\t  ");
 for(int i4=0; i4<list_DAOHANG.size(); i4++) { 
      out.write("\r\n");
      out.write("\t\t\t  <tr >\r\n");
      out.write("  \t\t\t\t\t<td height=\"5\"></td>\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t\t  <tr class=\"topic\">\r\n");
      out.write("                    <td height=\"25\" class=\"line\"><img src=\"party/images/arrow.gif\" width=\"9\" height=\"9\">&nbsp;<a href=\"party/ShowArticle.jsp?id=");
      out.print(((Object[])list_DAOHANG.get(i4))[0]);
      out.write("\" title=\"");
      out.print(((Object[])list_DAOHANG.get(i4))[1]);
      out.write("\" target=\"_blank\">");
      out.print(((Object[])list_DAOHANG.get(i4))[1]);
      out.write("</a>\r\n");
      out.write("                    ");
if (String.valueOf(((Object[])list_DAOHANG.get(i4))[2]).equals("1")) {out.print("&nbsp;[图]");}
      out.write("</td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              ");
 } 
      out.write("\r\n");
      out.write("              <tr><td>&nbsp;</td></tr>\r\n");
      out.write("\t\t\t  </table>\r\n");
      out.write(" \t\t\t</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("         </table>\r\n");
      out.write("        </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("     </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write(" <table width=\"762\" height=\"70\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" bgcolor=\"#B10000\">\r\n");
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
