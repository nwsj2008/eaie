package org.apache.jsp.gcteacher.Score;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.gcteacher.*;
import com.eaie.tools.*;
import com.eaie.admin.gcteacher.UserManage;
import java.util.*;
import com.eaie.common.*;

public final class UpdateScr_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");

    int csid=Integer.parseInt(request.getParameter("csid"));
    String hql = "";
	hql = "from Gcxk as gcxk where gcxk.tid ='"+ csid + "'";
	List lista = BasicDAO.queryByHql(hql);
    // int xkid=Integer.parseInt(request.getParameter("xkid"));
	//String score = request.getParameter("score");
	
    //gcxk.setId(xkid);
	//gcxk.setScore(score);
try {
	for (int i=0;i<lista.size();i++)
	{
		Gcxk gcxk=(Gcxk)lista.get(i);
		int xkid=gcxk.getId();
		String gcxkid=gcxk.getId().toString();
		String score=request.getParameter(gcxkid);
		Gcxk gcxkTwo= ( Gcxk )BasicDAO.queryById(Gcxk.class, xkid);
		gcxkTwo.setId(xkid);
		gcxkTwo.setScore(score);
		BasicDAO.update(gcxkTwo);
		
	}
	out.println(JavaScript.alertandRedirect("保存成功", "../score.jsp"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
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
