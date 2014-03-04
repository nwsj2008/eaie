package org.apache.jsp.admin.bszsxt.bsstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.bszsxt.bsstudent.*;
import com.eaie.tools.*;
import java.util.Date;

public final class BsstudentUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");

    int id=Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String bkzy = request.getParameter("bkzy");
	String bkds = request.getParameter("bkds");
	String waiyu = request.getParameter("waiyu");
	String yewu1 = request.getParameter("yewu1");
	String yewu2 = request.getParameter("yewu2");
	String zongfen = request.getParameter("zongfen");
	String mstz = request.getParameter("mstz");
	String lqzy = request.getParameter("lqzy");
	String lqds=request.getParameter("lqds");
	String lqlb=request.getParameter("lqlb");
	
	Bsstudent bsstudent = new Bsstudent();
	bsstudent.setId(id);
	bsstudent.setName(name);
	bsstudent.setPwd(pwd);
	bsstudent.setBkzy(bkzy);
	bsstudent.setBkds(bkds);
	bsstudent.setWaiyu(waiyu);
	bsstudent.setYewu1(yewu1);
	bsstudent.setYewu2(yewu2);
	bsstudent.setZongfen(zongfen);
	bsstudent.setMstz(mstz);
	bsstudent.setLqzy(lqzy);
	bsstudent.setLqds(lqds);
	bsstudent.setLqlb(lqlb);
	
	try {
	
		BasicDAO.update(bsstudent);
		out.println(JavaScript.alertandRedirect("编辑成功", "BsstudentListbj.jsp"));

	} catch (Exception e) {
		e.printStackTrace();
		out.println(JavaScript.alertandBack("编辑失败"));
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
