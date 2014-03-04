package org.apache.jsp.bszsxtstudent.bsusers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
import java.util.*;

public final class BsuserSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/bszsxtstudent/";

      out.write("\r\n");
      out.write("\r\n");

	String bsusername = request.getParameter("bsusername");
	String bspassword = request.getParameter("bspassword");
	//在数据库中查找与输入的用户名相同的用户名
	List list = BasicDAO.queryByHql("FROM Bsstudent As Bsusers where Bsusers.name = '"
					+ bsusername + "'");
	if (list.size() == 0) {//数据库不存在该用户
		MD5 md5 = new MD5();
		Bsstudent bsuser = new Bsstudent();
		bsuser.setName(bsusername);
		bsuser.setPwd(md5.getMD5ofStr(bspassword));
		//bsuser.setPwd(bspassword);
		try {

			BasicDAO.save(bsuser);
			out.println(JavaScript.alertandRedirect("注册成功,返回登陆页面！", basePath
					+ "bslogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("注册失败！",
					"BsuserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		//out.print("<script> alert('登录失败，请检查用户名及密码！')</script>");
		out.println(JavaScript.alertandRedirect("已有该用户名，请用新用户名注册！",
				"BsuserAdd.jsp"));
	}

      out.write('\r');
      out.write('\n');
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
