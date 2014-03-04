package org.apache.jsp.sbldstudent.application;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.sbld.*;
import com.eaie.tools.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.common.*;

public final class ApplicationAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>电子信息工程学院硕博连读招生系统</title>\r\n");
      out.write("\t\t<LINK REL=StyleSheet HREF=\"../sbldstyle.css\" TYPE=\"text/css\"\r\n");
      out.write("\t\t\tMEDIA=screen>\r\n");
      out.write("\t\t<script language=javascript> \r\n");
      out.write("\t\t   function isNull(id,paraName)\r\n");
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
      out.write("\t\t\tif(!isNull(\"name\",\"姓名\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"number\",\"学号\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\t\t\t\r\n");
      out.write("\t\t\tif(!isNull(\"master\",\"硕士专业\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"doctor\",\"拟报博士专业\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"masterTeacher\",\"原硕导\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"doctorTeacher\",\"拟报博导\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!isNull(\"score\",\"入学成绩\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\tif(!isNull(\"cjpm\",\"学位课加权成绩排名\")){\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\t\t\r\n");
      out.write("\t\t}\t\t\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t");

		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Sbld sbldstudent where sbldstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Sbld sbldstudent = (Sbld) list.get(0);
	
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<div id=\"page\">\r\n");
      out.write("\t\t\t<div id=\"header\">\r\n");
      out.write("\t\t\t\t<h1 align=\"center\">\r\n");
      out.write("\t\t\t\t\t电子信息工程学院硕博连读招生系统\r\n");
      out.write("\t\t\t\t</h1>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div id=\"mainarea\">\r\n");
      out.write("\t\t\t\t<div id=\"sidebar\">\r\n");
      out.write("\t\t\t\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"active\" href=\"../index.jsp\">首页</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../newslist.jsp\">查看通知</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"ApplicationAdd.jsp\">提交申请</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"ApplicationInfo.jsp\">查看申请</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"ApplicationEdit.jsp\">修改申请</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../sbldLogout.jsp\">退出系统</a>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div id=\"contentarea\">\r\n");
      out.write("\t\t\t\t\t<form name=\"form1\" method=\"post\" action=\"ApplicationUpdate.jsp\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<h2>\r\n");
      out.write("\t\t\t\t\t\t\t提交申请\r\n");
      out.write("\t\t\t\t\t\t</h2>\r\n");
      out.write("\t\t\t\t\t\t<table align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"30\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"name\" type=\"text\" id=\"name\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"number\" type=\"text\" id=\"number\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"radio\" checked=\"checked\" name=\"sex\" value=\"male\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t男性 &nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"sex\" value=\"female\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t女性\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t硕士专业：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"master\" type=\"text\" id=\"master\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t拟报博士专业：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"doctor\" type=\"text\" id=\"doctor\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t原硕导：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"masterTeacher\" type=\"text\" id=\"masterTeacher\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsize=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t拟报博导：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"doctorTeacher\" type=\"text\" id=\"doctorTeacher\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsize=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t入学成绩：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"score\" type=\"text\" id=\"score\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t学位课加权成绩排名：\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"cjpm\" type=\"text\" id=\"cjpm\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"60\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t备注： (限制在100字内)\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<textarea name=\"beizhu\" rows=\"5\" cols=\"30\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tonKeyDown='if (this.value.length>=100){event.returnValue=false}'></textarea>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t<BR>\r\n");
      out.write("\t\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"提&nbsp;&nbsp;交\"\r\n");
      out.write("\t\t\t\t\t\t\t\tonclick=\"return formCheck();\">\r\n");
      out.write("\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t<input name=\"Submit2\" type=\"reset\" class=\"submitinput\"\r\n");
      out.write("\t\t\t\t\t\t\t\tvalue=\"重&nbsp;&nbsp;置\">\r\n");
      out.write("\t\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div id=\"footer\">\r\n");
      out.write("\t\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</body>\r\n");
      out.write("\t");

		}
	
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
