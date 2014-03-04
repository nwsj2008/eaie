package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.users.*;

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

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";

      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<title>左侧导航</title>\r\n");
      out.write("\t\t<style type=text/css>\r\n");
      out.write("\t\t\tbody  {\r\n");
      out.write("\t\t\t\tmargin:0px;\r\n");
      out.write("\t\t\t\tbackground-color: #0080C0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\ttable  { border:0px; }\r\n");
      out.write("\t\t\ttd  { font:normal 12px 宋体; }\r\n");
      out.write("\t\t\timg  { vertical-align:bottom; border:0px; }\r\n");
      out.write("\t\t\ta  { font:normal 12px 宋体; color:#000000; text-decoration:none; }\r\n");
      out.write("\t\t\ta:hover  { color:#cc0000;text-decoration:underline; }\r\n");
      out.write("\t\t\t.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#EAEAEA; }\r\n");
      out.write("\t\t\t.menu_title  {\r\n");
      out.write("\t\t\t\tpadding-left: 20px;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</style>\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\t\tfunction preloadImg(src)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\tvar img=new Image();\r\n");
      out.write("\t\t\t\timg.src=src\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tpreloadImg(\"image/dh_open.gif\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar displayBar=true;\r\n");
      out.write("\t\t\tfunction switchBar(obj)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\tif (displayBar)\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\t\tparent.frame.cols=\"0,*\";\r\n");
      out.write("\t\t\t\t\tdisplayBar=false;\r\n");
      out.write("\t\t\t\t\tobj.src=\"image/dh_open.gif\";\r\n");
      out.write("\t\t\t\t\tobj.title=\"打开管理菜单\";\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\telse{\r\n");
      out.write("\t\t\t\t\tparent.frame.cols=\"180,*\";\r\n");
      out.write("\t\t\t\t\tdisplayBar=true;\r\n");
      out.write("\t\t\t\t\tobj.src=\"image/dh_close.gif\";\r\n");
      out.write("\t\t\t\t\tobj.title=\"关闭管理菜单\";\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tfunction spread(thename,img)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\tif(document.all[thename].style.display==\"none\")\r\n");
      out.write("\t\t\t  {document.all[thename].style.display=\"\";\r\n");
      out.write("\t\t\t  img.src=\"admin/images/up.gif\"}\r\n");
      out.write("\t\t\telse\r\n");
      out.write("\t\t\t  {document.all[thename].style.display=\"none\";\r\n");
      out.write("\t\t\t  img.src=\"admin/images/down.gif\"}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
	
			Teacher user = (Teacher)session.getAttribute("USER");		

      out.write("\r\n");
      out.write("\t\t<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height=\"1\">&nbsp;\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"admin/main.jsp\" target=\"main\"><b>管理首页</b>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a> |\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"admin/logout.jsp\" target=\"_parent\"><b>退出</b>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td width=\"40\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img0\" onClick=\"javascript:spread('list0',this)\" style=\"cursor:hand\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t<div class=\"sec_menu\" style=\"width:158\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tcellspacing=\"0\" id=\"list0\" style=\"display:\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t用户名：\t");
      out.print(user.getTeacher() );
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t部&nbsp;&nbsp;门：");
      out.print(user.getPart() );
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"admin/users/ModifyPwd.jsp\" target=\"main\">修改登录密码</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height=\"1\">&nbsp;\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list1','img1');\">网站管理</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list1','img1');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img1\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t\t<div class=\"sec_menu\" style=\"width:158\">\r\n");
      out.write("\t\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list1\" style=\"display:\">\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/news/AddNews.jsp\" target=\"main\">添加文章</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/news/NewsList.jsp\" target=\"main\">文章管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write(" ");

 				if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)||UserManage.HasRight(4,user)||UserManage.HasRight(6,user)){
 
      out.write("\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/dailyfiles/Upload.jsp\" target=\"main\">上传常用资料</a> | <a href=\"admin/dailyfiles/FileList.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");

				}
				if(UserManage.HasRight(4,user)){

      out.write("\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/lecture/lecture_add.jsp\" target=\"main\">发布学术活动</a> | <a href=\"admin/lecture/lecture_list.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");

				}
				if(UserManage.HasRight(8,user)){

      out.write("\r\n");
      out.write(" \r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/vote/AddVote.jsp\" target=\"main\">发布网站调查</a> | <a href=\"admin/vote/VoteList.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("        \t\t</tr>\r\n");

				}
				if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/message/Msg_list.jsp\" target=\"main\">回复站内留言</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");

				}
				if(UserManage.HasRight(8,user)){

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/classroom/ClassroomList.jsp\" target=\"main\">批复活动申请</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");

				}
				if(user.getIsadmin()!=null&&user.getIsadmin()>0){

      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"20\"><a href=\"admin/users/UserList.jsp\" target=\"main\">用户管理</a> | <a href=\"admin/column/ClassList.jsp\" target=\"main\">栏目管理</a></td>\r\n");
      out.write("        </tr>\r\n");

				}
 
      out.write("\r\n");
      out.write("        <!--  \r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"20\"><a href=\"admin_sys.asp\" target=\"main\">系统管理</a> | <a href=\"count/main.asp\" target=\"main\">统计系统</a></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("       \t-->\r\n");
      out.write("      </table>\r\n");
      out.write("\t  </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list2','img2');\">信息库管理</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list2','img2');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img2\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list2\" style=\"display:\">\r\n");

				
			if(UserManage.HasRight(9,user)){

      out.write("\r\n");
      out.write("      \t\t<tr>\r\n");
      out.write("       \t \t\t<td height=\"20\"><a href=\"admin/leader/LeaderList.jsp\" target=\"main\">领导信息库</a></td>\r\n");
      out.write("     \t \t</tr>\r\n");

			}
			if(UserManage.HasRight(5,user)){

      out.write("\r\n");
      out.write("       \t\t<tr>\r\n");
      out.write("         \t\t<td height=\"20\"><a href=\"admin/professor/ProfessorList.jsp\" target=\"main\">教师信息库</a></td>\r\n");
      out.write("        \t</tr>\r\n");

 			}
 			if(UserManage.HasRight(0,user)){
 
      out.write("\r\n");
      out.write("     \t \t<tr>\r\n");
      out.write("        \t\t<td height=\"20\"><a href=\"admin/student/StudentList.jsp\" target=\"main\">学生信息库</a></td>\r\n");
      out.write("      \t\t</tr>\r\n");

			}
			if(UserManage.HasRight(0,user)||UserManage.HasRight(7,user)){
 
      out.write("\r\n");
      out.write("       \t\t<tr>\r\n");
      out.write("        \t\t<td height=\"20\"><a href=\"admin/commie/CommieList.jsp\" target=\"main\">学生党员信息库</a></td>\r\n");
      out.write("      \t\t</tr>\r\n");

			}
			if(UserManage.HasRight(0,user)){
 
      out.write("\r\n");
      out.write("      \t\t<tr>\r\n");
      out.write("        \t\t<td height=\"20\"><a href=\"admin/student/AidStudentList.jsp\" target=\"main\">经济困难学生信息库</a></td>\r\n");
      out.write("      \t\t</tr>\r\n");
      out.write("      \t\t<tr>\r\n");
      out.write("        \t\t<td height=\"20\"><a href=\"admin/course/Course_List.jsp\" target=\"main\">课程信息库</a></td>\r\n");
      out.write("      \t\t</tr>\r\n");
      out.write("      \t\t<tr>\r\n");
      out.write("        \t\t<td height=\"20\"><a href=\"admin/quality/ExpList.jsp\" target=\"main\">创新实验信息库</a></td>\r\n");
      out.write("      \t\t</tr>\r\n");

			}
 
      out.write("\r\n");
      out.write("\t  \t</table>\r\n");
      out.write("\t  </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");

 				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list8','img8');\">科学发展观学习</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list8','img8');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img8\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list8\" style=\"display:\">\t\t\t\r\n");
      out.write(" \r\n");
      out.write("                <tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/kxfzg/AddNews.jsp\" target=\"main\">添加文章</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/kxfzg/NewsList.jsp\" target=\"main\">文章管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/kxfzg/LookInfo.jsp\" target=\"main\">留言管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");

				}
				//if(UserManage.HasRight(8,user)){

      out.write("\r\n");
      out.write("\r\n");
      out.write("      </table>\r\n");
      out.write("\t  </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list3','img3');\">推免生招生系统</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list3','img3');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img3\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list3\" style=\"display:\">\t\t\t\r\n");
      out.write(" ");

 				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/tmszsxt/Open.jsp\" target=\"main\">开启</a>|<a href=\"admin/tmszsxt/Close.jsp\" target=\"main\">关闭推免生系统</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");

				}
			 if(UserManage.HasRight(3,user)){

      out.write("\r\n");
      out.write("                \r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/tmszsxt/tmnews/TmnewsAdd.jsp\" target=\"main\">发布推免生通知</a> | <a href=\"admin/tmszsxt/tmnews/TmnewsList.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/tmszsxt/tmstudent/TmstudentListSq.jsp\" target=\"main\">查看推免生申请结果</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");

				}
				if(UserManage.HasRight(3,user)){

      out.write("\r\n");
      out.write(" \r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/tmszsxt/tmstudent/TmstudentList.jsp\" target=\"main\">添加考核通知和录取信息</a>\r\n");
      out.write("        \t\t</tr>\r\n");

				}
				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/tmszsxt/tmstudent/TmstudentListDc.jsp\" target=\"main\">导出申请人列表</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"http://eaie.njtu.edu.cn/lwtj/adminlogin.aspx\" target=\"main\">硕士答辩论文提交系统</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");
      out.write("        \t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"http://eaie.njtu.edu.cn/bslwtj/adminlogin.aspx\" target=\"main\">博士答辩论文提交系统</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"http://eaie.bjtu.edu.cn/yanjiu/course/admin/admin_login.asp\" target=\"main\">研究生课程评价系统</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"http://eaie.bjtu.edu.cn/yanjiu/assistant/admin/admin_login.asp\" target=\"main\">研究生三助系统</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"http://eaie.bjtu.edu.cn/yanjiu/lwps/admin/admin_login.asp\" target=\"main\">研究生学位论文评审系统</a></td>\r\n");
      out.write("        \t\t\r\n");
      out.write("        \t\t</tr>\r\n");
      out.write("       ");

       }
        
      out.write(" \t\t\r\n");
      out.write("                    \r\n");
      out.write("                  </table>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  </td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  </table>\r\n");
      out.write("                 \r\n");
      out.write("                   <table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list4','img4');\">硕博连读招生系统</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list4','img4');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img4\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list4\" style=\"display:\">\t\t\t\r\n");
      out.write(" ");

 				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write(" <tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/sbldxt/Sbopen.jsp\" target=\"main\">开启</a>|<a href=\"admin/sbldxt/Sbclose.jsp\" target=\"main\">关闭招生系统</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/sbldxt/sbldnews/SbnewsAdd.jsp\" target=\"main\">发布硕博通知</a> | <a href=\"admin/sbldxt/sbldnews/SbnewsList.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/sbldxt/sbldstudent/SbstudentListSq.jsp\" target=\"main\">查看申请结果</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/sbldxt/sbldstudent/SbstudentListDc.jsp\" target=\"main\">导出申请列表</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");

				}
				//if(UserManage.HasRight(8,user)){

      out.write("\r\n");
      out.write("\r\n");
      out.write("      </table>\r\n");
      out.write("\t  </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list5','img5');\">提前攻博招生系统</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list5','img5');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img3\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list5\" style=\"display:\">\t\t\t\r\n");
      out.write(" ");

 				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write(" <tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/tqgbxt/Tqgbopen.jsp\" target=\"main\">开启</a>|<a href=\"admin/tqgbxt/Tqgbclose.jsp\" target=\"main\">关闭招生系统</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/tqgbxt/tqgbnews/TqgbnewsAdd.jsp\" target=\"main\">发布硕博通知</a> | <a href=\"admin/tqgbxt/tqgbnews/TqgbnewsList.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/tqgbxt/tqgbstudent/TqgbstudentListSq.jsp\" target=\"main\">查看申请结果</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/tqgbxt/tqgbstudent/TqgbstudentListDc.jsp\" target=\"main\">导出申请列表</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");

				}
				//if(UserManage.HasRight(8,user)){

      out.write("\r\n");
      out.write("\r\n");
      out.write("      </table>\r\n");
      out.write("\t  </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list6','img6');\">博士生系统管理</td>\r\n");
      out.write("          <td width=\"40\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list6','img6');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img4\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list6\" style=\"display:\">\t\t\t\r\n");
      out.write(" ");

 				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/bszsxt/bsnews/BsnewsAdd.jsp\" target=\"main\">发布博士生通知</a> | <a href=\"admin/bszsxt/bsnews/BsnewsList.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/bszsxt/bsstudent/BsstudentList.jsp\" target=\"main\">上传博士生信息</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("          \t<td height=\"20\"><a href=\"admin/bszsxt/bsstudent/BsstudentListbj.jsp\" target=\"main\">编辑博士生信息</a>\r\n");
      out.write("        \t\t</tr>\r\n");

				}
				
				

      out.write("\r\n");
      out.write("       \r\n");
      out.write("      </table>\r\n");
      out.write("      \r\n");
      out.write("  </div>\r\n");
      out.write("  </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("  \r\n");
      out.write("  <table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"1\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table width=\"158\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"25\" background=\"admin/images/dh_bg.gif\" class=\"menu_title\">\r\n");
      out.write("\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td style=\"cursor:hand\" onClick=\"javascript:spread('list7','img7');\">工程硕士选课系统</td>\r\n");
      out.write("          <td width=\"30\" align=\"center\" style=\"cursor:hand\" onClick=\"javascript:spread('list7','img7');\"><img src=\"admin/images/up.gif\" width=\"12\" height=\"12\" border=\"0\" id=\"img5\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<div class=sec_menu style=\"width:158\">\r\n");
      out.write("\t\t<table width=\"130\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"list7\" style=\"display:\">\t\t\t\r\n");
      out.write(" ");

 				if(UserManage.HasRight(3,user)){
 
      out.write("\r\n");
      out.write(" <tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/gcxkxt/gcxkopen.jsp\" target=\"main\">开启</a>|<a href=\"admin/gcxkxt/gcxkclose.jsp\" target=\"main\">关闭选课系统</a>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\t  \t\t\t<tr>\r\n");
      out.write("        \t\t\t<td height=\"20\"><a href=\"admin/gcxkxt/gcxknews/gcxknewsadd.jsp\" target=\"main\">发布选课通知</a> | <a href=\"admin/gcxkxt/gcxknews/gcxknewslist.jsp\" target=\"main\">管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/gcxkxt/gcxkcourse/Gcchoose.jsp\" target=\"main\">课程管理</a> | <a href=\"admin/gcxkxt/gcxkteacher/GcteacherList.jsp\" target=\"main\">教师管理</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/gcxkxt/gcxkstudent/GcstudentList.jsp\" target=\"main\">学生管理</a>|<a href=\"admin/gcxkxt/gcxkstudent/GcstudentListbj.jsp\" target=\"main\">上传学生信息</a></td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("      \t\t\t<tr>\r\n");
      out.write("          \t\t\t<td height=\"20\"><a href=\"admin/gcxkxt/gcxkinfo/Gcchoose.jsp\" target=\"main\">选课管理</a>\r\n");
      out.write("      \t\t\t</td>\r\n");
      out.write("      \t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");

				}
				//if(UserManage.HasRight(8,user)){

      out.write("\r\n");
      out.write("\r\n");
      out.write("      </table>\r\n");
      out.write("\t  </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("                   \r\n");
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
