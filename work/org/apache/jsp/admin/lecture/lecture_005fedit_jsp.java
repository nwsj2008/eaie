package org.apache.jsp.admin.lecture;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;
import com.eaie.admin.lecture.*;
import java.text.SimpleDateFormat;

public final class lecture_005fedit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      com.eaie.dbmanage.Lecture lecture = null;
      synchronized (_jspx_page_context) {
        lecture = (com.eaie.dbmanage.Lecture) _jspx_page_context.getAttribute("lecture", PageContext.PAGE_SCOPE);
        if (lecture == null){
          lecture = new com.eaie.dbmanage.Lecture();
          _jspx_page_context.setAttribute("lecture", lecture, PageContext.PAGE_SCOPE);
          out.write('\r');
          out.write('\n');
        }
      }
      out.write('\r');
      out.write('\n');

 	String id = request.getParameter("id");
 	String curPage = request.getParameter("page");
 	String action = request.getParameter("action");
 	Teacher user = (Teacher)session.getAttribute("USER"); 	
 	if(action==null){
 	   lecture = LectureManage.getLecture(Integer.parseInt(id)); 	 
 	}else{

      out.write("\r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("lecture"), request);
      out.write('\r');
      out.write('\n');
	
    //点击数这里是在编辑时否需要更新
    String endtime = request.getParameter("endtime2");
    lecture.setEndtime(LectureManage.getDate(endtime,"yyyy-MM-dd"));
    lecture.setPubtime(LectureManage.getDate());
    lecture.setIsok(Byte.valueOf(request.getParameter("isok2")==null?"0":"1"));
    lecture.setIstop(Byte.valueOf(request.getParameter("istop2")==null?"0":"1"));
    //
    lecture.setTeacher(user.getTeacher());
    lecture.setContent(HtmlEncode.outHtml(lecture.getContent()));
    if(LectureManage.updateLecture(lecture)==true){
		out.println(JavaScript.alertandRedirect("修改成功","lecture_list.jsp?curPage="+curPage));
	}else{
		out.println(JavaScript.alertandBack("修改失败！"));	
	}
}
	if(lecture.getIsok()==null){
		lecture.setIsok(Byte.valueOf("0"));
	}
	if(lecture.getIstop()==null){
		lecture.setIstop(Byte.valueOf("0"));
	}
 
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>编辑学术活动</title>\r\n");

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
      out.write("<script language=\"javascript\" type=\"text/javascript\">\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<form name=\"myform\" method=\"post\" action=\"admin/lecture/lecture_edit.jsp?page=");
      out.print(curPage);
      out.write("&action=edit\" onSubmit=\"check()\">\r\n");
      out.write("  <table width=\"550\"  border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("    <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("      <td colspan=\"2\">编辑学术活动</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报告主题：</td>\r\n");
      out.write("      <td><input name=\"subject\" type=\"text\" id=\"subject\" value=\"");
      out.print(lecture.getSubject());
      out.write("\" size=\"60\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报&nbsp;告&nbsp;人：</td>\r\n");
      out.write("      <td><input name=\"lecturer\" type=\"text\" id=\"lecturer\" value=\"");
      out.print(lecture.getLecturer());
      out.write("\" size=\"60\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报告时间：</td>\r\n");
      out.write("      <td><input name=\"endtime2\" type=\"text\" id=\"endtime\" value=\"");
      out.print(new SimpleDateFormat("yyyy-MM-dd").format(lecture.getEndtime()));
      out.write("\" size=\"13\" onFocus=\"show_cele_date(endtime,'1900-1-1','2030-1-1',endtime)\">\r\n");
      out.write("\t  <input name=\"givetime\" type=\"text\" id=\"givetime\" value=\"");
      out.print(lecture.getGivetime());
      out.write("\" size=\"24\">（修改时请注意两处日期相同）</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>报告地点：</td>\r\n");
      out.write("      <td><input name=\"givesite\" type=\"text\" id=\"givesite\" value=\"");
      out.print(lecture.getGivesite());
      out.write("\" size=\"40\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>内容简介：</td>\r\n");
      out.write("      <td><textarea name=\"content\" cols=\"60\" rows=\"15\" id=\"content\">");
      out.print(lecture.getContent()==null?"": HtmlEncode.inHtml(lecture.getContent()));
      out.write("</textarea></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>新闻属性：</td>\r\n");
      out.write("      <td><input name=\"istop2\" type=\"checkbox\" id=\"istop\" value=\"1\"  ");
      out.print((lecture.getIstop().intValue()==1?"checked='checked'":null));
      out.write(">\r\n");
      out.write("        置顶\r\n");
      out.write("          <input name=\"isok2\" type=\"checkbox\" id=\"isok\" value=\"1\" ");
      out.print((lecture.getIsok().intValue()==1?"checked='checked'":null));
      out.write(">\r\n");
      out.write("      推荐</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr class=\"tdbg\">\r\n");
      out.write("      <td>粘贴附件：</td>\r\n");
      out.write("      <td>\r\n");
      out.write("      <iframe src=\"upload/uploadfile.jsp?action=show&filename=");
      out.print(lecture.getFilename()==null?"":lecture.getFilename() );
      out.write("&fileurl=");
      out.print(lecture.getFileurl()!=null?lecture.getFileurl():"" );
      out.write("\" \r\n");
      out.write("      height=\"25\" frameborder=\"0\" width=\"100%\" scrolling=\"no\" allowtransparency=\"yes\"> </iframe>\r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("      <td colspan=\"2\"><input type=\"submit\" name=\"Submit\" value=\"更&nbsp;新\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"button\" name=\"Submit2\" value=\"返&nbsp;回\" onClick=\"javascript:window.location.href='lecture_list.jsp?curPage=");
      out.print(curPage);
      out.write("'\">\r\n");
      out.write("\t  <input name=\"id\" type=\"hidden\" id=\"id\" value=\"");
      out.print(lecture.getId());
      out.write("\">\r\n");
      out.write("\t  <input name=\"filename\" type=\"hidden\" id=\"filename\" value=");
      out.print(lecture.getFilename() );
      out.write(">\r\n");
      out.write("\t  <input name=\"fileurl\" type=\"hidden\" id=\"fileurl\" value=");
      out.print(lecture.getFileurl() );
      out.write(">\r\n");
      out.write("\t  </td>\r\n");
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
