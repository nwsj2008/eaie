package org.apache.jsp.gcteacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.gcteacher.*;
import com.eaie.tools.*;
import com.eaie.admin.gcteacher.UserManage;
import java.util.*;
import com.eaie.common.*;

public final class score_jsp extends org.apache.jasper.runtime.HttpJspBase
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
Gcteacher gcteacher = (Gcteacher)session.getAttribute("GCTEACHER");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>电子信息工程学院工程硕士选课教师登陆系统</title>\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"gctchstyle.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("<script language=javascript> \r\n");
      out.write("function getSelect(){\r\n");
      out.write("\r\n");
      out.write("           var factor=document.getElementById('nianfen');\r\n");
      out.write("           var fa=factor.selectedIndex;\r\n");
      out.write("           username= factor.options[fa].value;\r\n");
      out.write("\r\n");
      out.write("           user=document.getElementById('nianfen').options[document.getElementById('nianfen').selectedIndex].text;\r\n");
      out.write("           document.getElementById('nian').value = username;\r\n");
      out.write("           document.all.form1.submit();\r\n");
      out.write("     }\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");

		//查询课程信息		
		String tchname=gcteacher.getName();
		List lista = BasicDAO
				.queryByHql("Select distinct nian from Gccourse gccourse where gccourse.teacher='"
						+ tchname + "'");
		String year="";
		int courseid;
		String nianfen=request.getParameter("nian");
	
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
      out.write("\t\t<a href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"ModifyPwd.jsp\">修改登陆密码</a>\r\n");
      out.write("\t\t<a href=\"kcxx.jsp\" >查看课程信息</a>\r\n");
      out.write("\t\t<a href=\"score.jsp\">编辑学生成绩</a>\r\n");
      out.write("\t\t<a href=\"lianxi.jsp\">联系我们</a>\r\n");
      out.write("\t\t<a href=\"logout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"contentarea\">\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<h2>");
      out.print(gcteacher.getName() );
      out.write("老师,你好：</h2>\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"score.jsp\">\r\n");
      out.write("\t\t<select name=\"nianfen\" id=\"nianfen\" style=\"width: 150px\" onChange=\"return getSelect()\">\r\n");
      out.write("\t\t<option >请选择课程年份</option>\r\n");
      out.write("\t\t");

		if (lista.size() == 0) {
						out.print("没有记录");}
					else
					   {
					   for (int k=0;k<lista.size();k++)
					   {
                        year = lista.get(k).toString();	
					    
      out.write("\r\n");
      out.write("\t\t\t\t\t<option value=\"");
      out.print(year );
      out.write("\" \r\n");
      out.write("\t\t\t\t\t");
 if (nianfen!=null&&(nianfen.equals(year)))
												{
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tselected=\"selected\" ");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t>");
      out.print(year );
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t");
} 
      out.write("\r\n");
      out.write("\t\t</select>\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"nian\" id=\"nian\" value=\"\">\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t<tr height=\"20\">\r\n");
      out.write("\t\t\t\t<td width=\"140\" align=\"center\">\r\n");
      out.write("\t\t\t\t课程名称\r\n");
      out.write("\t\t\t\t</td>\t\t\t\r\n");
      out.write("\t\t\t\t<td width=\"140\" align=\"center\">\r\n");
      out.write("\t\t\t\t选课人数\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td colspan=\"3\" width=\"240\" align=\"center\">\r\n");
      out.write("\t\t\t\t学生成绩\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
List listb = BasicDAO
				.queryByHql("From Gccourse gccourse where gccourse.teacher='"
						+ tchname + "'"+"and gccourse.nian='"+ nianfen + "'");
			 if (listb.size() == 0) 
				{
				
				} 
				else {
					for (int i=0;i<listb.size();i++)
					{
					Gccourse gccourse = (Gccourse) listb.get(i);
					//统计选课人数		
					courseid=gccourse.getId();	
					List listc = BasicDAO.queryByHql("From Gcxk gcxk where gcxk.tid='"+ courseid + "'");
					int number=0;
					if (listc.size() == 0) {
					} else 
					{
					number=listc.size();
					}		
			
      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\" height=\"25\">\r\n");
      out.write("\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t");
      out.print( gccourse.getTitle()==null?"":gccourse.getTitle() );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\t\t\t\t\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t");
      out.print( number );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t<a href=\"Score/ViewScr.jsp?id=");
      out.print(courseid );
      out.write("\">查看</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t<a href=\"Score/EditScr.jsp?id=");
      out.print(courseid );
      out.write("\">修改</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t<a href=\"Score/scoreExcelDc.jsp?id=");
      out.print(courseid );
      out.write("&csTitle=");
      out.print(gccourse.getTitle() );
      out.write("\">导出</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
}} }
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</select>\r\n");
      out.write("\t</div>\r\n");
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
      out.write("   \r\n");
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
