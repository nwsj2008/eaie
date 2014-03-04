package org.apache.jsp.message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.dbmanage.Message;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tools.*;

public final class MsgSave_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      com.eaie.dbmanage.Message message = null;
      synchronized (_jspx_page_context) {
        message = (com.eaie.dbmanage.Message) _jspx_page_context.getAttribute("message", PageContext.PAGE_SCOPE);
        if (message == null){
          message = new com.eaie.dbmanage.Message();
          _jspx_page_context.setAttribute("message", message, PageContext.PAGE_SCOPE);
          out.write('\r');
          out.write('\n');
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("message"), request);
          out.write('\r');
          out.write('\n');
        }
      }
      out.write("\r\n");
      out.write("\r\n");

	String id = request.getParameter("id");
	if(id!=null){
		message.setGivetime(new Date());
		try{
			BasicDAO.save(message);
			out.println(JavaScript.alertandRedirect("添加留言成功！","MsgShow.jsp?id="+id+"&type=2"));		
		}catch(Exception ex){
			out.println(JavaScript.alertandRedirect("添加留言失败！","MsgShow.jsp?id="+id+"&type=2"));	
			out.println(ex.getMessage());	
		}
	}
	else{		
				
			Message msg = (Message)BasicDAO.queryById(Message.class,Integer.parseInt(id));
			msg.setReply(request.getParameter("reply"));
			msg.setReplytime(new Date());
			msg.setTeacher(request.getParameter("teacher"));
            msg.setIp(request.getRemoteAddr());
			if(msg!=null){						
				try{
					BasicDAO.update(msg);
					out.println(JavaScript.alertandRedirect("回复留言成功！","MsgShow.jsp?id="+id+"&type=2"));	
				}catch(Exception ex){	
					out.println(ex.getMessage());
					out.println(JavaScript.alertandRedirect("回复留言失败！","MsgShow.jsp?id="+id+"&type=2"));	
				}
			}else{
			
				out.println(JavaScript.alertandRedirect("要修改的留言不存在！","MsgShow.jsp?id="+id+"&type=2"));	
			}	
	}
 
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
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
