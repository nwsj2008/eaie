package org.apache.jsp.gcstudentxk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.xk.*;
import com.eaie.tools.*;
import com.eaie.common.*;
import java.util.*;
import java.util.List;

public final class addSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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

	String tid = request.getParameter("addid");
	String sid = request.getParameter("sid");
	Gcxk gcxk = new Gcxk();
	Gcxk gcxk1 = new Gcxk();
	String HQL_SID="From Gcxk as gcxk where gcxk.sid='"+sid+"'";
	List list = BasicDAO.queryByHql(HQL_SID);
	int isHave = 0;
	for(int i=0;i<list.size();i++)
	{
	   gcxk1 = (Gcxk)list.get(i);
	   int ttid=gcxk1.getTid();
	   if(ttid==Integer.parseInt(tid))  isHave=1;
	}
	if(isHave==0){
		try {
			    
				gcxk.setSid(Integer.parseInt(sid));
				gcxk.setTid(Integer.parseInt(tid));
			    BasicDAO.save(gcxk);
			    out.println(JavaScript.alertandRedirect("选课成功", "xk.jsp"));

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(JavaScript.alertandBack("选课失败"));
		}
}else{
    out.println(JavaScript.alertandRedirect("该课程已选上,请不要重复选课", "xk.jsp"));
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
