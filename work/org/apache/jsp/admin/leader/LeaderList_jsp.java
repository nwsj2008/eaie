package org.apache.jsp.admin.leader;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.admin.leader.*;
import java.util.*;

public final class LeaderList_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=gbk");
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

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t<title>领导信息列表</title>\r\n");
      out.write("\r\n");
      out.write("\t\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"expires\" content=\"0\">\r\n");
      out.write("\t\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<Script Language=JavaScript>\r\n");
      out.write("\t\t\tfunction checkall()     \r\n");
      out.write("\t\t\t{  var num;     \r\n");
      out.write("\t\t\t   num=document.form2.elements.length;     \r\n");
      out.write("\t\t\t        \r\n");
      out.write("\t\t\t   if(document.form2.chkall.checked)     \r\n");
      out.write("\t\t\t   {  var i;     \r\n");
      out.write("\t\t\t      for(i=0;i<num;i++)     \r\n");
      out.write("\t\t\t        if(document.form2.elements[i].type==\"checkbox\"&&document.form2.elements[i].name!=\"chkall\")     \r\n");
      out.write("\t\t\t           document.form2.elements[i].checked = true;     \r\n");
      out.write("\t\t\t      return true;     \r\n");
      out.write("\t\t\t   }     \r\n");
      out.write("\t\t\t   else   \r\n");
      out.write("\t\t\t   {  var j;     \r\n");
      out.write("\t\t\t      for(i=0;i<num;i++)     \r\n");
      out.write("\t\t\t        if(document.form2.elements[i].type == \"checkbox\"&&document.form2.elements[i].name!=\"chkall\")     \r\n");
      out.write("\t\t\t           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     \r\n");
      out.write("\t\t\t      return true;     \r\n");
      out.write("\t\t\t   }     \r\n");
      out.write("\t\t\t     \r\n");
      out.write("\t\t\t}     \r\n");
      out.write("\t\t\t</Script>\r\n");

		int curPage = (request.getParameter("curPage") == null ? 1
				: Integer.parseInt(request.getParameter("curPage")));		
		LeaderList leaderList = new LeaderList();		
		List list =BasicDAO.queryByHql("FROM Leader");
		


      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<form action=\"servlet/DelLeader\" method=\"post\" name=\"form2\"\r\n");
      out.write("\t\t\tid=\"form2\">\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"6\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"chkall\" type=\"checkbox\" id=\"chkall\" value=\"checkbox\"\r\n");
      out.write("\t\t\t\t\t\t\tonclick=\"checkall();\">\r\n");
      out.write("\t\t\t\t\t\t选取所有的领导&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"删除所选的领导\"\r\n");
      out.write("\t\t\t\t\t\t\tonclick=\"{if(confirm('确定删除选中的用户吗？')){return true;}return false;}\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"button\" name=\"Submit2\" value=\"添加领导\"\r\n");
      out.write("\t\t\t\t\t\t\tonClick=\"location.href='LeaderAdd.jsp'\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t\t选中\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t\t序号\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\">\r\n");
      out.write("\t\t\t\t\t\t姓名\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t职务\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t办公地点\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t联系电话\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t电子邮箱\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Leader leader = (Leader) list.get(i);
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"tdbg\"\r\n");
      out.write("\t\t\t\t\tonmouseout=\"this.style.backgroundColor=''\"\r\n");
      out.write("\t\t\t\t\tonmouseover=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t\t<input name=\"delid\" type=\"checkbox\" id=\"delid\" value=\"");
      out.print(leader.getId() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t\tp");
      out.print(i);
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"admin/leader/LeaderEdit.jsp?id=");
      out.print(leader.getId());
      out.write('"');
      out.write('>');
      out.print(leader.getName());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(leader.getPost());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(leader.getAddress());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(leader.getTel());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(leader.getEmail());
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");

						}
					}
				 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
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
