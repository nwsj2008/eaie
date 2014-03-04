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

public final class ViewScr_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

List list;
	
  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/common/Pager.jsp");
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
		int kcID;
		String courseId = request.getParameter("id");
		
		//查询课程信息		
		String tchname = gcteacher.getName();
	
      out.write("\r\n");
      out.write("\t<script language=javascript> \r\n");
      out.write("\t function formCheck(){\r\n");
      out.write("\t ");
if (courseId==null) {
					out.print("没有记录");}
				  else
				   {
				  kcID=Integer.parseInt(courseId);
				  List listb = BasicDAO.queryByHql("From Gcxk gcxk where gcxk.tid='"+ kcID + "'");
				 //对应课程下选课人数不为0
				  if (listb.size() > 0) 
					{
					for (int i = 0; i < listb.size(); i++) 
					{
						Gcxk gcxk = (Gcxk) listb.get(i);
						xkid=gcxk.getId().toString();			
		
      out.write("\r\n");
      out.write("\t\t//String string=document.getElementById(\"xkid\").value();\r\n");
      out.write("\t\t//int fenshu = Integer.parseInt(string);\r\n");
      out.write("        if(document.getElementById(\"");
      out.print(xkid);
      out.write("\").value==\"\")\r\n");
      out.write("        {\r\n");
      out.write("            alert(\"学生成绩不能为空!\");\r\n");
      out.write("            document.getElementById(\"");
      out.print(xkid);
      out.write("\").focus();\r\n");
      out.write("            document.getElementById(\"");
      out.print(xkid);
      out.write("\").select();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        else if (document.getElementById(\"");
      out.print(xkid);
      out.write("\").value>100||document.getElementById(\"");
      out.print(xkid);
      out.write("\").value<0)\r\n");
      out.write("        {\r\n");
      out.write("         \talert(\"学生成绩必须在0——100之间\");\r\n");
      out.write("            document.getElementById(\"");
      out.print(xkid);
      out.write("\").focus();\r\n");
      out.write("            document.getElementById(\"");
      out.print(xkid);
      out.write("\").select();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("    \t");

    	}
    	
      out.write("\r\n");
      out.write("    \telse return true;\r\n");
      out.write("    \t");

    	}}
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t\t");

			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			GcxkfyList gcxkfyList = new GcxkfyList();
		   list = gcxkfyList.getGcxkfyList(curPage,courseId)  ;

			Page pager = gcxkfyList.getCurrentPage();
			Iterator it = list.iterator();//遍历list
		
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div id=\"page\">\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<form name=\"form\" method=\"post\" action=\"UpdateScr.jsp\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\t\t\t\tcellspacing=\"1\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr align=\"center\" class=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"10%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t序号\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"45%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t姓名\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"20%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t分数\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t");

								if (courseId != null) {
										int tid = Integer.parseInt(courseId);
										List listc = BasicDAO
												.queryByHql("From Gcxk gcxk where gcxk.tid='" + tid
														+ "'");
										//对应课程下选课人数不为0
										if (list.size() > 0) {
											for (int i = 0; i < list.size(); i++) {
												Gcxk gcxk = (Gcxk) list.get(i);
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
												}
							
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(i + 1);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(sName);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print((sScore == null) ? "未打分" : sScore);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"csid\" id=\"csid\" size=10\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvalue=\"");
      out.print(Integer.parseInt(courseId));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									}
											}
								
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						}
						
					
      out.write("\r\n");
      out.write("\t\t\t\t<form name=\"pageForm\" action=\"\" method=\"post\">\r\n");
      out.write("\t\t\t<table align=\"center\" width=\"96%\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.write('\r');
      out.write('\n');
request.setCharacterEncoding("GBK"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("  function Jumping(){\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  function gotoPage(curPage){\r\n");
      out.write("      document.pageForm.curPage.value=curPage;\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("<center>\r\n");
 
   if(curPage==1){out.print("首页 上一页");}
   else{
      out.write("\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(1)\">首页</a>\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(curPage-1 );
      out.write(")\">上一页</a>\r\n");
      out.write("   ");
} 
   if (curPage==pager.getMaxPage()){out.print("下一页 尾页");}
   else{
      out.write("\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(curPage+1 );
      out.write(")\">下一页</a>\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(pager.getMaxPage() );
      out.write(")\">尾页</a>\r\n");
      out.write("   ");
} 
      out.write("\r\n");
      out.write("   转到第<select name=\"curPage\" onchange=\"Jumping()\">\r\n");
      out.write("   ");
 for(int i=1; i<=pager.getMaxPage(); i++){
          if(i==curPage){
      out.write("\r\n");
      out.write("              <option selected value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
          else {
      out.write(" <option value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
   }
   
      out.write("\r\n");
      out.write("   </select>页\r\n");
      out.write("   共有");
      out.print(pager.getRowsNum() );
      out.write("条记录 第<font color=\"red\">");
      out.print(curPage );
      out.write("</font>页 共");
      out.print(pager.getMaxPage() );
      out.write("页\r\n");
      out.write(" </center>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
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
