package org.apache.jsp.admin.tqgbxt.tqgbstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.admin.commie.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tqgbxt.tqgbstudent.*;

public final class TqgbstudentListSq_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

List list;
	String cKeyWords, csearchpart;
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
      out.write("\t\t<title>提前攻博生申请信息查询</title>\r\n");
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
      out.write("\t\t<Script Language=JavaScript>\r\n");
      out.write("\t\tfunction checkall()     \r\n");
      out.write("\t\t{  var num;     \r\n");
      out.write("\t\t   num=document.form2.elements.length;     \r\n");
      out.write("\t\t        \r\n");
      out.write("\t\t   if(document.form2.chkall.checked)     \r\n");
      out.write("\t\t   {  var i;     \r\n");
      out.write("\t\t      for(i=0;i<num;i++)     \r\n");
      out.write("\t\t        if(document.form2.elements[i].type==\"checkbox\"&&document.form2.elements[i].name!=\"chkall\")     \r\n");
      out.write("\t\t           document.form2.elements[i].checked = true;     \r\n");
      out.write("\t\t      return true;     \r\n");
      out.write("\t\t   }     \r\n");
      out.write("\t\t   else   \r\n");
      out.write("\t\t   {  var j;     \r\n");
      out.write("\t\t      for(i=0;i<num;i++)     \r\n");
      out.write("\t\t        if(document.form2.elements[i].type == \"checkbox\"&&document.form2.elements[i].name!=\"chkall\")     \r\n");
      out.write("\t\t           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     \r\n");
      out.write("\t\t      return true;     \r\n");
      out.write("\t\t   }     \r\n");
      out.write("\t\t     \r\n");
      out.write("\t\t}     \r\n");
      out.write("\t\t</Script>\r\n");
      out.write("\t\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t");

			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			TqgbstudentList tqgbstudentList = new TqgbstudentList();
			list = tqgbstudentList.getTqgbstudentList(curPage, csearchpart,
					cKeyWords);

			Page pager = tqgbstudentList.getCurrentPage();
			Iterator it = list.iterator();
		
      out.write("\r\n");
      out.write("\t\t<form name=\"form1\" method=\"post\" action=\"admin/commie/CommieList.jsp\">\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<form name=\"form2\" method=\"post\"\r\n");
      out.write("\t\t\taction=\"admin/tqgbxt/tqgbstudent/TqgbstudentDel.jsp\">\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t   <td width=\"35\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t选中\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t姓名\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t学号\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t性别</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t硕士专业</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t拟报博士专业</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t原硕导</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t拟报博导</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t学位课加权成绩排名</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t备注</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t联系方式</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t操作</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Tqgb tqgb = (Tqgb) list.get(i);
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"tdbg\"\r\n");
      out.write("\t\t\t\t\tonmouseout=\"this.style.backgroundColor=''\"\r\n");
      out.write("\t\t\t\t\tonmouseover=\"this.style.backgroundColor='#BFDFFF'\">\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t\t<input name=\"id\" type=\"checkbox\" id=\"id\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(tqgb.getId());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a\r\n");
      out.write("\t\t\t\t\t\t\thref=\"admin/tqgbxt/tqgbstudent/TqgbstudentList.jsp?id=");
      out.print(tqgb.getId());
      out.write('"');
      out.write('>');
      out.print((tqgb.getName()==null)?"":tqgb.getName());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t</nobr></div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 100px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getXuehao() == null) ? ""
							: tqgb.getXuehao());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</nobr></div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getSex() == null) ? ""
							: tqgb.getSex());
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</nobr></div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getSszy()==null)?"":tqgb.getSszy());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getNbzy()==null)?"":tqgb.getNbzy());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 80px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getSd()==null)?"":tqgb.getSd());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getNbbd()==null)?"":tqgb.getNbbd());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getCjpm()==null)?"":tqgb.getCjpm());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getBeizhu()==null)?"":tqgb.getBeizhu());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getTel()==null)?"":tqgb.getTel());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\t\t\r\n");
      out.write("\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t <td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"admin/tqgbxt/tqgbstudent/TqgbstudentList.jsp?id=");
      out.print(tqgb.getId());
      out.write("\">查看</a>\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");

					}
					}
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"6\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"chkall\" type=\"checkbox\" id=\"chkall\" value=\"checkbox\"\r\n");
      out.write("\t\t\t\t\t\t\tonclick=\"checkall();\">\r\n");
      out.write("\t\t\t\t\t\t选取所有的提前攻博生&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"删除所选条目\"\r\n");
      out.write("\t\t\t\t\t\t\tonclick=\"{if(confirm('确定删除选中的提前博生吗？')){return true;}return false;}\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t<form name=\"pageForm\" action=\"\" method=\"post\">\r\n");
      out.write("\t\t\t<table align=\"center\" width=\"96%\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" id=\"keyword\" name=\"keyword\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=");
      out.print(cKeyWords == null ? "" : cKeyWords);
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" id=\"keyword\" name=\"searchpart\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=");
      out.print(csearchpart == null ? "" : csearchpart);
      out.write(">\r\n");
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
      out.write("\t\t</form>");
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
