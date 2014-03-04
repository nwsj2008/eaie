package org.apache.jsp.upload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.jspsmart.upload.*;
import com.eaie.tools.*;

public final class upsinglepic_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String sFileName, sFileUrl,sFileSize, sAction;
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
      response.setContentType("text/html;charset=GB2312");
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
      net.fiyu.edit.TimeStamp date = null;
      synchronized (_jspx_page_context) {
        date = (net.fiyu.edit.TimeStamp) _jspx_page_context.getAttribute("date", PageContext.PAGE_SCOPE);
        if (date == null){
          date = new net.fiyu.edit.TimeStamp();
          _jspx_page_context.setAttribute("date", date, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";   

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
    
	sFileName =request.getParameter("filename");
	sFileUrl = request.getParameter("fileurl");
	sFileSize = request.getParameter("filesize");
	sAction = request.getParameter("action");
	

      out.write("\r\n");
      out.write("<html>   \r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<TITLE>文件上传</TITLE>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">     \r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<style type=\"text/css\">\");\r\n");
      out.write("\t\t body, a, table, div, span, td, th, input, select,legend{font:9pt;font-family: \"宋体\", Verdana, Arial, Helvetica, sans-serif;}\r\n");
      out.write("\t\t body {padding:0px;margin:0px;background-color:transparent;}\");\r\n");
      out.write("\t\t</style>\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t  function CheckUpForm(){\t\t  \t\r\n");
      out.write("\t\t   \tvar upform = document.upfile;\t  \r\n");
      out.write("\t\t   \tvar IsSelectFile = upform.originalfile.value;\r\n");
      out.write("\t\t   \tvar name= IsSelectFile.substring(IsSelectFile.lastIndexOf(\".\"),IsSelectFile.length);\t\t   \r\n");
      out.write("\t\t  \tif(IsSelectFile==\"\"){\t  \t  \r\n");
      out.write("\t\t   \t\talert(\"请选择文件!\");\t\r\n");
      out.write("\t\t   \t\treturn false;\t\r\n");
      out.write("\t\t   \t}\r\n");
      out.write("\t\t   \tif (name==\".asp\"||name==\".aspx\"||name==\".exe\"||name==\".ASP\"||name==\"\"||name==\".ASPX\"||name== \".EXE\"||name== \".jsp\"||name==\".JSP\")   \r\n");
      out.write("\t\t\t{   \r\n");
      out.write("\t\t\t\talert(\"限制上传的文件类型！\");   \r\n");
      out.write("\t\t\t\treturn false;   \r\n");
      out.write("\t\t\t}   \r\n");
      out.write("\t\t \tif (name!=\".gif\" && name!=\".jpg\"&&name!=\".jpeg\"&&name!=\".JPEG\"&&name!=\"\"&&name!=\".JPG\"&&name!= \".GIF\"&&name !=\".bmp\"&&name!=\".BMP\")   \r\n");
      out.write("\t\t  \t{   \r\n");
      out.write("\t\t    \talert(\"请上传图片文件（gif/jpg/jpeg/bmp）！\");   \r\n");
      out.write("\t\t    \treturn false;   \r\n");
      out.write("\t\t  \t}   \r\n");
      out.write("\t\t   \t\r\n");
      out.write("\t\t  }\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");

	if (sAction == null) {
	
		//清空父窗口表单中的值
		out.print("<script>parent.document.myform.filename.value ='';</script>");	
		out.print("<script>parent.document.myform.fileurl.value ='';</script>");	
		out.print("<script> if(parent.document.myform.filesize!=null){ parent.document.myform.filesize.value ='';}</script>");	
	
      out.write("\r\n");
      out.write("\t<form name=upfile type=file method=post action=\"upload/upsinglepic.jsp?action=save\"\r\n");
      out.write("\t\tenctype=\"multipart/form-data\">\r\n");
      out.write("\t\t<table border=0 cellpadding=0 cellspacing=0 align=left width=100%>\r\n");
      out.write("\t\t\t<tr >\r\n");
      out.write("\t\t\t\t<td>\t\r\n");
      out.write("\t\t\t\t\t<input name=\"upfile\" type=\"file\" onchange=\"originalfile.value=this.value\"%>\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<input name=\"ok\" type=\"submit\" \tvalue=\"上传\"\" onclick=\"return CheckUpForm()\">\r\n");
      out.write("\t\t\t\t\t<input name=\"originalfile\" type=\"hidden\" value=\"\">\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t    </td>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t");

				 
	} else {
			
		if (sAction.equalsIgnoreCase("save")) {
			SmartUpload su = new SmartUpload();
			su.initialize(pageContext);
			su.upload();			
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			boolean IsMissing = file.isMissing();
			if (!IsMissing) {
			
				String FileName = (String) date.Time_Stamp() + "." + file.getFileExt();		
				String OriginalFileName = file.getFileName();
				String FileUrl = "/UploadFiles/uppic/" + FileName;
				String FileSize = String.valueOf(file.getSize());
				file.saveAs(FileUrl);	
				//sendRedirect,URL传中文乱码，采用js方法					
				String ShowFilePage ="upsinglepic.jsp?action=show&filename=" + OriginalFileName + "&fileurl=" + FileName+"&filesize="+FileSize;		
	
      out.write("\r\n");
      out.write("\t\t\t<script> \t\t\t\t\r\n");
      out.write("\t\t\t\twindow.location.href='");
      out.print(ShowFilePage );
      out.write("';\t\t\t\r\n");
      out.write("\t\t\t</script>\r\n");
      out.write("\t");
 
					
			}else{				
				out.println("上传失败！请重新上传。&nbsp;<A href=\"upload/upsinglepic.jsp\">上传</A>");	
			}	
		}
		if (sAction.equalsIgnoreCase("show")) {		
		
		 	if(sFileName==null||sFileUrl==null){	
		 	
		 		out.print("<script> window.location.href='upsinglepic.jsp'</script>");		 	
		
			}else if(sFileName.equalsIgnoreCase("")||sFileUrl.equalsIgnoreCase("")){			
				out.print("<script> window.location.href='upsinglepic.jsp'</script>");		 	
		
			}else{			
				out.print("<script> parent.document.myform.fileurl.value ='" + sFileUrl + "';</script>");
				out.print("<script> parent.document.myform.filename.value ='" + sFileName +"';</script>");	
				out.print("<script> if(parent.document.myform.filesize!=null){ parent.document.myform.filesize.value ='" + sFileSize +"';}</script>");				
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<form name=showfile type=file method=post action=\"upload/upsinglepic.jsp?action=delete\">\t    \r\n");
      out.write("\t\t<table border=0 cellpadding=0 cellspacing=0 align=left width=\"100%\">\r\n");
      out.write("\t\t\t<tr>\t\t\t\t\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t \t");
      out.print( sFileName );
      out.write("<input name=\"deletefile\" type=\"submit\" value=\"删除\" onclick=\"return confirm('确定删除吗？')\">\r\n");
      out.write("\t\t\t\t</td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\t\t\t\t\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t \t<input name=\"fileurl\" type=\"hidden\" value=\"");
      out.print(sFileUrl );
      out.write("\"> \r\n");
      out.write("\t\t\t\t</td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\t\t\r\n");
      out.write("\t</form>\r\n");
      out.write("\t");

			}
		}
		if(sAction.equalsIgnoreCase("delete")){			
					
			if(sFileUrl!=null){
			
				String filepath = config.getServletContext().getRealPath("/UploadFiles/uppic/"+sFileUrl);					
				java.io.File filetodel = new java.io.File(filepath);
				System.out.println("删除文件：" + filetodel.toString());
				if(filetodel.exists()){
				
					boolean delok = filetodel.delete();					
					if(delok){	
					
						out.println(JavaScript.alertandRedirect("删除成功！","upsinglepic.jsp"));	
					}else{						
						out.println(JavaScript.alertandBack("删除失败！"));	
					}										
				}				
			}else{				
				out.println(JavaScript.alertandBack("文件不存在！"));		
			}					
		}	

	}
	
      out.write("\t\r\n");
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
