package org.apache.jsp.admin.professor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.professor.*;
import com.eaie.tools.*;
import com.eaie.common.*;
import java.util.*;

public final class ProfessorList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/professor/../common/Pager.jsp");
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

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>导师列表</title>\r\n");
      out.write("\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<Script Language=JavaScript>\r\n");
      out.write("\tfunction checkall() \r\n");
      out.write("\t{ \tvar num; \r\n");
      out.write("\t\tnum=document.form2.elements.length; \r\n");
      out.write("\t\r\n");
      out.write("\t\tif(document.form2.chkall.checked) \r\n");
      out.write("\t\t{\tvar i; \r\n");
      out.write("\t\t\tfor(i=0;i<num;i++) \r\n");
      out.write("\t\t\tif(document.form2.elements[i].type==\"checkbox\"&&document.form2.elements[i].name!=\"chkall\") \r\n");
      out.write("\t\t\t\tdocument.form2.elements[i].checked = true; \r\n");
      out.write("\t\t\treturn true; \r\n");
      out.write("\t\t} \r\n");
      out.write("\t\telse \r\n");
      out.write("\t\t{ \tvar j; \r\n");
      out.write("\t\t\tfor(i=0;i<num;i++) \r\n");
      out.write("\t\t\tif(document.form2.elements[i].type == \"checkbox\"&&document.form2.elements[i].name!=\"chkall\") \r\n");
      out.write("\t\t\t\tdocument.form2.elements[i].checked = !(document.form2.elements[i].checked); \r\n");
      out.write("\t\t\treturn true; \r\n");
      out.write("\t\t} \r\n");
      out.write("\r\n");
      out.write("\t} \r\n");
      out.write("</Script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		
	ProfessorList plist = new ProfessorList(); 
	List list = plist.getList(curPage);
	Page pager = plist.getCurrentPage();		
	Iterator<Professor> it =list.iterator();
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<form action=\"admin/professor/ProfessorDel.jsp\" method=\"post\" name=\"form2\" id=\"form2\">\r\n");
      out.write(" \t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><input name=\"chkall\" type=\"checkbox\" id=\"chkall\" value=\"checkbox\" onClick=\"checkall();\">\r\n");
      out.write("\t选取所有的导师&nbsp;&nbsp;\r\n");
      out.write("\t<input type=\"submit\" name=\"Submit\" value=\"删除所选的导师\" onClick=\"{if(confirm('确定删除选中的导师吗？')){return true;}return false;}\"></td>\r\n");
      out.write("\t<td align=\"right\"><input type=\"button\" value=\"添加导师\" onClick=\"location.href='ProfessorAdd.jsp'\">\r\n");
      out.write("\t&nbsp;&nbsp;</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write(" ");

 	if(list.size()==0){
 		
 		out.println("<center><h4>没有导师记录，请添加</h4></center>");
 		return;
 	}
 
      out.write("\r\n");
      out.write("<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("<td width=\"35\">选中</td>\r\n");
      out.write("<td width=\"100\">姓名</td>\r\n");
      out.write("<td width=\"40\">性别</td>\r\n");
      out.write("<td width=\"70\">职称</td>\r\n");
      out.write("<td width=\"70\">导师</td>\r\n");
      out.write("<td>学科</td>\r\n");
      out.write("<td width=\"80\">操作</td>\r\n");
      out.write("</tr>\r\n");

		while(it.hasNext()){			
			Professor professor = it.next();
 
      out.write("\r\n");
      out.write("<tr align=\"center\" class=\"tdbg\" onMouseOut=\"this.style.backgroundColor=''\" onMouseOver=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("<td width=\"35\"><input name=\"id\" type=\"checkbox\" id=\"id\" value=\"");
      out.print(professor.getId() );
      out.write("\"></td>\r\n");
      out.write("<td width=\"100\"><a href=\"admin/professor/ProfessorEdit.jsp?id=");
      out.print(professor.getId() );
      out.write('"');
      out.write('>');
      out.print(professor.getName() );
      out.write("</a></td>\r\n");
      out.write("<td width=\"40\">");
if(professor.getSex()!=null&&professor.getSex()>0){ out.println("男");} else {out.println("女");}
      out.write("</td>\r\n");
      out.write("<td width=\"70\">");
      out.print(professor.getDegree()==null?"": professor.getDegree());
      out.write("</td>\r\n");
      out.write("<td width=\"70\">\r\n");

			if(professor.getGradeid().equals(1)){
			
				out.println("院士");
			}
			if(professor.getGradeid().equals(2)){
			
				out.println("博导");
			}
			if(professor.getGradeid().equals(3)){
				
				out.println("硕导");
			}
			if(professor.getGradeid().equals(4)){
				
				out.println("讲师");
			}	
 
      out.write("\r\n");
      out.write("\r\n");
      out.write(" </td>\r\n");
      out.write("<td>");
      out.print(professor.getMajor()==null?"":professor.getMajor() );
      out.write("</td>\r\n");
      out.write("<td width=\"80\"><a href=\"admin/professor/ProfessorEdit.jsp?id=");
      out.print(professor.getId() );
      out.write("\">编辑</a>&nbsp;&nbsp;<a href=\"admin/professor/ProfessorDel.jsp?id=");
      out.print(professor.getId() );
      out.write("\" onClick=\"{if(confirm('确定删除吗？')){return true;}return false;}\">删除</a></td>\r\n");
      out.write("</tr> \r\n");
      out.write("\r\n");

		}

      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<form name=\"pageForm\" action=\"\" method=\"post\">   \r\n");
      out.write(" \t<table align=\"center\" width=\"96%\">\r\n");
      out.write("       <tr><td align=\"center\">         \r\n");
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
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
