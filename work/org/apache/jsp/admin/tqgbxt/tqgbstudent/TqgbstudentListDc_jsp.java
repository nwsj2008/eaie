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

public final class TqgbstudentListDc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

//List list;
	//String cKeyWords, csearchpart;
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
      out.write("\t\t<title>提前攻博生信息列表</title>\r\n");
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

			//int curPage = (request.getParameter("curPage") == null ? 1
			//		: Integer.parseInt(request.getParameter("curPage")));
			//cKeyWords = request.getParameter("keyword");
			//csearchpart = request.getParameter("searchpart");
			//TmstudentList tmstudentList = new TmstudentList();
			//list = tmstudentList.getTmstudentList(curPage, csearchpart,
			//		cKeyWords);

			//Page pager = tmstudentList.getCurrentPage();
			//Iterator it = list.iterator();
			//  String idString=request.getParameter("id");
  //int id=Integer.parseInt(idString);
  //List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id is not='"+id+"'");
  List list=BasicDAO.queryByHql("FROM Tqgb tqgb");

  
 // String hql="SELECT id FROM Tmstudent";
  if(list.size()==0){
  out.print("没有记录");
  }else{

			
			
			
		
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<form name=\"form2\" method=\"post\"\r\n");
      out.write("\t\t\taction=\"admin/tqgbxt/tqgbstudent/TqgbstudentExcel.jsp\">\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\"\r\n");
      out.write("\t\t\t\tcellspacing=\"1\" class=\"border\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("\t\t\t\t\t<td width=\"35\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t序号\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
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
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t学位课加权成绩排名</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t联系方式</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t备注</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					
						for (int i = 0; i < list.size(); i++) {
							Tqgb tqgb = (Tqgb) list.get(i);
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"tdbg\"\r\n");
      out.write("\t\t\t\t\tonmouseout=\"this.style.backgroundColor=''\"\r\n");
      out.write("\t\t\t\t\tonmouseover=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input name=\"id\" id=\"id\" type=\"hidden\" value=\"");
      out.print(i+1);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(i+1);
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"name\" id=\"name\" type=\"hidden\" value=\"");
      out.print((tqgb.getName()==null)?"":tqgb.getName());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t    ");
      out.print((tqgb.getName()==null)?"":tqgb.getName());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 100px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"xuehao\" id=\"xuehao\" type=\"hidden\" value=\"");
      out.print((tqgb.getXuehao() == null) ? ""
							: tqgb.getXuehao());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getXuehao()== null) ? ""
							: tqgb.getXuehao());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"sex\" id=\"sex\" type=\"hidden\" value=\"");
      out.print((tqgb.getSex() == null) ? ""
							: tqgb.getSex());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getSex() == null) ? ""
							:tqgb.getSex());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"sszy\" id=\"sszy\" type=\"hidden\" value=\"");
      out.print((tqgb.getSszy()==null)?"":tqgb.getSszy());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getSszy()==null)?"":tqgb.getSszy());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 100px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"nbzy\" id=\"nbzy\" type=\"hidden\" value=\"");
      out.print((tqgb.getNbzy()==null)?"":tqgb.getNbzy());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getNbzy()==null)?"":tqgb.getNbzy());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 80px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"sd\" id=\"sd\" type=\"hidden\" value=\"");
      out.print((tqgb.getSd()==null)?"":tqgb.getSd());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getSd()==null)?"":tqgb.getSd());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"nbbd\" id=\"nbbd\" type=\"hidden\" value=\"");
      out.print((tqgb.getNbbd()==null)?"":tqgb.getNbbd());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getNbbd()==null)?"":tqgb.getNbbd());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"cjpm\" id=\"cjpm\" type=\"hidden\" value=\"");
      out.print((tqgb.getCjpm()==null)?"":tqgb.getCjpm());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getCjpm()==null)?"":tqgb.getCjpm());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"tel\" id=\"tel\" type=\"hidden\" value=\"");
      out.print((tqgb.getTel()==null)?"":tqgb.getTel());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getTel()==null)?"":tqgb.getTel());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"beizhu\" id=\"beizhu\" type=\"hidden\" value=\"");
      out.print((tqgb.getBeizhu()==null)?"":tqgb.getBeizhu());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tqgb.getBeizhu()==null)?"":tqgb.getBeizhu());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					}
					}
					
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"6\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"left\">\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"导出Excel列表\">\r\n");
      out.write("\t\t\t\t&nbsp;&nbsp;\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
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
