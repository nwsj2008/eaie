package org.apache.jsp.bszsxtstudent.bsusers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.admin.bsusers.*;
import com.eaie.tools.*;

public final class BsuserAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<title>用户注册</title>\r\n");
      out.write("\t\t<style type=\"text/css\">\r\n");
      out.write("\t\t<!--\r\n");
      out.write("\t\tbody,td,th{\r\n");
      out.write("\t\t\tmargin-top: 50px;\r\n");
      out.write("\t\t\tfont-size: 12px;\r\n");
      out.write("\t\t\tcolor: #000000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.textinput {\r\n");
      out.write("\t\t\tfont-size: 12px;\r\n");
      out.write("\t\t\theight: 20px;\r\n");
      out.write("\t\t\twidth: 150px;\r\n");
      out.write("\t\t\tpadding-top: 1px;\r\n");
      out.write("\t\t\tpadding-right: 4px;\r\n");
      out.write("\t\t\tpadding-bottom: 1px;\r\n");
      out.write("\t\t\tpadding-left: 4px;\r\n");
      out.write("\t\t\tborder: 1px dashed #18669a;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.submitinput {\r\n");
      out.write("\t\t\tfont-size: 12px;\r\n");
      out.write("\t\t\tcolor: #000000;\r\n");
      out.write("\t\t\theight: 20px;\r\n");
      out.write("\t\t\twidth: 60px;\r\n");
      out.write("\t\t\tpadding-top: 2px;\r\n");
      out.write("\t\t\tborder: 1px solid #E1F4EE;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t-->\r\n");
      out.write("\t\t</style>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\">   \t\r\n");
      out.write("\t\tfunction SetFocus()\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\tif (document.Login.bsusername.evalue==\"\")\r\n");
      out.write("\t\t\t\tdocument.Login.bsusername.focus();\r\n");
      out.write("\t\t\telse\r\n");
      out.write("\t\t\t\tdocument.Login.bsusername.select();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tfunction CheckForm()\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\tif(document.Login.bsusername.value==\"\")\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\t\talert(\"请输入用户名！\");\r\n");
      out.write("\t\t\t\t\tdocument.Login.bsusername.focus();\r\n");
      out.write("\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(document.Login.bspassword.value == \"\")\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\t\talert(\"请输入密码！\");\r\n");
      out.write("\t\t\t\t\tdocument.Login.bspassword.focus();\r\n");
      out.write("\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction CheckBrowser() \r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t  var app=navigator.appName;\r\n");
      out.write("\t\t\t  var verStr=navigator.appVersion;\r\n");
      out.write("\t\t\t  if (app.indexOf('Netscape') != -1)\r\n");
      out.write("\t\t\t  {\r\n");
      out.write("\t\t\t    alert(\"友情提示：\\n    你使用的是Netscape或FireFox浏览器，可能会导致无法使用后台的部分功能。建议您使用 IE6.0 或以上版本。\");\r\n");
      out.write("\t\t\t  } \r\n");
      out.write("\t\t\t  else if (app.indexOf('Microsoft') != -1)\r\n");
      out.write("\t\t\t  {\r\n");
      out.write("\t\t\t    if (verStr.indexOf(\"MSIE 3.0\")!=-1 || verStr.indexOf(\"MSIE 4.0\") != -1 || verStr.indexOf(\"MSIE 5.0\") != -1 || verStr.indexOf(\"MSIE 5.1\") != -1)\r\n");
      out.write("\t\t\t      alert(\"友情提示：\\n    您的浏览器版本太低，可能会导致无法使用后台的部分功能。建议您使用 IE6.0 或以上版本。\");\r\n");
      out.write("\t\t\t  }\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\tfunction CheckForm(){\t\r\n");
      out.write("\t\t     \r\n");
      out.write("\t\t\t if(!isNull(\"bsusername\",\"用户名\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\t\t\t\r\n");
      out.write("\t\t\t if(!isNull(\"bspassword\",\"密码\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(!isNull(\"bspassword2\",\"重复密码\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(!isEqual(\"bspassword\",\"bspassword2\",\"两次输入密码不一致！\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\t\r\n");
      out.write("\t\t\t var num; \r\n");
      out.write("\t\t\t var flag = false;    \r\n");
      out.write("   \t\t\t num=document.userform.elements.length\r\n");
      out.write("\t\t\t for(var i=0;i<num;i++){     \r\n");
      out.write("\t\t\t\tif(document.userform.elements[i].type==\"checkbox\"&&document.userform.elements[i].name!=\"isadmin\"){     \r\n");
      out.write("\t\t\t\t   if(document.userform.elements[i].checked ==true){\r\n");
      out.write("\t\t\t\t   \t flag = true;\r\n");
      out.write("\t\t\t\t   }\r\n");
      out.write("\t\t\t\t}  \t\t\r\n");
      out.write("\t\t\t }\t\t\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\t</script>\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("\t\t<form name=\"userform\" method=\"post\" action=\"bszsxtstudent/bsusers/BsuserSave.jsp\"\r\n");
      out.write("\t\t\tonSubmit=\"return CheckForm();\">\r\n");
      out.write("\t\t\t<table width=\"331\" border=\"1\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t<td width=\"331\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr  align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td  align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table width=\"100%\" border=\"1\" cellspacing=\"4\" cellpadding=\"4\"  align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<b>用户登录</b>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t用户名：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"bsusername\" type=\"text\" class=\"textinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tid=\"bsusername\" onFocus=\"this.select(); \" maxlength=\"12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t初始密码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"bspassword\" type=\"password\" class=\"textinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tid=\"bspassword\" onFocus=\"this.select(); \" maxlength=\"15\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t确认密码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"bspassword2\" type=\"password\" class=\"textinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tid=\"bspassword2\" onFocus=\"this.select(); \" maxlength=\"15\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"Submit\" type=\"submit\" class=\"submitinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOver=\"this.style.backgroundColor='#ffffff'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOut=\"this.style.backgroundColor='#E1F4EE'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tvalue=\"注&nbsp;册\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"reset\" name=\"back\"  class=\"submitinput\" value=\"重&nbsp;置\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t    onMouseOver=\"this.style.backgroundColor='#ffffff'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOut=\"this.style.backgroundColor='#E1F4EE'\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t<script language=\"JavaScript\" type=\"text/JavaScript\">\r\n");
      out.write("\t\t\tCheckBrowser();\r\n");
      out.write("\t\t\tSetFocus(); \r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t<table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"4\"\r\n");
      out.write("\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</body>\r\n");
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
