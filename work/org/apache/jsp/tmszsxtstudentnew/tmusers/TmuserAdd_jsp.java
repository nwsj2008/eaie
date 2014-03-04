package org.apache.jsp.tmszsxtstudentnew.tmusers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.admin.tmusers.*;
import com.eaie.tmszsxt.*;
import com.eaie.tools.*;

public final class TmuserAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

List list;
	String cKeyWords, csearchpart;
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t");


  int id=1;
  List list=BasicDAO.queryByHql("From Tmopen tmopen where tmopen.id='"+id+"'");
							Tmopen tmopen = (Tmopen) list.get(0);
							if(tmopen.getOpenxt().equals("0")){
							try {
             out.println(JavaScript.alertandBack("现在不能注册！"));
  
	  } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();	
	}
				}
				
      out.write('\r');
      out.write('\n');

			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";

      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t\t<base href=\"");
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
      out.write("\t\tfunction CheckForm(){\t\r\n");
      out.write("\t\t     \r\n");
      out.write("\t\t\t if(!isNull(\"tmusername\",\"用户名\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\t\t\t\r\n");
      out.write("\t\t\t if(!isNull(\"pwd\",\"密码\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(!isNull(\"pwd2\",\"重复密码\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(!isEqual(\"pwd\",\"pwd2\",\"两次输入密码不一致！\"))\r\n");
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
      out.write("</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\r\n");
      out.write("\t<form name=\"userform\" method=\"post\" action=\"tmszsxtstudentnew/tmusers/TmuserSave.jsp\"\r\n");
      out.write("\t\t\tonSubmit=\"return CheckForm()\">\r\n");
      out.write("\t\t\t<table width=\"762\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"admin/images/adminlogin_06.gif\" width=\"762\" height=\"125\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"247\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"admin/images/adminlogin_02.gif\" width=\"247\" height=\"180\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"331\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"4\" cellpadding=\"4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<b>用户注册</b>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t用户名：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"tmusername\" type=\"text\" class=\"textinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tid=\"tmusername\" onFocus=\"this.select(); \" maxlength=\"12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t初始密码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"pwd\" type=\"password\" class=\"textinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tid=\"pwd\" onFocus=\"this.select(); \" maxlength=\"15\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t重复密码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"pwd2\" type=\"password\" class=\"textinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tid=\"pwd2\" onFocus=\"this.select(); \" maxlength=\"15\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"Submit\" type=\"submit\" class=\"submitinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOver=\"this.style.backgroundColor='#ffffff'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOut=\"this.style.backgroundColor='#E1F4EE'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tvalue=\"确&nbsp;定\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"Submit2\" type=\"reset\" class=\"submitinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOver=\"this.style.backgroundColor='#ffffff'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tonMouseOut=\"this.style.backgroundColor='#E1F4EE'\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tvalue=\"重&nbsp;置\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"184\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"admin/images/adminlogin_04.gif\" width=\"184\" height=\"180\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td height=\"52\" colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"admin/images/adminlogin_05.gif\" width=\"762\" height=\"52\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
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
      out.write("\t  \r\n");
      out.write("\t\t\t");

			
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("\t");
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
