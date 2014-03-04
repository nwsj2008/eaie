package org.apache.jsp.admin.sbldxt.sbldstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.sbldxt.sbldstudent.*;

public final class SbstudentList_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script language = \"JavaScript\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<title>查看博士生信息</title>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/calendar.js\"></script>\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/lecture.js\"></script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");

 
  int id=Integer.parseInt(request.getParameter("id"));
  List list=BasicDAO.queryByHql("From Sbld sbld where sbld.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Sbld sbld=(Sbld)list.get(0);
 
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \t<body>\r\n");
      out.write("\t\t<BR>\r\n");
      out.write("\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"admin/sbldxt/sbldstudent/SbstudentUpdate.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"9\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t查看硕博连读生信息\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"30\" rowspan=\"9\">\r\n");
      out.write("\t\t\t\t\t\t<strong>基本信息</strong>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t姓&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((sbld.getName()==null)?"":sbld.getName());
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t学号：\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((sbld.getXuehao() == null) ? ""
							: sbld.getXuehao());
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t性别：\r\n");
      out.write("\t\t\t\t\t");
      out.print((sbld.getSex() == null) ? ""
							: sbld.getSex());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t硕士专业：\r\n");
      out.write("\t\t\t\t\t");
      out.print((sbld.getSszy()==null)?"":sbld.getSszy());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t拟报博士专业： \r\n");
      out.write("\t\t\t\t");
      out.print((sbld.getBbzy()==null)?"":sbld.getBbzy());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td >\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t原硕导：\r\n");
      out.write("\t\t\t\t\t");
      out.print((sbld.getSd()==null)?"":sbld.getSd());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t<td > \r\n");
      out.write("\t\t\t\t\t\t拟报博导：&nbsp; \r\n");
      out.write("\t\t\t");
      out.print((sbld.getNbbd()==null)?"":sbld.getNbbd());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t<td> \r\n");
      out.write("                     入学成绩2：&nbsp; \r\n");
      out.write("\t\t\t\t\t");
      out.print((sbld.getRxcj()==null)?"":sbld.getRxcj());
      out.write("\r\n");
      out.write("\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t</tr>\t\t\r\n");
      out.write("\t\t\t     <tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t成绩排名：\r\n");
      out.write("\t\t\t\t");
      out.print((sbld.getCjpm()==null)?"":sbld.getCjpm());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t   <td>\r\n");
      out.write("\t\t\t\t       联系方式：\r\n");
      out.write("\t\t\t\t");
      out.print((sbld.getTel()==null)?"":sbld.getTel());
      out.write("\r\n");
      out.write("\t\t\t\t       \r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t\t导师信息：\r\n");
      out.write("\t\t\t\t<input name=\"dsxx\" value=\"");
      out.print((sbld.getDsxx() == null) ? ""
						: sbld.getDsxx());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("                     录取类别：\r\n");
      out.write("                  <input name=\"lqlb\" value=\"");
      out.print((sbld.getLqlb()== null) ? ""
						: sbld.getLqlb());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\" align=left>\r\n");
      out.write("\t\t\t\t\t录取专业： \r\n");
      out.write("\t\t\t\t\t\t<input name=\"lqzy\" value=\"");
      out.print((sbld.getLqzy() == null) ? ""
						: sbld.getLqzy());
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t备注：\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t ");
      out.print((sbld.getBeizhu()==null)?"":sbld.getBeizhu());
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t<BR>\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确定修改\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t<input type=\"button\" name=\"back\"  value=\"返&nbsp;&nbsp;&nbsp;&nbsp;回\" onClick=\"window.location.href='SbstudentListSq.jsp'\">\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t\r\n");
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
