package org.apache.jsp.gcteacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.tools.*;
import com.eaie.admin.gcteacher.*;
import com.eaie.admin.gcteacher.UserManage;

public final class ModifyPwd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=gb2312");
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>电子信息工程学院工程硕士选课教师登陆系统</title>\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"gctchstyle.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("\t\t\t<SCRIPT LANGUAGE=\"JavaScript\">\r\n");
      out.write("\t\t\t\tfunction formCheck()\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\t\tif (document.form1.pwd.value == \"\")\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\talert(\"请输入旧密码!\");\r\n");
      out.write("\t\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\tif (document.form1.pwd1.value == \"\")\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\talert(\"请输入新密码!\");\r\n");
      out.write("\t\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\tif (document.form1.pwd2.value == \"\")\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\talert(\"请再输一遍!\");\r\n");
      out.write("\t\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t\t} \r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\tif (document.form1.pwd1.value != document.form1.pwd2.value)\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\talert(\"两次输入密码不一致，请重新输入!\");\r\n");
      out.write("\t\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t\t} \r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t</SCRIPT>\r\n");
      out.write("</head>\r\n");

	Gcteacher user = (Gcteacher)session.getAttribute("GCTEACHER");
	String soldPassword = request.getParameter("pwd");
	String snewPassword = request.getParameter("pwd1");
	if(soldPassword!=null&&snewPassword!=null){
		
	   boolean isOK = UserManage.changePassword(user,soldPassword,snewPassword);
	   if(isOK){	
	      	
	   		out.println(JavaScript.alert("密码修改成功！"));
	   		
	   }else{
	   
	   		out.println(JavaScript.alert("密码修改失败！"));
	   }
		
	}
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t\t<h1 align=\"center\">电子信息工程学院工程硕士选课教师登陆系统</h1>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t<div id=\"mainarea\">\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t<a  href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"ModifyPwd.jsp\" >修改登陆密码</a>\r\n");
      out.write("\t\t<a href=\"kcxx.jsp\">查看课程信息</a>\r\n");
      out.write("\t\t<a href=\"score.jsp\">编辑学生成绩</a>\r\n");
      out.write("\t\t<a href=\"lianxi.jsp\">联系我们</a>\r\n");
      out.write("\t\t<a href=\"logout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t<form name=\"form1\" method=\"post\" action=\"\" onSubmit=\"return formCheck()\">\r\n");
      out.write("  <table width=\"350\" border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("    <tr align=\"center\">\r\n");
      out.write("      <td colspan=\"2\" class=\"titlebg\">&nbsp;</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    \r\n");
      out.write("    <tr bgcolor=\"#FFFFFF\" class=\"tdbg\">\r\n");
      out.write("      <td align=\"right\">用&nbsp;户&nbsp;名：</td>\r\n");
      out.write("      <td>");
      out.print(user.getName()  );
      out.write("</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr bgcolor=\"#FFFFFF\" class=\"tdbg\">\r\n");
      out.write("      <td align=\"right\">旧&nbsp;密&nbsp;码：</td>\r\n");
      out.write("      <td><input name=\"pwd\" type=\"password\" id=\"pwd\" size=\"20\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr bgcolor=\"#FFFFFF\" class=\"tdbg\">\r\n");
      out.write("      <td align=\"right\">新&nbsp;密&nbsp;码：</td>\r\n");
      out.write("      <td><input name=\"pwd1\" type=\"password\" id=\"pwd1\" size=\"20\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr bgcolor=\"#FFFFFF\" class=\"tdbg\">\r\n");
      out.write("      <td align=\"right\"> 确认密码： </td>\r\n");
      out.write("      <td><input name=\"pwd2\" type=\"password\" id=\"pwd2\" size=\"20\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("    <td colspan=\"2\"><input type=\"submit\" name=\"Submit\" value=\"确&nbsp;定\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"reset\" name=\"Submit2\" value=\"取&nbsp;消\"></td></tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
