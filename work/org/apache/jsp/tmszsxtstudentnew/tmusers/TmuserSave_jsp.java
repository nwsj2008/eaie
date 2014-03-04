package org.apache.jsp.tmszsxtstudentnew.tmusers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import com.eaie.admin.tmusers.*;
import com.eaie.tmszsxt.*;
import java.util.*;

public final class TmuserSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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
			+ path + "/tmszsxtstudentnew/";

      out.write("\r\n");
      out.write("\r\n");

	String tmusername = request.getParameter("tmusername");
	String tmpassword = request.getParameter("pwd");
	//在数据库中查找与输入的用户名相同的用户名
	List list = BasicDAO
			.queryByHql("FROM Tmstudent As Tmusers where Tmusers.username = '"
					+ tmusername + "'");
	if (list.size() == 0) {//数据库不存在该用户
		MD5 md5 = new MD5();
		Tmstudent tmuser = new Tmstudent();
		tmuser.setUsername(tmusername);
		tmuser.setPwd(md5.getMD5ofStr(tmpassword));
		tmuser.setLogintimes(0);
		try {

			BasicDAO.save(tmuser);
			out.println(JavaScript.alertandRedirect("注册成功,返回登陆页面！", basePath
					+ "tmlogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("注册失败！",
					"TmuserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		//out.print("<script> alert('登录失败，请检查用户名及密码！')</script>");
		out.println(JavaScript.alertandRedirect("已有该用户名，请用新用户名注册！",
				"TmuserAdd.jsp"));
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
