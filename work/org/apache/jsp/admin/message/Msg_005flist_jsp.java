package org.apache.jsp.admin.message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.admin.message.*;

public final class Msg_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/message/../common/Pager.jsp");
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    <title>所有站内留言</title>  \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t\r\n");
      out.write("\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t<script language=\"javascript\">\r\n");
      out.write("       \tfunction unselectall()\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t    if(document.form1.chkAll.checked){\r\n");
      out.write("\t\t\t\tdocument.form1.chkAll.checked = document.form1.chkAll.checked&0;\r\n");
      out.write("\t\t\t    } \t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction CheckAll(form)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t  for (var i=0;i<form.elements.length;i++)\r\n");
      out.write("\t\t\t    {\r\n");
      out.write("\t\t\t    var e = form.elements[i];\r\n");
      out.write("\t\t\t    if (e.Name != \"chkAll\"&&e.disabled!=true)\r\n");
      out.write("\t\t\t       e.checked = form.chkAll.checked;\r\n");
      out.write("\t\t\t    }\r\n");
      out.write("\t\t\t}\r\n");
      out.write("</script> \r\n");
      out.write("  </head>\r\n");
      out.write("  ");
		
		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		MessageList mlist = new MessageList();		
		List list = mlist.getMessageListAll(curPage);
		Page pager = mlist.getCurrentPage();
		int no=(curPage-1)*20;	
 
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("  <form action=\"admin/message/Msg_delete.jsp\" method=\"post\" name=\"form1\" id=\"form1\">\r\n");
      out.write(" <table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><input name=\"chkAll\" type=\"checkbox\" id=\"chkAll\" value=\"checkbox\" onClick=\"CheckAll(this.form);\">\r\n");
      out.write("      选取所有的留言&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"submit\" name=\"Submit\" value=\"删除所选留言\" onClick=\"{if(confirm('确定删除选中的留言吗？')){return true;}return false;}\"></td>\r\n");
      out.write("    <td align=\"right\"><input type=\"button\" name=\"Submit2\" value=\"添加留言\" onClick=\"location.href='Msg_new.jsp'\">\r\n");
      out.write("    &nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table width=\"100%\"border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\" class=border>\r\n");
      out.write("\t<tr class=titlebg>\r\n");
      out.write("\t\t<td align=\"center\">选中</td>\r\n");
      out.write("\t\t<td align=\"center\" width=\"25\">序号</td>\r\n");
      out.write("\t\t<td align=\"center\">内容</td>\r\n");
      out.write("\t\t<td align=\"center\" width=\"60\">留给</td>\r\n");
      out.write("\t\t<td align=\"center\" width=\"60\">留言人</td>\r\n");
      out.write("\t\t<td align=\"center\" width=\"140\">留言时间</td>\r\n");
      out.write("    </tr>\r\n");
      out.write(" ");

	if(list.size()>0){
		for(int i=0;i<list.size();i++){		
			Message message = (Message)list.get(i);			
 
      out.write("\r\n");
      out.write("   <tr align=\"center\" class=\"tdbg\" onMouseOut=\"this.style.backgroundColor=''\" onMouseOver=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("    <td width=\"35\"><input name=\"delid\" type=\"checkbox\" id=\"delid\" value=\"");
      out.print(message.getId() );
      out.write("\" onClick=\"unselectall()\"></td>  \r\n");
      out.write("    <td>");
      out.print((no+i+1));
      out.write("</td>\r\n");
      out.write("    <td align=\"left\"><a href=\"admin/message/Msg_reply.jsp?id=");
      out.print(message.getId());
      out.write('"');
      out.write('>');
      out.print(message.getContent() );
      out.write("</a></td>\r\n");
      out.write("    <td>");
      out.print(message.getPart() );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(message.getName()==null?"--":message.getName()  );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(message.getGivetime()==null? "--":message.getGivetime().toString() );
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");

		}
	}
 
      out.write("\r\n");
      out.write(" </table>  \r\n");
      out.write("</form>  \r\n");
      out.write(" <form name=\"pageForm\" action=\"\" method=\"post\">   \r\n");
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
