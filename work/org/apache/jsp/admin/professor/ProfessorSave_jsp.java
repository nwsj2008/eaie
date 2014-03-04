package org.apache.jsp.admin.professor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.professor.*;
import com.eaie.tools.*;

public final class ProfessorSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      com.eaie.dbmanage.Professor professor = null;
      synchronized (_jspx_page_context) {
        professor = (com.eaie.dbmanage.Professor) _jspx_page_context.getAttribute("professor", PageContext.PAGE_SCOPE);
        if (professor == null){
          professor = new com.eaie.dbmanage.Professor();
          _jspx_page_context.setAttribute("professor", professor, PageContext.PAGE_SCOPE);
          out.write('\r');
          out.write('\n');
          out.write('	');
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("professor"), request);
          out.write('\r');
          out.write('\n');
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String id = request.getParameter("id");
	String action = request.getParameter("action");
	

	try {
		MD5 md5 = new MD5();
		if (professor.getPwd() != null) {
			String password = md5.getMD5ofStr(professor.getPwd());
			professor.setPwd(password);
		}
		String imageurl = request.getParameter("fileurl");
		if (imageurl != null) {
			professor.setImageurl(imageurl);
		}
		//TextArea 文本Html编码
		String resume = professor.getResume();
		String field = professor.getField();
		String projects = professor.getProjects();
		String book = professor.getBook();
		String honor = professor.getHonor();
        
		professor.setResume(HtmlEncode.outHtml(resume));
		professor.setField(HtmlEncode.outHtml(field));
		professor.setProjects(HtmlEncode.outHtml(projects));
		professor.setBook(HtmlEncode.outHtml(book));
		professor.setHonor(HtmlEncode.outHtml(honor));

		//添加导师信息
		if (id == null) {
		    String orderid = (professor.getOrderid()==null)?"z":professor.getOrderid();
		  
		   professor.setOrderid(orderid);
			ProfessorManage.SaveProfessor(professor);
			out.println(JavaScript.alertandRedirect("添加导师信息成功!",
					"ProfessorList.jsp"));
		}
		//修改导师信息
		else {
			//未修改密码，保留原始值。
			Professor p = ProfessorManage.getProfessor(Integer
					.parseInt(id));
			if (professor.getPwd() == null) {
				if (p != null)
					professor.setPwd(p.getPwd());
			}
			 String orderid = (professor.getOrderid()==null)?"z":professor.getOrderid();
		  
		   professor.setOrderid(orderid);
			ProfessorManage.UpdateProfessor(professor);
			if (action.equalsIgnoreCase("admin")) {
				out.println(JavaScript.alertandRedirect("修改导师信息成功!",
						"ProfessorList.jsp"));
			}
			if (action.equalsIgnoreCase("teacher")) {

				out.println(JavaScript.alertandBack("修改导师信息成功!"));
			}
		}
	} catch (Exception ex) {

		ex.printStackTrace();

		if (id == null) {
			out.println(JavaScript.alertandBack("添加导师信息失败，请重试或检查输入!"));
		} else {

			out.println(JavaScript.alertandBack("修改导师信息失败，请重试或检查输入!"));
		}
	}

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
