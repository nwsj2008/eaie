package org.apache.jsp.gcteacher.Score;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.gcteacher.*;
import com.eaie.tools.*;
import com.eaie.admin.gcteacher.UserManage;
import java.util.*;
import com.eaie.common.*;
import com.eaie.gcxkxt.xkfenye.*;
import com.eaie.gcxkxt.gcxkinfo.GcinfoList;

public final class scoreExcelDc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");

	Gcteacher gcteacher = (Gcteacher) session.getAttribute("GCTEACHER");

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>电子信息工程学院工程硕士选课教师登陆系统</title>\r\n");
      out.write("\t\t<LINK REL=StyleSheet HREF=\"../gctchstyle.css\" TYPE=\"text/css\"\r\n");
      out.write("\t\t\tMEDIA=screen>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t");

		String xkid = "";
		String sName = "";
		String sScore = "";
		String beizhu="";
		String courseId = request.getParameter("id");
		String courseTitle = request.getParameter("csTitle");
		courseTitle = new String(courseTitle.getBytes("ISO-8859-1"),"GBK");
		//查询课程信息		
		String tchname = gcteacher.getName();
		
	
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t\t<div id=\"header\">\r\n");
      out.write("\t\t\t\t<h1 align=\"center\">\r\n");
      out.write("\t\t\t\t\t电子信息工程学院工程硕士选课教师登陆系统\r\n");
      out.write("\t\t\t\t</h1>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div id=\"mainarea\">\r\n");
      out.write("\t\t\t\t<div id=\"sidebar\">\r\n");
      out.write("\t\t\t\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../index.jsp\">首页</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../ModifyPwd.jsp\">修改登陆密码</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../kcxx.jsp\">查看课程信息</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../score.jsp\">编辑学生成绩</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../lianxi.jsp\">联系我们</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"../logout.jsp\">退出系统</a>\r\n");
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
      out.write("\t\t\t\t\t<form name=\"form\" method=\"post\" action=\"scoreExcel.jsp\">\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\t\t\t\tcellspacing=\"1\">\r\n");
      out.write("\t\t\t\t\t\t\t");
if (courseId != null) {
								int tid = Integer.parseInt(courseId); 
								List list = BasicDAO.queryByHql("From Gccourse gccs where gccs.id='" + tid+ "'");
								if (list.size()>0) 
								{Gccourse gccs=(Gccourse)list.get(0);  beizhu=gccs.getBeizhu();}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr align=\"center\" >\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<td >课程名称</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"3\">");
      out.print(courseTitle );
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<input name=\"tid\" id=\"tid\" type=\"hidden\" value=\"");
      out.print(tid);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input name=\"csTitle\" id=\"csTitle\" type=\"hidden\" value=\"");
      out.print((courseTitle == null) ? "" : courseTitle);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr align=\"center\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t序号\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t姓名\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t分数\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t备注\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t");

										List listc = BasicDAO
												.queryByHql("From Gcxk gcxk where gcxk.tid='" + tid
														+ "'");
										//对应课程下选课人数不为0
										if (listc.size() > 0) {
											for (int i = 0; i < listc.size(); i++) {
												Gcxk gcxk = (Gcxk) listc.get(i);
												xkid = gcxk.getId().toString();
												int sid = gcxk.getSid();
												//获取学生姓名
												List listd = BasicDAO
														.queryByHql("From Gcstudent gcstd where gcstd.id='"
																+ sid + "'");
												if (listd.size() != 0) {
													Gcstudent gcstd = (Gcstudent) listd.get(0);
													sName = gcstd.getName();
												}
												//获取该学生的分数
												List liste = BasicDAO
														.queryByHql("From Gcxk gcxk where gcxk.sid='"
																+ sid
																+ "'"
																+ "and gcxk.tid='"
																+ Integer.parseInt(courseId) + "'");
												if (liste.size() != 0) {
													Gcxk gcxkb = (Gcxk) liste.get(0);
													sScore = gcxkb.getScore();
													beizhu = gcxkb.getBeizhu();
												}
							
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(i + 1);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"xuhao\" id=\"xuhao\" type=\"hidden\" value=\"");
      out.print(i+1);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(sName);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"name\" id=\"name\" type=\"hidden\" value=\"");
      out.print(sName);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print((sScore == null) ? "未打分" : sScore);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"score\" id=\"score\" type=\"hidden\" value=\"");
      out.print((sScore == null) ? "" : sScore);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"csid\" id=\"csid\" size=10\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvalue=\"");
      out.print(Integer.parseInt(courseId));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print((beizhu == null) ? "" : beizhu);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"beizhu\" id=\"beizhu\" type=\"hidden\" value=\"");
      out.print((beizhu == null) ? "" : beizhu);
      out.write("\">&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									}
											}
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"导出Excel列表\">\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");

						
						}
					
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t</body>\r\n");
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
