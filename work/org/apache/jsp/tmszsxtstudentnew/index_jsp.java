package org.apache.jsp.tmszsxtstudentnew;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import java.util.*;
import com.eaie.common.*;
import com.eaie.tmszsxt.*;
import com.eaie.tools.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t</head>\r\n");
      out.write("\t");

	if(session.getAttribute("TMUSER")==null){
		
		out.println(JavaScript.alertandRedirect("您尚未登录，请先登录！","tmlogin.jsp"));
	}else{
 
			Tmstudent tmuser = (Tmstudent)session.getAttribute("TMUSER");		

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
      out.write("\t\t\t\t\t\t\t<li id=\"active\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a id=\"current\" href=\"index.jsp\">&nbsp;&nbsp;首&nbsp;&nbsp;页&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"stmnews/StmnewsList.jsp\">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"stmstudent/StmstudentInfo.jsp\">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"tmusers/ModifyPwd.jsp\">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"index.jsp\">&nbsp;&nbsp;系统说明&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"tmlogout.jsp\">&nbsp;&nbsp;退出系统&nbsp;&nbsp;</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"lianxi.jsp\">&nbsp;&nbsp;联系我们&nbsp;&nbsp;</a>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"index.jsp\">系统说明</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"tmusers/ModifyPwd.jsp\">修改密码</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"tmlogout.jsp\">退出系统</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"stmnews/StmnewsList.jsp\">查看推免生通知</a>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"stmstudent/StmstudentAdd.jsp\">提交推免生申请</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"stmstudent/StmstudentInfo.jsp\">查看个人申请信息</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"stmstudent/StmstudentEdit.jsp\">修改个人申请信息</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"stmstudent/StmstudentKaohe.jsp\">查看考核通知</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"stmstudent/StmstudentLuq.jsp\">查看录取信息</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td background=\"images/leftbarbg.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/leftbarbtm.gif\" width=\"216\" height=\"12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"font-size: 12px;padding: 0 20px 10px 25px\" valign=\"top\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"titlebold2\">欢迎登录电子信息工程学院推免生招生系统！</span>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/hr_dotted.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</p>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"titlebold2\">用户信息</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</p>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t 当前登录：学生\r\n");
      out.write("\t\t\t\t\t\t\t\t <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t 用户名：");
      out.print(tmuser.getUsername());
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t 登陆地点：");
      out.print(request.getRemoteAddr() );
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t上次登陆时间：");
      out.print(session.getAttribute("TMLAST_LOGIN_TIME").toString() );
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("            登陆次数：");
      out.print(session.getAttribute("TMLOGIN_TIMES").toString() );
      out.write("\r\n");
      out.write("           \r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/hr_dotted.gif\">\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"titlebold2\">系统说明</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t1.为使页面正常显示，推荐您使用1024x768或者更高的屏幕分辨率。\r\n");
      out.write("\t\t\t\t\t\t\t\t <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t 2.每次登录时间限为30分钟,请节约时间。\r\n");
      out.write("\t\t\t\t\t\t\t\t <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t 3.请您保护好自己的登录密码，离开时记得退出系统。\r\n");
      out.write("\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t 4.登陆后请查看推免生通知，下载推免生表格，填写后打印出来交到研究生科。\r\n");
      out.write("\t\t\t\t\t\t\t\t <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t5.登陆后请及时提交推免生申请信息，并注意查看考核信息和录取信息。\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/hr_dotted.gif\">\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<img src=\"images/ftr_btm.gif\" width=\"765\" height=\"27\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\t\t\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td align=\"center\" class=\"txt_copyright\"\r\n");
      out.write("\t\t\t\t\tstyle=\"padding: 3px 10px 10px 10px;\">\r\n");
      out.write("\t\t\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t");

	}
 
      out.write("\r\n");
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
