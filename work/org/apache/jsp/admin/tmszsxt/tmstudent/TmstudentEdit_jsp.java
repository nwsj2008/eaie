package org.apache.jsp.admin.tmszsxt.tmstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.tmszsxt.tmstudent.*;

public final class TmstudentEdit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\tfunction formCheck(){\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(!isNull(\"title\",\"请输入标题\")){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!isNull(\"content\",\"请输入内容\")){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t}\r\n");
      out.write("</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<title>修改推免生信息</title>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/calendar.js\"></script>\r\n");
      out.write("\t\t<script language=\"JavaScript\" src=\"js/lecture.js\"></script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");

  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Tmstudent tmstudent=(Tmstudent)list.get(0);
 
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \t<body>\r\n");
      out.write("\t\t<BR>\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"admin/tmszsxt/tmstudent/TmstudentUpdate.jsp\">\r\n");
      out.write("\t\t\t<table width=\"550\" border=\"0\" align=\"center\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t\t编辑推免生信息\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"30\" rowspan=\"6\">\r\n");
      out.write("\t\t\t\t\t\t<strong>基本信息</strong>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(id);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t姓&nbsp;&nbsp;&nbsp;&nbsp;名：\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<input name=\"name\" type=\"text\" id=\"name\" size=\"20\" value=\"");
      out.print((tmstudent.getName()==null)?"":tmstudent.getName());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t联系电话：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"tel\" type=\"text\" id=\"tel\" size=\"20\" value=\"");
      out.print((tmstudent.getTel()==null)?"":tmstudent.getTel());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t毕业学校：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"byschool\" type=\"text\" id=\"byschool\" size=\"20\" value=\"");
      out.print((tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t毕业专业：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"byspeciality\" type=\"text\" id=\"byspeciality\" size=\"20\" value=\"");
      out.print((tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t接收学院：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"jsacademe\" type=\"text\" id=\"jsacademe\" size=\"20\" value=\"");
      out.print((tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t接收专业：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"jsspeciality\" type=\"text\" id=\"jsspeciality\" size=\"20\" value=\"");
      out.print((tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t四级成绩：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"siji\" type=\"text\" id=\"siji\" size=\"20\" value=\"");
      out.print((tmstudent.getSiji()==null)?"":tmstudent.getSiji());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t六级成绩：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"liuji\" type=\"text\" id=\"liuji\" size=\"20\" value=\"");
      out.print((tmstudent.getLiuji()==null)?"":tmstudent.getLiuji());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t专业排名：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"zypm\" type=\"text\" id=\"zypm\" size=\"20\" value=\"");
      out.print((tmstudent.getZypm()==null)?"":tmstudent.getZypm());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t专业人数：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"zyrs\" type=\"text\" id=\"zyrs\" size=\"20\" value=\"");
      out.print((tmstudent.getZyrs()==null)?"":tmstudent.getZyrs());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t<div style=\"float:left\">\r\n");
      out.write("\t\t\t\t\t\t获奖情况(字数在100字内)：\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"huoj\" rows=\"5\" cols=\"62\" onKeyDown='if (this.value.length>=100){event.returnValue=false}'> ");
      out.print((tmstudent.getHuoj() == null) ? ""
						: tmstudent.getHuoj());
      out.write("</textarea>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"30\" rowspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<strong>录取信息</strong>\r\n");
      out.write("\t\t\t\t\t</td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t复试成绩：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"fushiresult\" type=\"text\" id=\"fushiresult\" size=\"20\" value=");
      out.print((tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult());
      out.write(">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t考核通知：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"shenheresult\" type=\"text\" id=\"shenheresult\" size=\"20\" value=\"");
      out.print((tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t录取结果：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"sflq\" type=\"text\" id=\"sflq\" size=\"20\" value=\"");
      out.print((tmstudent.getSflq()==null)?"":tmstudent.getSflq());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t导师信息：\r\n");
      out.write("\t\t\t\t\t\t<input name=\"teacher\" type=\"text\" id=\"teacher\" size=\"20\" value=\"");
      out.print((tmstudent.getTeacher()==null)?"":tmstudent.getTeacher());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<BR>\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"确定修改\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t<input type=\"button\" name=\"back\"  value=\"返&nbsp;&nbsp;&nbsp;&nbsp;回\" onClick=\"window.location.href='TmstudentList.jsp'\">\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</body>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t");

 }
 
      out.write("\r\n");
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
