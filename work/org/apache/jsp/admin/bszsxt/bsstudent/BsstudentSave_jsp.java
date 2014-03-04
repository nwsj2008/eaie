package org.apache.jsp.admin.bszsxt.bsstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.bszsxt.bsstudent.*;
import com.eaie.tools.*;
import java.util.Date;

public final class BsstudentSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      com.eaie.dbmanage.Bsstudent bsstudent = null;
      synchronized (_jspx_page_context) {
        bsstudent = (com.eaie.dbmanage.Bsstudent) _jspx_page_context.getAttribute("bsstudent", PageContext.PAGE_SCOPE);
        if (bsstudent == null){
          bsstudent = new com.eaie.dbmanage.Bsstudent();
          _jspx_page_context.setAttribute("bsstudent", bsstudent, PageContext.PAGE_SCOPE);
          out.write('\r');
          out.write('\n');
          out.write('	');
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("bsstudent"), request);
          out.write('\r');
          out.write('\n');
        }
      }
      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
 
	  String id=request.getParameter("id");
	try {
	   if(id == null){
		BasicDAO.save(bsstudent);
		out.println(JavaScript.alertandRedirect("保存成功", "BsstudentListbj.jsp"));
        }
        else{
          BasicDAO.update(bsstudent);
          out.println(JavaScript.alertandRedirect("修改成功","BsstudentListbj.jsp"));
        }
	} catch (Exception ex) {
		// TODO Auto-generated catch block
		ex.printStackTrace();
		if(id == null){
		out.println(JavaScript.alertandBack("保存失败! 请重试或检查输入!"));
	}
	   else{
	    out.println(JavaScript.alertandBack("修改失败! 请重试或检查输入!"));
	   }
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
