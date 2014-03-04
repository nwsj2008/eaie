package org.apache.jsp.upload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.jspsmart.upload.*;
import com.eaie.tools.*;
import java.io.File;

public final class uploadpic_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	 String  sPicUrl, sAction;	    
     String[] sPics;

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
    		
	sPicUrl = request.getParameter("picurl");
	sAction = request.getParameter("action");	

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>上传图片</title>\r\n");
      out.write("\t<base href=\"");
      out.print(basePath);
      out.write("\">     \r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t<style type=\"text/css\">\");\r\n");
      out.write("\t\t body, a, table, div, span, td, th, input, select,legend{font:9pt;font-family: \"宋体\", Verdana, Arial, Helvetica, sans-serif;}\r\n");
      out.write("\t\t body {padding:0px;margin:0px;background-color: #FEFFED;}\");\t\r\n");
      out.write("\t</style>\t\r\n");
      out.write(" \t<script type=\"text/javascript\"> \r\n");
      out.write("\t    function PicCheck(){\r\n");
      out.write("\t         \r\n");
      out.write("\t      var picnum = document.uppic.upcount.value;     \r\n");
      out.write("\t      for(i=1;i<=picnum;i++){     \r\n");
      out.write("\t       \r\n");
      out.write("\t          var picid = \"pic\" + i;\r\n");
      out.write("\t          var picname = document.getElementById(picid).value;         \r\n");
      out.write("\t\t      if (picname== \"\"){\r\n");
      out.write("\t\t\t   \talert(\"请选择要上传的图片!\");\r\n");
      out.write("\t\t\t  \treturn false;\r\n");
      out.write("\t\t\t  }\r\n");
      out.write("\t\t  \t  var name=picname.substring(picname.lastIndexOf(\".\"),picname.length);   \r\n");
      out.write("\t\t\t  if (name!=\".gif\" && name!=\".jpg\"&&name!=\".jpeg\"&&name!=\".JPEG\"&&name!=\"\"&&name!=\".JPG\"&&name!= \".GIF\"&&name !=\".bmp\"&&name!=\".BMP\")   \r\n");
      out.write("\t\t\t  {   \r\n");
      out.write("\t\t\t    alert(\"请上传图片文件（gif/jpg/jpeg/bmp）！\");   \r\n");
      out.write("\t\t\t    return false;   \r\n");
      out.write("\t\t\t  }   \r\n");
      out.write("\t\t  }\r\n");
      out.write("\t    }\r\n");
      out.write("\t    function SetUpload(){       　\r\n");
      out.write("\t      var picnum = document.uppic.upcount.value;\r\n");
      out.write("\t      if(picnum<1){\r\n");
      out.write("\t       \talert('请输入大于0的整数'); \r\n");
      out.write("\t       \treturn false;     \r\n");
      out.write("\t      }\r\n");
      out.write("\t      else{      \t\r\n");
      out.write("\t      \tstr='';\t\t\r\n");
      out.write("\t\t\tfor(i=1;i<=picnum;i++){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\tstr+='图片'+i+'：<input type=\"file\" name=\"pic' + i +'\" id =\"pic'+ i + '\" style=\"width:250\"><br>';\r\n");
      out.write("\t\t\t\twindow.upid.innerHTML=str;//+'<br>';\r\n");
      out.write("\t\t\t}      \r\n");
      out.write("\t      }\r\n");
      out.write("\t      parent.AutoIframe();\r\n");
      out.write("\t    }\r\n");
      out.write(" \r\n");
      out.write(" \t</script>\r\n");
      out.write(" \t\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
 
  	if(sAction==null){
  		
  		//清空父窗口表单中的值
		out.print("<script>parent.document.myform.imageurl.value ='';</script>");	

      out.write("\r\n");
      out.write("<form action=\"upload/uploadpic.jsp?action=save\" method=\"post\" name=\"uppic\" enctype=\"multipart/form-data\">\r\n");
      out.write("  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\" align=\"left\">\r\n");
      out.write("    <tr bgcolor=\"#9EBEF5\"> \r\n");
      out.write("      <td align=\"center\">添加新闻图片</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr align=\"left\" bgcolor=\"#eeecee\"> \r\n");
      out.write("      <td align=\"left\"> 需要上传的个数 ：\r\n");
      out.write("          <input type=\"text\" name=\"upcount\" value=\"1\" size=5 onchange=\"SetUpload();\" onKeypress=\"if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;\">        \r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr> \r\n");
      out.write("      <td id=\"upid\" align=\"left\"> 图片1：\r\n");
      out.write("        <input type=\"file\" name =\"pic1\" id=\"pic1\" width=120>\r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr align=\"center\" bgcolor=\"#9EBEF5\"> \r\n");
      out.write("      <td> \r\n");
      out.write("        <input type=\"submit\" value=\"上传\" onClick=\"return PicCheck()\">      \r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table> \r\n");
      out.write("</form>\r\n");

   }else{  
   		if(sAction.equalsIgnoreCase("save")){
        
	     	SmartUpload su = new SmartUpload();
			su.initialize(pageContext);
			su.upload();
			
			int piccount = su.getFiles().getCount();
			//System.out.println(piccount);		
			sPicUrl = "";
			for(int i=0;i<piccount;i++){
				com.jspsmart.upload.File file = su.getFiles().getFile(i);
	    		boolean IsMissing = file.isMissing();
				if (!IsMissing) {	
		
					//生成随机文件名
					String FileName = (String) date.Time_Stamp().substring(0,date.Time_Stamp().length()-1)+ i + "." + file.getFileExt();			
		    		String FileUrl = "/UploadFiles/uppic/" + FileName;	    		
					file.saveAs(FileUrl);
					if(!sPicUrl.equals("")){					
						sPicUrl += "|" +FileName;
					}else{				
						sPicUrl = FileName;
					}
					//
				
				
				}else{
					out.println(JavaScript.alertandBack("上传失败！"));
				}
			}			
			response.sendRedirect("uploadpic.jsp?action=show&picurl=" + sPicUrl);	
		}

      out.write("\r\n");
      out.write("\r\n");

	    if(sAction.equalsIgnoreCase("delete")){    
	    
	       for(int i = 0; i<sPics.length; i++){  
	       	       	 
	       	String picpate = config.getServletContext().getRealPath("/UploadFiles/uppic/"+sPics[i]);
	       	File pic = new File(picpate);
	       	if(pic.exists()){ 
				boolean delok = pic.delete();					
				if(delok){		
					
					out.println(JavaScript.alertandRedirect("删除成功！","uploadpic.jsp"));	
					
				}else{
					
					out.println(JavaScript.alertandBack("删除失败！"));
	       	   	}
	       	}      
	      }
	    }
	 	if(sAction.equalsIgnoreCase("show")){
 
      out.write("\r\n");
      out.write(" <form action=\"upload/uploadpic.jsp?action=delete\" method=\"post\" name=\"uppic\">\r\n");
      out.write("    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\" align=\"left\">\r\n");
      out.write("     <tr bgcolor=\"#9EBEF5\"> \r\n");
      out.write("        <td align=\"center\" colspan=2>已添加新闻图片</td>\r\n");
      out.write("     </tr>    \r\n");
  
	  		if(sPicUrl==null){ 
	  			out.print("<script> window.location.href='uploadpic.jsp'</script>");	
	  		}else if(sPicUrl.equalsIgnoreCase("")){ 
	  			out.print("<script> window.location.href='uploadpic.jsp'</script>");
	  		
    		}else{
	  			sPics = sPicUrl.split("\\|");
	  			out.print("<script> parent.document.myform.imageurl.value ='" + sPicUrl + "'</script>");	  				
	 			for(int i = 0; i<sPics.length; i++){  

      out.write("    \r\n");
      out.write("    <tr> \r\n");
      out.write("      <td align=\"right\" width=\"100\"> 图片");
      out.print(i+1 );
      out.write(":</td>\r\n");
      out.write("      <td align=\"left\" width=\"200\">");
      out.print(sPics[i] );
      out.write("</td>         \r\n");
      out.write("    </tr> \r\n");
      out.write("    \r\n");
 				}

      out.write("\r\n");
      out.write("\t<tr bgcolor=\"#9EBEF5\"> \r\n");
      out.write("      <td align=\"center\" colspan=2><input type=submit value=\" 删除 \"　name=\"deletepic\" onclick=\"return confirm('确定删除吗？')\"></td>\r\n");
      out.write("    </tr>  \r\n");
 
    			
    		}
    	}	

      out.write("\r\n");
      out.write("  </table> \r\n");
      out.write("</form>\r\n");
 		
	}	

      out.write("  \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
