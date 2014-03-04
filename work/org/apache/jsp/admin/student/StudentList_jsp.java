package org.apache.jsp.admin.student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.admin.student.*;
import com.eaie.dbmanage.*;
import java.util.*;
import com.eaie.common.*;
import com.eaie.admin.student.*;

public final class StudentList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	List list;
	String sKeyWords,sType;
 
  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/student/../common/Pager.jsp");
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");

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
      out.write("\t<script language = \"JavaScript\">\r\n");
      out.write("\t\tfunction JumpMenu(targ,selObj,restore)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\teval(targ+\".location='\"+selObj.options[selObj.selectedIndex].value+\"'\");\r\n");
      out.write("\t\t\tif (restore) selObj.selectedIndex=0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("<title>学生信息查询</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write('\r');
      out.write('\n');

		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		sKeyWords = request.getParameter("keyword");	
		sType = request.getParameter("type");		
	  	StudentList slist = new StudentList(); 
	  	list = slist.getStudentList(curPage,sType,sKeyWords);	
	  	 		
		Page pager = slist.getCurrentPage();		
		Iterator it =list.iterator();
	  	
 
      out.write("\r\n");
      out.write("<form name=\"form1\" method=\"post\" action=\"admin/student/StudentList.jsp\">\r\n");
      out.write("  <table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td class=\"tdbg\"><table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>&nbsp;<strong>简单查询：</strong>\r\n");
      out.write("\t\t  <select name=\"type\" id=\"type\">\r\n");
      out.write("            <option value=\"stuid\" ");
if(sType!=null&&sType.equalsIgnoreCase("stuid")) out.println("selected"); 
      out.write(">学号</option>\r\n");
      out.write("            <option value=\"name\" ");
if(sType!=null&&sType.equalsIgnoreCase("name")) out.println("selected"); 
      out.write(" >姓名</option>\r\n");
      out.write("            <option value=\"techang\" ");
if(sType!=null&&sType.equalsIgnoreCase("techang")) out.println("selected"); 
      out.write(">特长</option>\r\n");
      out.write("            <option value=\"class\" ");
if(sType!=null&&sType.equalsIgnoreCase("class")) out.println("selected"); 
      out.write(">班级</option>\r\n");
      out.write("            </select>\r\n");
      out.write("            <input name=\"keyword\" type=\"text\" id=\"keyword\" size=\"30\" value=");
      out.print(sKeyWords==null?"":sKeyWords );
      out.write(">\r\n");
      out.write("            <input type=\"submit\" name=\"Submit\" value=\"查&nbsp;询\"></td>\r\n");
      out.write("          <td width=\"200\">\r\n");

	List classlist = StudentManage.getClasses();
	
 
      out.write("\r\n");
      out.write("\t\t  <select name=\"banji\" id=\"banji\" onChange=\"JumpMenu('self',this,0)\">\r\n");
      out.write("      \t\t<option value=\"admin/student/StudentList.jsp\">按班级筛选</option>\r\n");
	for(int i =0 ;i<classlist.size();i++){   
      out.write("\r\n");
      out.write("\t\t\t<option value=\"?type=class&keyword=");
      out.print(classlist.get(i).toString() );
      out.write('"');
      out.write(' ');
if(sKeyWords!=null&&sKeyWords.equalsIgnoreCase(classlist.get(i).toString())) out.println("selected"); 
      out.write('>');
      out.print(classlist.get(i).toString() );
      out.write("</option>\r\n");
	} 
      out.write(" \r\n");
      out.write("      \t\t</select></td>\r\n");
      out.write("          <td width=\"100\" align=\"center\">&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("    <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("      <td width=\"80\">学号</td>\r\n");
      out.write("      <td>姓名</td>\r\n");
      out.write("      <td width=\"40\">性别</td>\r\n");
      out.write("      <td>班级</td>\r\n");
      out.write("      <td>宿舍</td>\r\n");
      out.write("      <td>宿舍电话</td>\r\n");
      out.write("      <td>手机</td>\r\n");
      out.write("      <td>政治面貌</td>\r\n");
      out.write("      <td>困难</td>\r\n");
      out.write("      <td>特长</td>\r\n");
      out.write("    </tr>\r\n");

	while(it.hasNext()){			
		Student student = (Student)it.next();
 
      out.write("\r\n");
      out.write("    <tr align=\"center\" class=\"tdbg\" onMouseOver=\"this.style.backgroundColor='#BFDFFF'\" onMouseOut=\"this.style.backgroundColor=''\">\r\n");
      out.write("      <td width=\"80\"><a href=\"admin/student/StudentInfo.jsp?stuid=");
      out.print(student.getStuid() );
      out.write('"');
      out.write('>');
      out.print(student.getStuid() );
      out.write("</a></td>\r\n");
      out.write("      <td>");
      out.print(student.getName()==null?"": student.getName());
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(student.getSex()==null?"":student.getSex() );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(student.getBanji()==null?"":student.getBanji() );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(student.getDorm()==null?"":student.getDorm() );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(student.getDormtel()==null?"":student.getDormtel() );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(student.getMobiletel()==null?"":student.getMobiletel() );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(student.getParty()==null?"":student.getParty() );
      out.write("</td>\r\n");
      out.write("      <td>");
if(student.getIsaid()!=null&&student.getIsaid().equalsIgnoreCase("1")) out.println("是"); 
      out.write("</td>      \r\n");
      out.write("      <td>");
      out.print(student.getTechang()==null?"": student.getTechang());
      out.write("</td>\r\n");
      out.write("    </tr>\r\n");
 
	}

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<form name=\"pageForm\" action=\"\" method=\"post\">   \r\n");
      out.write(" \t<table align=\"center\" width=\"96%\">\r\n");
      out.write("       <tr><td align=\"center\">\r\n");
      out.write("       <input type=\"hidden\" id=\"keyword\" name=\"keyword\" value=");
      out.print(sKeyWords==null?"":sKeyWords );
      out.write(">  \r\n");
      out.write("       <input type=\"hidden\" id=\"keyword\" name=\"type\" value=");
      out.print(sType==null?"":sType );
      out.write(">       \r\n");
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
      out.write(" </form>\r\n");
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
