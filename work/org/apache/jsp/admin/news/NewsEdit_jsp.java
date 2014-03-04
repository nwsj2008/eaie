package org.apache.jsp.admin.news;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.BasicDAO;
import com.eaie.tools.*;

public final class NewsEdit_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	News news;
 
String sAction, bigclass, smallclass;
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

    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>添加文章</title>\r\n");
      out.write("\t\t<style type=\"text/css\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\tbody {\r\n");
      out.write("\t\tbackground-color: #FEFFED;\r\n");
      out.write("\t}\r\n");
      out.write("\t-->\r\n");
      out.write("\t</style>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\tfunction CheckForm()\r\n");
      out.write("\t\t{\t\t  \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\tif (document.myform.title.value.length == 0) {\r\n");
      out.write("\t\t\t\talert(\"请填写文章标题\");\r\n");
      out.write("\t\t\t\tdocument.myform.title.focus();\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif (document.myform.part.value.length == 0) {\r\n");
      out.write("\t\t\t\talert(\"请填写发布部门\");\r\n");
      out.write("\t\t\t\tdocument.myform.part.focus();\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write(" \t\tfunction AutoIframe()\r\n");
      out.write("\t    {  \r\n");
      out.write("\t        if(document.readyState!='complete')\r\n");
      out.write("\t        {\r\n");
      out.write("\t            setTimeout( function(){AutoIframe();},25 );\r\n");
      out.write("\t            return;\r\n");
      out.write("\t        }\r\n");
      out.write("\t        else\r\n");
      out.write("\t        {\r\n");
      out.write("\t           var ifobj=document.getElementById(\"d_pic\");\r\n");
      out.write("\t           ifobj.height= ifobj.contentWindow.document.body.scrollHeight;\r\n");
      out.write("\t        }\r\n");
      out.write("\t    }\r\n");
      out.write("\t    function SetWinHeight(obj)\r\n");
      out.write("\t\t{\t\t\t     \r\n");
      out.write("\t\t\t var win=obj;\r\n");
      out.write("\t\t\t if (document.getElementById)\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t    if (win && !window.opera)\r\n");
      out.write("\t\t\t    {\r\n");
      out.write("\t\t\t\t  if (win.contentDocument && win.contentDocument.body.offsetHeight)\r\n");
      out.write("\t\t\t\t    win.height = win.contentDocument.body.offsetHeight;\r\n");
      out.write("\t\t\t\t  else if(win.Document && win.Document.body.scrollHeight)\r\n");
      out.write("\t\t\t\t    win.height = win.Document.body.scrollHeight;\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t    }\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t");
  Teacher user = (Teacher)session.getAttribute("USER");
		    String part = user.getPart();
		    String teacher = user.getTeacher();
		    int bigclassid;
		    int smallId = -1;
		    int smallclassid;
		    if(request.getParameter("smallclassid")!=null)
		        smallId = Integer.parseInt(request.getParameter("smallclassid"));
			String id = request.getParameter("newsid");
			int newsid = (id==null)?-1:Integer.parseInt(id);
			
		if (id == null) {	
		   Smallclass smallClass = (Smallclass)BasicDAO.queryById(Smallclass.class,smallId);
		   smallclass = smallClass.getSmallclass();
		   smallclassid = smallClass.getSmallclassid();
		   bigclassid = smallClass.getBigclass().getBigclassid();			
		
      out.write("\r\n");
      out.write("\t\t<form name=\"myform\" method=\"post\" action=\"admin/news/NewsSave.jsp\"\r\n");
      out.write("\t\t\tonSubmit=\"return CheckForm();\">\r\n");
      out.write("\t\t\t<table width=\"730\" border=\"0\" align=\"left\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章类别：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(smallclass);
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t发布部门：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(part );
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章标题：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"title\" type=\"text\" id=\"title\" size=\"70\"\r\n");
      out.write("\t\t\t\t\t\t\tmaxlength=\"35\">\r\n");
      out.write("\t\t\t\t\t\t（不多于35个字）\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t文章内容：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"content\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<IFRAME ID=\"eWebEditor1\"\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"eWebEditor/eWebEditor.jsp?id=content&style=standard\"\r\n");
      out.write("\t\t\t\t\t\t\tframeborder=\"0\" scrolling=\"no\" width=\"650\" height=\"350\"></IFRAME>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t粘贴附件：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"filename\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"fileurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_file frameborder=0 src=\"upload/uploadfile.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" height=\"25\" scrolling=no frameborder=\"0\" allowtransparency=\"yes\"></iframe>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t添加图片：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"imageurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_pic frameborder=0 src=\"upload/uploadpic.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" 　height=\"25\" scrolling=no frameborder=\"0\" border=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tonload=\"SetWinHeight(this)\"></iframe>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章属性：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"istop\" type=\"checkbox\" id=\"istop\" value=\"1\">\r\n");
      out.write("\t\t\t\t\t\t置顶\r\n");
      out.write("\t\t\t\t\t\t<input name=\"ispicnews\" type=\"checkbox\" id=\"ispicnews\" value=\"1\">\r\n");
      out.write("\t\t\t\t\t\t首页图片新闻\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr align=\"right\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"提 交\" class=\"button\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" name=\"Submit2\" value=\"重 置\" class=\"button\">\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"smallclassid\" value=\"");
      out.print(smallclassid);
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"bigclassid\" value=\"");
      out.print(bigclassid);
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"smallclass\" value=\"");
      out.print(smallclass );
      out.write("\">\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"teacher\" value=\"");
      out.print(teacher );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"part\" value=\"");
      out.print(part );
      out.write("\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t");

		} 
		else {
			news = (News)BasicDAO.queryById(News.class,newsid); 
			if(news!=null){		
			int big = news.getBigclassid();
			int small = news.getSmallclassid();
			String smallName = news.getSmallclass();
		
      out.write("\r\n");
      out.write("\t\t<form name=\"myform\" method=\"post\" action=\"admin/news/NewsSave.jsp\"\r\n");
      out.write("\t\t\tonSubmit=\"return CheckForm();\">\r\n");
      out.write("\t\t\t<table width=\"730\" border=\"0\" align=\"left\" cellpadding=\"5\"\r\n");
      out.write("\t\t\t\tcellspacing=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章类别：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(smallName );
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t发布部门：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(part );
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章标题：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"title\" type=\"text\" id=\"title\" size=\"70\" value=\"");
      out.print(news.getTitle() );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\tmaxlength=\"35\">\r\n");
      out.write("\t\t\t\t\t\t（不多于35个字）\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t文章内容：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"content\" value=\"");
      out.print(news.getContent()==null?"":HtmlEncode.htmlEncode(news.getContent()));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<IFRAME ID=\"eWebEditor1\"\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"eWebEditor/eWebEditor.jsp?id=content&style=standard\"\r\n");
      out.write("\t\t\t\t\t\t\tframeborder=\"0\" scrolling=\"no\" width=\"650\" height=\"350\"></IFRAME>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");

					if(news.getFilename()==null){

 				
      out.write("\t\t\t\t\r\n");
      out.write(" \t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t粘贴附件：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"filename\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"fileurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_file frameborder=0 src=\"upload/uploadfile.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" height=\"25\" scrolling=no frameborder=\"0\" allowtransparency=\"yes\"></iframe>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t");

					}else{
				
      out.write("\t\t\t\t\r\n");
      out.write(" \t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t粘贴附件：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write(" \t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"filename\" value=\"");
      out.print(news.getFilename() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"fileurl\" value=\"");
      out.print(news.getFileurl() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_file frameborder=0 src=\"upload/uploadfile.jsp?action=show&filename=");
      out.print(news.getFilename() );
      out.write("&fileurl=");
      out.print(news.getFileurl() );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" height=\"25\" scrolling=no frameborder=\"0\"></iframe>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					}
					if(news.getImageurl()==null){
 				
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t添加图片：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"imageurl\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_pic frameborder=0 src=\"upload/uploadpic.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" 　height=\"25\" scrolling=no frameborder=\"0\" border=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tonload=\"SetWinHeight(this)\"></iframe>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");
	
					}else{
				
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t添加图片：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden name=\"imageurl\" value=\"");
      out.print(news.getImageurl() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<iframe id=d_pic frameborder=0 src=\"upload/uploadpic.jsp?action=show&picurl=");
      out.print(news.getImageurl() );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"650\" 　height=\"25\" scrolling=no frameborder=\"0\" border=\"0\"\r\n");
      out.write("\t\t\t\t\t\t\tonload=\"SetWinHeight(this)\"></iframe>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\t\t\t\t");

					}
				 
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"80\">\r\n");
      out.write("\t\t\t\t\t\t文章属性：\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input name=\"istop\" type=\"checkbox\" id=\"istop\" value=\"");
      out.print(Byte.parseByte("1") );
      out.write('"');
      out.write(' ');
      out.print(news.getIstop()==null?"":"checked");
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t置顶\r\n");
      out.write("\t\t\t\t\t\t<input name=\"ispicnews\" type=\"checkbox\" id=\"ispicnews\" value=\"");
      out.print(Byte.parseByte("1") );
      out.write('"');
      out.write(' ');
      out.print(news.getIspicnews()==null?"":"checked");
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t首页图片新闻\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr align=\"right\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"提 交\" class=\"button\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" name=\"Submit2\" value=\"重 置\" class=\"button\">\t\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"button\" name=\"back\" value=\"返 回\" class=\"button\" onClick=\"window.location.href='NewsList.jsp'\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"newsid\" value=\"");
      out.print(newsid);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"bigclassid\" value=\"");
      out.print(big);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"smallclassid\" value=\"");
      out.print(small);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"smallclass\" value=\"");
      out.print(smallName);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"part\" value=\"");
      out.print(news.getPart() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<INPUT type=\"hidden\" name=\"hits\" value=\"");
      out.print(news.getHits() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"teacher\" value=\"");
      out.print(teacher );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"part\" value=\"");
      out.print(part );
      out.write("\">\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t");
		
		}else{
		
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\talert('出错啦！');\r\n");
      out.write("\t\t\t\t</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");
 		}
		}
		
      out.write("\r\n");
      out.write("\t</body>\r\n");
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
