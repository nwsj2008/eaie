package org.apache.jsp.admin.dailyfiles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.tools.*;
import com.eaie.common.*;
import com.eaie.admin.users.*;

public final class Upload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	String sAction;
	Teacher user;
 
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

    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("<script language = \"JavaScript\">\r\n");
      out.write("\tfunction formCheck()\r\n");
      out.write("\t{\t\t\t\r\n");
      out.write("\t\tif (document.myform.bigclassid.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"请选择发布版块!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\tif (document.myform.filename.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"请先上传文件!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t} \t\t\t\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\t\t\r\n");
      out.write("<title>上传常用资料</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write('\r');
      out.write('\n');
      out.write(' ');

 	sAction = request.getParameter("action");
 	user = (Teacher)session.getAttribute("USER"); 	
 	
 	if(sAction==null){
  
      out.write("\r\n");
      out.write("<form name=\"myform\" method=\"post\" action=\"admin/dailyfiles/Upload.jsp?action=save\" onSubmit=\"return formCheck()\">\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<table width=\"450\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("      <tr align=\"center\">\r\n");
      out.write("        <td colspan=\"2\" class=\"titlebg\">上传常用资料</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr class=\"tdbg\">\r\n");
      out.write("        <td width=\"80\">发布版块：</td>\r\n");
      out.write("        <td>\r\n");
      out.write("\t\t<select name=\"bigclassid\" id=\"bigclassid\">\r\n");
      out.write("          <option value=\"\" selected>请选择发布版块</option>\t\r\n");

		if(UserManage.HasRight(2,user)){ 
 
      out.write("\t\r\n");
      out.write("          <option value=\"2\">本科生工作</option>\t\r\n");
      out.write(" ");
		} 
 		if(UserManage.HasRight(3,user)){ 
 
      out.write("\t\t\r\n");
      out.write("\t\t  <option value=\"3\">研究生工作</option>\t\r\n");

		}
		if(UserManage.HasRight(4,user)){ 

      out.write("\r\n");
      out.write("\t\t  <option value=\"4\">科学研究</option>\r\n");

		}
		if(UserManage.HasRight(6,user)){ 
 
      out.write("\r\n");
      out.write("\t\t  <option value=\"6\">就业专栏</option>\t\t\r\n");

		}

      out.write("\t\r\n");
      out.write("        </select>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr class=\"tdbg\">\r\n");
      out.write("        <td>添加文件：</td>\r\n");
      out.write("        <td>\r\n");
      out.write("        \t<input type=hidden name=\"filename\" value=\"\">\r\n");
      out.write("\t\t\t<input type=hidden name=\"fileurl\" value=\"\">\r\n");
      out.write("\t\t\t<input type=hidden name=\"filesize\" value=\"\">\r\n");
      out.write("\t\t\t<input type=hidden name=\"teacher\" value=\"");
      out.print(user.getTeacher() );
      out.write("\">\r\n");
      out.write("\t\t\t<input type=hidden name=\"part\" value=\"");
      out.print(user.getPart() );
      out.write("\">\r\n");
      out.write("\t\t\t<input type=hidden name=\"downnum\" value=\"0\">\r\n");
      out.write("        \t<iframe src=\"upload/uploadfile.jsp\" height=\"25\" frameborder=\"0\" width=\"100%\" scrolling=\"no\" allowtransparency=\"yes\"> </iframe>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr> \r\n");
      out.write("      <tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("        <td colspan=\"2\">\r\n");
      out.write("        <input type=\"submit\" name=\"Submit\" value=\"提&nbsp;交\">&nbsp;&nbsp;\r\n");
      out.write("        <input type=\"button\"  value=\"取&nbsp;消\" onClick=\"javascript:location.href='FileList.jsp'\">\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");

	}else{

      out.write('\r');
      out.write('\n');
      com.eaie.dbmanage.Upfile upfile = null;
      synchronized (_jspx_page_context) {
        upfile = (com.eaie.dbmanage.Upfile) _jspx_page_context.getAttribute("upfile", PageContext.PAGE_SCOPE);
        if (upfile == null){
          upfile = new com.eaie.dbmanage.Upfile();
          _jspx_page_context.setAttribute("upfile", upfile, PageContext.PAGE_SCOPE);
          out.write('\r');
          out.write('\n');
          out.write('	');
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("upfile"), request);
          out.write('\r');
          out.write('\n');
        }
      }
      out.write('\r');
      out.write('\n');

		
		upfile.setUptime(new java.util.Date());	
		String sfilesize="";	
		int ifilesize = Integer.valueOf(upfile.getFilesize());
		//计算文件大小
		if(ifilesize>1048576){		
			ifilesize /=1024 ;
			ifilesize /=1024 ;
			sfilesize = String.valueOf(ifilesize) + "&nbsp;MB";
		
		}else if(ifilesize<=1024){	
			sfilesize = String.valueOf(ifilesize) + "&nbsp;Byte";
		}else{
			ifilesize /=1024 ;
			sfilesize = String.valueOf(ifilesize) + "&nbsp;KB";
		}
		
		upfile.setFilesize(sfilesize);
		try{
			BasicDAO.save(upfile);
			out.println(JavaScript.alertandRedirect("提交成功！","FileList.jsp"));
		}catch(Exception ex){
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("提交失败，请检查数据！"));
		}
	
	}
 
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
