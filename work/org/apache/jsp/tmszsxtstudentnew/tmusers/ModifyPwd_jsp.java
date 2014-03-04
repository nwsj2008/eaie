package org.apache.jsp.tmszsxtstudentnew.tmusers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.dbmanage.*;
import com.eaie.tools.*;
import com.eaie.admin.tmusers.*;

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
      response.setContentType("text/html;charset=gbk");
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

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>电子信息工程学院推免生招生系统</title>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\"\r\n");
      out.write("\t\t\tcontent=\"text/html; charset=iso-8859-1\">\r\n");
      out.write("\t\t<link href=\"main.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<SCRIPT LANGUAGE=\"JavaScript\">\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</head>\r\n");
      out.write("\t");

		Tmstudent tmuser = (Tmstudent) session.getAttribute("TMUSER");
		String tmoldPassword = request.getParameter("pwd");
		String tmnewPassword = request.getParameter("pwd1");
		if (tmoldPassword != null && tmnewPassword != null) {

			boolean isOK = TmuserManage.tmchangePassword(tmuser,
					tmoldPassword, tmnewPassword);
			if (isOK) {

				out.println(JavaScript.alert("密码修改成功！"));

			} else {

				out.println(JavaScript.alert("密码修改失败！"));
			}

		}
	
      out.write("\r\n");
      out.write("\t<body bgcolor=\"#E9F2F9\">\r\n");
      out.write("\t\t<table width=\"765\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height=\"76\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t<a href=\"index.html\" class=\"sitenametitle\">电子信息工程学院推免生招生系统</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height=\"44\">\r\n");
      out.write("\t\t\t\t\t<div id=\"navcontainer\">\r\n");
      out.write("\t\t\t\t\t\t<ul id=\"navlist\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- CSS Tabs -->\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a id=\"current\" href=\"../index.jsp\">&nbsp;&nbsp;首&nbsp;&nbsp;页&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"../stmnews/StmnewsList.jsp\">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"../stmstudent/StmstudentInfo.jsp\">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li id=\"active\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"ModifyPwd.jsp\">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"../index.jsp\">&nbsp;&nbsp;系统说明&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"../tmlogout.jsp\">&nbsp;&nbsp;退出系统&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"../lianxi.jsp\">&nbsp;&nbsp;联系我们&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<img src=\"images/img_banner.jpg\" width=\"765\" height=\"190\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td valign=\"top\" class=\"body_txt\" background=\"images/ctnt_bg.gif\"\r\n");
      out.write("\t\t\t\t\tstyle=\"padding: 10px 10px 3px 10px;\">\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<table width=\"216\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/leftbartop.gif\" width=\"216\" height=\"12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td height=\"30\" bgcolor=\"#09938d\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"leftcolumntitle, titlebold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"columntitle\">用户菜单</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td background=\"images/leftbarbg.gif\" valign=\"top\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding: 8px 0 8px 0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div id=\"menu2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<!-- CSS Tabs -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../index.jsp\">系统说明</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../tmusers/ModifyPwd.jsp\">修改密码</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../tmlogout.jsp\">退出系统</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td height=\"30\" bgcolor=\"#09938d\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"leftcolumntitle, titlebold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"columntitle\">推免生通知</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td background=\"images/leftbarbg.gif\" valign=\"top\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding: 8px 0 8px 0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div id=\"menu2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<!-- CSS Tabs -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../stmnews/StmnewsList.jsp\">查看推免生通知</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td height=\"30\" bgcolor=\"#09938d\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"leftcolumntitle, titlebold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"columntitle\">个人信息</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td background=\"images/leftbarbg.gif\" valign=\"top\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding: 8px 0 8px 0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div id=\"menu2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<!-- CSS Tabs -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../stmstudent/StmstudentAdd.jsp\">提交推免生申请</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../stmstudent/StmstudentInfo.jsp\">查看个人申请信息</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../stmstudent/StmstudentEdit.jsp\">修改个人申请信息</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../stmstudent/StmstudentKaohe.jsp\">查看考核通知</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"../stmstudent/StmstudentLuq.jsp\">查看录取信息</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td background=\"images/leftbarbg.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/leftbarbtm.gif\" width=\"216\" height=\"12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"font-size: 20px;padding: 0 20px 10px 25px\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"titlebold2\">修改用户密码</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<BR>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/hr_dotted.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<form name=\"form1\" method=\"post\" action=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tonSubmit=\"return formCheck()\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table width=\"350\" border=\"0\" align=\"center\" cellpadding=\"4\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#e9f2f9\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t用&nbsp;户&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><font size=0.01>");
      out.print(tmuser.getUsername());
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#e9f2f9\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t旧&nbsp;密&nbsp;码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"pwd\" type=\"password\" id=\"pwd\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#e9f2f9\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t新&nbsp;密&nbsp;码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<font size=0.01>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"pwd1\" type=\"password\" id=\"pwd1\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#e9f2f9\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t确认密码：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<font size=0.01>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"pwd2\" type=\"password\" id=\"pwd2\" size=\"20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确&nbsp;定\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"reset\" name=\"Submit2\" value=\"取&nbsp;消\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/hr_dotted.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td> \r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<img src=\"images/ftr_btm.gif\" width=\"765\" height=\"27\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td align=\"center\" class=\"txt_copyright\"\r\n");
      out.write("\t\t\t\t\tstyle=\"padding: 3px 10px 10px 10px;\">\r\n");
      out.write("\t\t\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</body>\r\n");
      out.write("\r\n");
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
