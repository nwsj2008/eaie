package org.apache.jsp.admin.gcxkxt.gcxkinfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.gcxkxt.xkfenye.*;
import com.eaie.common.*;
import com.eaie.admin.commie.*;
import com.eaie.dbmanage.*;

public final class GcshowList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

List list;
	
  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/common/Pager.jsp");
  }

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
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write('\r');
      out.write('\n');

   String idString=request.getParameter("id");
        int tid=Integer.parseInt(idString);
      
      
         Gccourse course =(Gccourse)BasicDAO.queryById(Gccourse.class,tid);
        
        

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gbk\">\r\n");
      out.write("\t\t<title></title>\r\n");
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
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\t\t");
   
		
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			
			GcxkfyList gcxkfyList = new GcxkfyList();
			list = gcxkfyList.getGcxkfyList(curPage,idString);

			Page pager = gcxkfyList.getCurrentPage();
			Iterator it = list.iterator();//遍历list
		
      out.write("\r\n");
      out.write("\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t学号\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(course.getTitle() );
      out.write("选课人员名单\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t<td >\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t   分数\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t");

             
              for(int i=0;i<list.size();i++){
                 Gcxk gcxk = (Gcxk)list.get(i);	
                 Gcstudent gcstudent = (Gcstudent)BasicDAO.queryById(Gcstudent.class,gcxk.getSid());
                 if(gcstudent==null) 
                 {
                    continue;
                 }
	 
      out.write("\t\t\r\n");
      out.write("\t <tr align=\"center\" class=\"tdbg\"\r\n");
      out.write("\t\t\t\t\tonmouseout=\"this.style.backgroundColor=''\"\r\n");
      out.write("\t\t\t\t\tonmouseover=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 280px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((gcstudent.getPwd()==null)?"":gcstudent.getPwd());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 280px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((gcstudent.getName()==null)?"":gcstudent.getName());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 280px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((gcxk.getScore()==null)?"":gcxk.getScore());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\t\t\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t");

	}
	 
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("  <form name=\"pageForm\" action=\"\" method=\"post\">\r\n");
      out.write("\t\t\t<table align=\"center\" width=\"96%\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");
      out.write('\r');
      out.write('\n');
request.setCharacterEncoding("GBK"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("  function Jumping(){\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  function gotoPage(curPage){\r\n");
      out.write("      document.pageForm.curPage.value=curPage;\r\n");
      out.write("      document.pageForm.submit();\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("<center>\r\n");
 
   if(curPage==1){out.print("首页 上一页");}
   else{
      out.write("\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(1)\">首页</a>\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(curPage-1 );
      out.write(")\">上一页</a>\r\n");
      out.write("   ");
} 
   if (curPage==pager.getMaxPage()){out.print("下一页 尾页");}
   else{
      out.write("\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(curPage+1 );
      out.write(")\">下一页</a>\r\n");
      out.write("   <a class=news href=\"javascript:gotoPage(");
      out.print(pager.getMaxPage() );
      out.write(")\">尾页</a>\r\n");
      out.write("   ");
} 
      out.write("\r\n");
      out.write("   转到第<select name=\"curPage\" onchange=\"Jumping()\">\r\n");
      out.write("   ");
 for(int i=1; i<=pager.getMaxPage(); i++){
          if(i==curPage){
      out.write("\r\n");
      out.write("              <option selected value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
          else {
      out.write(" <option value=");
      out.print(i );
      out.write('>');
      out.print(i );
      out.write("</option>\r\n");
      out.write("          ");
}
   }
   
      out.write("\r\n");
      out.write("   </select>页\r\n");
      out.write("   共有");
      out.print(pager.getRowsNum() );
      out.write("条记录 第<font color=\"red\">");
      out.print(curPage );
      out.write("</font>页 共");
      out.print(pager.getMaxPage() );
      out.write("页\r\n");
      out.write(" </center>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
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
