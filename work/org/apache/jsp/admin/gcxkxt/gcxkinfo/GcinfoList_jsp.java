package org.apache.jsp.admin.gcxkxt.gcxkinfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.admin.commie.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.gcxkxt.gcxkinfo.GcinfoList;

public final class GcinfoList_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=GBK");
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

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gbk\">\r\n");
      out.write("\t\t<title>选课信息查询</title>\r\n");
      out.write("\t\t<link href=\"tm_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\t\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"expires\" content=\"0\">\r\n");
      out.write("\t\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\tfunction JumpMenu(targ,selObj,restore)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\teval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");\r\n");
      out.write("\t\t\tif (restore) selObj.selectedIndex=0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");

			String nian="";
		int Nian = Integer.parseInt(request.getParameter("term"));
		switch(Nian){
		case 1: 
		     nian = "2009上";
		     break;
		case 2: 
		    nian = "2009下";
		     break;
		case 3: 
		    nian = "2010上";
		     break;
		case 4: 
		    nian = "2010下";
		     break;
		case 5: 
		     nian = "2011上";
		     break;
		case 6: 
		     nian = "2011下";
		     break;
		case 7: 
		     nian = "2012上";
		     break;
		case 8: 
		     nian = "2012下";
		     break;
		case 9: 
		     nian = "2013上";
		     break;
		case 10: 
		     nian = "2013下";
		     break;                                        
		}
		
		 
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t课程名称\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t授课教师\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t选课人数\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t查看选课人员名单\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

				//String hsql = "select DISTINCT tid from Gcxk";
				List list = BasicDAO.queryByHql("From Gccourse gk where gk.nian='"+nian+"'"); //直接从课程中选，没人选的课也須打印出来
                if (list.size() > 0) {
			
				for (int i = 0; i < list.size(); i++) {
							Gccourse gccourse = (Gccourse) list.get(i);
					
					String sql = "From Gcxk gc where gc.tid = '" + gccourse.getId() + "'";
					int m = (Integer)BasicDAO.queryByHql(sql).size();
				
			
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\" class=\"tdbg\"\r\n");
      out.write("\t\t\t\tonmouseout=\"this.style.backgroundColor=''\"\r\n");
      out.write("\t\t\t\tonmouseover=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\t\tstyle=\"width: 120px; overflow: hidden; text-overflow: ellipsis;\">\r\n");
      out.write("\t\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t\t");
      out.print((gccourse.getTitle() == null) ? "" : gccourse
						.getTitle());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\t\tstyle=\"width: 120px; overflow: hidden; text-overflow: ellipsis;\">\r\n");
      out.write("\t\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t\t");
      out.print((gccourse.getTeacher() == null) ? "" : gccourse
						.getTeacher());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\t\tstyle=\"width: 120px; overflow: hidden; text-overflow: ellipsis;\">\r\n");
      out.write("\t\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t\t");
      out.print(m);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\t\tstyle=\"width: 120px; overflow: hidden; text-overflow: ellipsis;\">\r\n");
      out.write("\t\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<a href=\"admin/gcxkxt/gcxkinfo/GcshowList.jsp?id=");
      out.print(gccourse.getId());
      out.write("\">点击查看</a>\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

			}
				}
			
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t");
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
