package org.apache.jsp.admin.gcxkxt.gcxkteacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import java.util.List;
import com.sun.java.swing.plaf.windows.resources.windows;

public final class GcteacherDel_jsp extends org.apache.jasper.runtime.HttpJspBase
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

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");

	String[] idStrings = request.getParameterValues("id");
	try {
		for (int i = 0; i < idStrings.length; i++) {
			int temp = Integer.parseInt(idStrings[i]);
			Gcteacher gcteacher = (Gcteacher) BasicDAO.queryById(
					Gcteacher.class, temp);

			String hql = "FROM Gccourse As Course where Course.teacher='"
					+ gcteacher.getName() + "'";//在Gccourse中查找对应的教师姓名
			List listA = BasicDAO.queryByHql(hql);

			if (listA.size() > 0) //如果有数据
			{
				for (int m = 0; m < listA.size(); m++) {

					Gccourse gccourse = (Gccourse) listA.get(m);// 一个老师带若干门课程

					String Shql = "FROM Gcxk As Gk where Gk.tid='"
							+ gccourse.getId() + "'"; //在Gcxk中查找该教师所教课程的ID
					List listB = BasicDAO.queryByHql(Shql);
					if (listB.size() > 0) {
						for (int j = 0; j < listB.size(); j++) {
							Gcxk gcxk = (Gcxk) listB.get(j);
							BasicDAO.delete(gcxk); //在Gcxk中删除改教师所教课程的选课信息
						}
					}

					BasicDAO.delete(gccourse);
				}
			}
			BasicDAO.delete(gcteacher);

		}

		out.println(JavaScript.alertandRedirect("删除成功！",
				"GcteacherList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("删除失败！"));

	}

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
