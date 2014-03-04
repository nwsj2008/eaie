package org.apache.jsp.admin.lecture;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.admin.lecture.*;

public final class lecture_005fadd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
 
	
	String action = request.getParameter("action");
	Teacher user = (Teacher)session.getAttribute("USER"); 	
	if(action!=null){
    Lecture lecture = new Lecture();
    String endtime = request.getParameter("endtime");
    lecture.setEndtime(LectureManage.getDate(endtime,"yyyy-MM-dd"));
    lecture.setPubtime(LectureManage.getDate());
    lecture.setHits(0);
    lecture.setContent(HtmlEncode.outHtml(request.getParameter("content")));
    lecture.setSubject(request.getParameter("subject"));
    lecture.setGivesite(request.getParameter("givesite"));
    lecture.setGivetime(request.getParameter("givetime"));
    lecture.setLecturer(request.getParameter("lecturer"));
    //登录用户名称
    lecture.setTeacher(user.getTeacher());
    lecture.setIsok(Byte.valueOf(request.getParameter("isok")==null?"0":"1"));
    lecture.setIstop(Byte.valueOf(request.getParameter("istop")==null?"0":"1"));
    lecture.setFilename(request.getParameter("filename"));
    lecture.setFileurl(request.getParameter("fileurl"));
    
	if(LectureManage.saveLecture(lecture)==true){
		out.println(JavaScript.alertandRedirect("添加成功","lecture_list.jsp"));
	}else{
		out.println(JavaScript.alertandBack("修改失败！"));		
	}
}
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>添加学术活动</title>\r\n");

			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";

      out.write("\t\t\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("<script language=\"JavaScript\" src=\"js/calendar.js\"></script>\r\n");
      out.write("<script language=\"JavaScript\" src=\"js/lecture.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<form name=\"myform\" id=\"myform\" method=\"post\" action=\"admin/lecture/lecture_add.jsp?action=add\">\r\n");
      out.write("  <table width=\"550\"  border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("    <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("      <td colspan=\"2\">添加学术活动</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报告主题：</td>\r\n");
      out.write("      <td><input name=\"subject\" type=\"text\" id=\"subject\" size=\"60\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报&nbsp;告&nbsp;人：</td>\r\n");
      out.write("      <td><input name=\"lecturer\" type=\"text\" id=\"lecturer\" size=\"60\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报告时间：</td>\r\n");
      out.write("      <td><input name=\"endtime\" type=\"text\" id=\"endtime\" value=\"点此输入日期\" size=\"13\" onFocus=\"show_cele_date(endtime,'1900-1-1','2030-1-1',endtime)\">\r\n");
      out.write("\t  <input name=\"givetime\" type=\"text\" id=\"givetime\" size=\"24\">（左边输入日期，右边输入具体时间）\r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报告地点：</td>\r\n");
      out.write("      <td><input name=\"givesite\" type=\"text\" id=\"givesite\" size=\"40\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>内容简介：</td>\r\n");
      out.write("      <td><textarea name=\"content\" cols=\"60\" rows=\"15\" id=\"content\"></textarea></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>新闻属性：</td>\r\n");
      out.write("      <td><input name=\"istop\" type=\"checkbox\" id=\"istop\" value=\"1\">\r\n");
      out.write("        置顶\r\n");
      out.write("          <input name=\"isok\" type=\"checkbox\" id=\"isok\" value=\"1\">\r\n");
      out.write("      推荐</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>粘贴附件：</td>\r\n");
      out.write("      <td>\r\n");
      out.write("      <iframe src=\"upload/uploadfile.jsp\" height=\"25\" frameborder=\"0\" width=\"100%\" scrolling=\"no\" allowtransparency=\"yes\"> </iframe>\r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("      <td colspan=\"2\"><input type=\"button\" name=\"Submit\" value=\"添&nbsp;加\" onClick=\"check()\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"reset\" name=\"Submit2\" value=\"重&nbsp;置\">\r\n");
      out.write("\t  <input name=\"filename\" type=\"hidden\" id=\"filename\" value=\"\">\r\n");
      out.write("\t  <input name=\"fileurl\" type=\"hidden\" id=\"fileurl\" value=\"\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
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
