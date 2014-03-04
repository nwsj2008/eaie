package org.apache.jsp.admin.professor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.professor.*;
import com.eaie.tools.*;

public final class ProfessorDel_jsp extends org.apache.jasper.runtime.HttpJspBase
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

		
	String[] ids = request.getParameterValues("id");
	
	if(ids==null||ids.length<1){	
		out.println(JavaScript.alertandBack("非法访问"));		
		return;
	}
	try{
		for(int i = 0 ;i<ids.length; i++){
	
			Professor professor = ProfessorManage.getProfessor(Integer.parseInt(ids[i]));
			
			if(professor!=null){	
				try{			
					
					String sImage = professor.getImageurl();
				    if(sImage!=null){
			
						String filepath = config.getServletContext().getRealPath("/UploadFiles/uppic/"+sImage);					
						java.io.File filetodel = new java.io.File(filepath);
						System.out.println("删除文件：" + filetodel.toString());
						if(filetodel.exists()){
				
							boolean delok = filetodel.delete();					
							if(!delok){											
								out.println(JavaScript.alert("删除附件失败！"));	
							}										
						}				
					}	
					ProfessorManage.DeleteProfessor(professor);
				}catch(Exception ex){
				
					out.println(JavaScript.alert("导师"+ professor.getName()+ "删除失败"));
				}
			}	
	
		}
		out.println(JavaScript.alertandRedirect("删除导师成功！","ProfessorList.jsp"));
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("删除失败"));	
		
	}
	
 
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
