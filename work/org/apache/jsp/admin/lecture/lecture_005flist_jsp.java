package org.apache.jsp.admin.lecture;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.admin.lecture.*;

public final class lecture_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/lecture/../common/Pager.jsp");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>学术活动列表</title>\r\n");

			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";

      out.write("\t\t\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("<script language=\"JavaScript\" src=\"js/lecture.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<Script Language=JavaScript>\r\n");
      out.write("function checkall()     \r\n");
      out.write("{  var num;     \r\n");
      out.write("   num=document.form2.elements.length;     \r\n");
      out.write("        \r\n");
      out.write("   if(document.form2.chkall.checked)     \r\n");
      out.write("   {  var i;     \r\n");
      out.write("      for(i=0;i<num;i++)     \r\n");
      out.write("        if(document.form2.elements[i].type==\"checkbox\"&&document.form2.elements[i].name!=\"chkall\")     \r\n");
      out.write("           document.form2.elements[i].checked = true;     \r\n");
      out.write("      return true;     \r\n");
      out.write("   }     \r\n");
      out.write("   else   \r\n");
      out.write("   {  var j;     \r\n");
      out.write("      for(i=0;i<num;i++)     \r\n");
      out.write("        if(document.form2.elements[i].type == \"checkbox\"&&document.form2.elements[i].name!=\"chkall\")     \r\n");
      out.write("           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     \r\n");
      out.write("      return true;     \r\n");
      out.write("   }     \r\n");
      out.write("     \r\n");
      out.write("}     \r\n");
      out.write("</Script>\r\n");
      out.write("\r\n");

        int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));		
		LectureList lectureList = new LectureList();		
		List list = lectureList.getLectureList(curPage);
		Page pager = lectureList.getCurrentPage(); 

      out.write("\r\n");
      out.write("<form name=\"form2\" method=\"post\" action=\"admin/lecture/lecture_del.jsp\">\r\n");
      out.write("\r\n");
      out.write(" <table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><input name=\"chkall\" type=\"checkbox\" id=\"chkall\" value=\"checkbox\" onClick=\"checkall();\">\r\n");
      out.write("      选取所有的报告&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"submit\" name=\"Submit\" value=\"删除所选的报告\" onClick=\"Confirm()\"></td>\r\n");
      out.write("    <td align=\"right\"><input type=\"button\" name=\"Submit2\" value=\"添加学术报告\" onClick=\"location.href='lecture_add.jsp'\">\r\n");
      out.write("    &nbsp;&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("  <table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("    <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("      <td width=\"35\">选中</td>\r\n");
      out.write("      <td>报告主题</td>\r\n");
      out.write("      <td width=\"100\">发布人</td>\r\n");
      out.write("      <td width=\"140\">发布时间</td>\r\n");
      out.write("    </tr>\r\n");

	for(int i = 0;i<list.size();i++){
	 Lecture lecture = (Lecture)list.get(i);

      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<tr class=\"tdbg\" onMouseOut=\"this.style.backgroundColor=''\" onMouseOver=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("      <td width=\"35\" align=\"center\"><input name=\"delid\" type=\"checkbox\" id=\"delid\" value=\"");
      out.print(lecture.getId());
      out.write("\"></td>\r\n");
      out.write("      <td><a href=\"admin/lecture/lecture_edit.jsp?page=");
      out.print(curPage);
      out.write("&id=");
      out.print(lecture.getId());
      out.write('"');
      out.write('>');
      out.print(lecture.getSubject());
      out.write("</a>\r\n");
      out.write("      ");
 
	      if(lecture.getFileurl() != null){
		      if(!lecture.getFileurl().equals("")){
		      	out.println("<img src=admin/images/attach2.gif width=23 height=16 title=附件："+lecture.getFilename()+">");
		      }
      } 
      out.write("\r\n");
      out.write("      </td>\r\n");
      out.write("      <td width=\"100\" align=\"center\">");
      out.print(lecture.getTeacher());
      out.write("</td>\r\n");
      out.write("      <td width=\"140\" align=\"center\">");
      out.print(lecture.getPubtime());
      out.write("</td>\r\n");
      out.write("    </tr>\r\n");

   }                                                       

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<form name=\"pageForm\" action=\"\" method=\"post\">   \r\n");
      out.write(" \t<table align=\"center\" width=\"96%\">\r\n");
      out.write("       <tr><td align=\"center\">\r\n");
      out.write("       ");
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
      out.write("    \r\n");
      out.write("       </td></tr> \r\n");
      out.write(" \t</table>\r\n");
      out.write(" </form> \r\n");
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
