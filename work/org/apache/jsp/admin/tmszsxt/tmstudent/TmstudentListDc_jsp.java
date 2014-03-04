package org.apache.jsp.admin.tmszsxt.tmstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.admin.commie.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.tmszsxt.tmstudent.TmstudentList;

public final class TmstudentListDc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t<title>推免生信息列表</title>\r\n");
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
  List list=BasicDAO.queryByHql("FROM Tmstudent tmstudent");

  
 // String hql="SELECT id FROM Tmstudent";
  if(list.size()==0){
  out.print("没有记录");
  }else{

			
			
			
		
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
      out.write("\t\t\taction=\"admin/tmszsxt/tmstudent/TmstudentExcel.jsp\">\r\n");
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
      out.write("\t\t\t\t\t\t毕业学校\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t毕业专业</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t接收学院</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t接收专业</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t联系电话</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t四级成绩</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t六级成绩</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t专业排名</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t专业人数</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t获奖情况</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t复试成绩</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t考核通知</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t录取通知</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t导师信息</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					
						for (int i = 0; i < list.size(); i++) {
							Tmstudent tmstudent = (Tmstudent) list.get(i);
				
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
      out.print((tmstudent.getName()==null)?"":tmstudent.getName());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t    ");
      out.print((tmstudent.getName()==null)?"":tmstudent.getName());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 100px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"byschool\" id=\"byschool\" type=\"hidden\" value=\"");
      out.print((tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"byspeciality\" id=\"byspeciality\" type=\"hidden\" value=\"");
      out.print((tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 110px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"jsacademe\" id=\"jsacademe\" type=\"hidden\" value=\"");
      out.print((tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 100px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"jsspeciality\" id=\"jsspeciality\" type=\"hidden\" value=\"");
      out.print((tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 80px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"tel\" id=\"tel\" type=\"hidden\" value=\"");
      out.print((tmstudent.getTel()==null)?"":tmstudent.getTel());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getTel()==null)?"":tmstudent.getTel());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"siji\" id=\"siji\" type=\"hidden\" value=\"");
      out.print((tmstudent.getSiji()==null)?"":tmstudent.getSiji());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getSiji()==null)?"":tmstudent.getSiji());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"liuji\" id=\"liuji\" type=\"hidden\" value=\"");
      out.print((tmstudent.getLiuji()==null)?"":tmstudent.getLiuji());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getLiuji()==null)?"":tmstudent.getLiuji());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"zypm\" id=\"zypm\" type=\"hidden\" value=\"");
      out.print((tmstudent.getZypm()==null)?"":tmstudent.getZypm());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getZypm()==null)?"":tmstudent.getZypm());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"zyrs\" id=\"zyrs\" type=\"hidden\" value=\"");
      out.print((tmstudent.getZyrs()==null)?"":tmstudent.getZyrs());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getZyrs()==null)?"":tmstudent.getZyrs());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 100px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"huoj\" id=\"huoj\" type=\"hidden\" value=\"");
      out.print((tmstudent.getHuoj()==null)?"":tmstudent.getHuoj());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getHuoj()==null)?"":tmstudent.getHuoj());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 80px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"fushiresult\" id=\"fushiresult\" type=\"hidden\" value=\"");
      out.print((tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 80px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"shenheresult\" id=\"shenheresult\" type=\"hidden\" value=\"");
      out.print((tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"sflq\" id=\"sflq\" type=\"hidden\" value=\"");
      out.print((tmstudent.getSflq()==null)?"":tmstudent.getSflq());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getSflq()==null)?"":tmstudent.getSflq());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<div style=\"width: 50px; overflow: hidden;text-overflow:ellipsis;\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t<input name=\"teacher\" id=\"teacher\" type=\"hidden\" value=\"");
      out.print((tmstudent.getTeacher()==null)?"":tmstudent.getTeacher());
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print((tmstudent.getTeacher()==null)?"":tmstudent.getTeacher());
      out.write("\r\n");
      out.write("\t\t\t\t\t</nobr></div></td>\r\n");
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
