package org.apache.jsp.eWebEditor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import net.fiyu.edit.*;

public final class eWebEditor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \r\n");

	String sContentID, sFullScreen, sStyleName, sStyleDir, sStyleCSS, sStyleUploadDir, nStateFlag, sDetectFromWord, sInitMode, sBaseUrl, sVersion, sReleaseDate, sAutoRemote, sToolBar;

	EditWebhelper web = new EditWebhelper();
	//初始化处理bean
	web.filename = config.getServletContext().getRealPath("/")
			+ "WEB-INF/style.xml";
	web.filename2 = config.getServletContext().getRealPath("/")
			+ "WEB-INF/button.xml";
	web.getInstance();
	//初始化输出bean
	EditBean bean = web.InitPara();
	sVersion = bean.getSVersion();
	sReleaseDate = bean.getSReleaseDate();
	sStyleName = bean.getSStyleName();
	sStyleDir = bean.getSStyleDir();
	//sStyleUploadDir = bean.getSStyleUploadDir();
	//<add code start>
	//图片显示路径设置
	//此处设置上传文件保存路径,注意路径要由ROOT开始===3处======================
	//修改此处需修改WEB-INF/Style.xml文件对应处<suploaddir>/UploadFile/</suploaddir>=========
	//修改此处需修改eWebEditor.jsp文件对应处 =====www.ITstudy.cn=========
	//修改此处需修改upload.jsp文件对应处 =====www.ITstudy.cn=========
	String sUploadFilePath = "/UploadFiles/";
	String sStyleNameAdd;
	//Calendar calendar = Calendar.getInstance();
	/**sStyleNameAdd = config.getServletContext().getRealPath("/")
			+ sUploadFilePath + calendar.get(Calendar.YEAR) + "/"
			+ (calendar.get(Calendar.MONTH) + 1) + "/"
			+ calendar.get(Calendar.DAY_OF_MONTH) + "/";*/
	sStyleNameAdd = config.getServletContext().getRealPath("/")
			+ sUploadFilePath + "uppic/";
	//图片日期同步,并且将图片存放在UPLOAD下面
	//动态的创建UPLOAD目录
	File picStoreDir = new File(sStyleNameAdd);
	//do java.io.File.mkdirs()
	picStoreDir.mkdirs();
	//output sStyleNameAdd path
	//out.println(sStyleNameAdd);
	//此处设置上传文件保存路径,注意路径要由ROOT开始=========================
	/**sStyleUploadDir = sUploadFilePath + calendar.get(Calendar.YEAR)
			+ "/" + (calendar.get(Calendar.MONTH) + 1) + "/"
			+ calendar.get(Calendar.DAY_OF_MONTH) + "/";*/
	sStyleUploadDir = config.getServletContext().getRealPath("/")
			+ sUploadFilePath +  "upfile/";
	File fileStoreDir = new File(sStyleUploadDir);	
	fileStoreDir.mkdirs();
	//sStyleUploadDir = bean.getSStyleUploadDir();
	//<add core end>
	sInitMode = bean.getSInitMode();
	sDetectFromWord = bean.getSDetectFromWord();
	sBaseUrl = bean.getSBaseUrl();
	sAutoRemote = bean.getSAutoRemote();
	sToolBar = bean.getSToolBar();
	nStateFlag = bean.getNStateFlag();
	//设置颜色样式
	sStyleCSS = request.getParameter("color");
	if (sStyleCSS == null)
		sStyleCSS = "CoolBlue";
	else
		sStyleCSS = request.getParameter("color").trim();
	//设置全屏幕选项
	sFullScreen = request.getParameter("fullscreen");
	if (sFullScreen == null)
		sFullScreen = "0";
	else
		sFullScreen = request.getParameter("fullscreen").trim();
	//设置内容选项
	sContentID = request.getParameter("id");
	if (sContentID == null)
		sContentID = "content1";
	else
		sContentID = request.getParameter("id").trim();
	//设置样式
	sStyleName = request.getParameter("style");
	if (sStyleName == null)
		sStyleName = "standard";
	else
		sStyleName = request.getParameter("style").trim();

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>eWebEditor - eWebSoft在线文本编辑器</title>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\">\r\n");
      out.write("\t\t<link href=\"css/");
      out.print(sStyleCSS);
      out.write("/Editor.css\" type=\"text/css\"\r\n");
      out.write("\t\t\trel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\t\t<Script Language=Javascript>\r\n");
      out.write("\t\t\tvar sPath = document.location.pathname;\r\n");
      out.write("\t\t\tsPath = sPath.substr(0, sPath.length-14);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar sLinkFieldName = \"");
      out.print(sContentID);
      out.write("\" ;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// 全局设置对象\r\n");
      out.write("\t\t\tvar config = new Object() ;\r\n");
      out.write("\t\t\tconfig.Version = \"");
      out.print(sVersion);
      out.write("\" ;\r\n");
      out.write("\t\t\tconfig.ReleaseDate = \"");
      out.print(sReleaseDate);
      out.write("\" ;\r\n");
      out.write("\t\t\tconfig.StyleName = \"");
      out.print(sStyleName);
      out.write("\";\r\n");
      out.write("\t\t\tconfig.StyleEditorHeader = \"<head><link href=\\\"\"+sPath+\"css/");
      out.print(sStyleCSS);
      out.write("/EditorArea.css\\\" type=\\\"text/css\\\" rel=\\\"stylesheet\\\"></head><body MONOSPACE>\" ;\r\n");
      out.write("\t\t\tconfig.StyleMenuHeader = \"<head><link href=\\\"\"+sPath+\"css/");
      out.print(sStyleCSS);
      out.write("/MenuArea.css\\\" type=\\\"text/css\\\" rel=\\\"stylesheet\\\"></head><body scroll=\\\"no\\\" onConTextMenu=\\\"event.returnValue=false;\\\">\";\r\n");
      out.write("\t\t\tconfig.StyleDir = \"");
      out.print(sStyleDir);
      out.write("\";\r\n");
      out.write("\t\t\tconfig.StyleUploadDir = \"");
      out.print(sStyleUploadDir);
      out.write("\";\r\n");
      out.write("\t\t\tconfig.InitMode = \"");
      out.print(sInitMode);
      out.write("\";\r\n");
      out.write("\t\t\tconfig.AutoDetectPasteFromWord = ");
      out.print(sDetectFromWord);
      out.write(";\r\n");
      out.write("\t\t\tconfig.BaseUrl = ");
      out.print(sBaseUrl);
      out.write(";\r\n");
      out.write("\t\t\tconfig.AutoRemote = ");
      out.print(sAutoRemote);
      out.write(";\r\n");
      out.write("\t\t</Script>\r\n");
      out.write("\t\t<Script Language=Javascript src=\"include/editor.js\"></Script>\r\n");
      out.write("\t\t<Script Language=Javascript src=\"include/table.js\"></Script>\r\n");
      out.write("\t\t<Script Language=Javascript src=\"include/menu.js\"></Script>\r\n");
      out.write("\t\t<script language=\"javascript\" event=\"onerror(msg, url, line)\"\r\n");
      out.write("\t\t\tfor=\"window\">\r\n");
      out.write("\t\t//return true ;\t // 隐藏错误\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body SCROLLING=no onConTextMenu=\"event.returnValue=false;\"\r\n");
      out.write("\t\tonfocus=\"VerifyFocus()\">\r\n");
      out.write("\t\t<table border=0 cellpadding=0 cellspacing=0 width='100%' height='100%'>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t");
      out.print(sToolBar);
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height='100%'>\r\n");
      out.write("\t\t\t\t\t<table border=0 cellpadding=0 cellspacing=0 width='100%'\r\n");
      out.write("\t\t\t\t\t\theight='100%'>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height='100%'>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" ID=\"ContentEdit\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" ID=\"ContentLoad\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" ID=\"ContentFlag\" value=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<iframe class=\"Composition\" ID=\"eWebEditor\" MARGINHEIGHT=\"1\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tMARGINWIDTH=\"1\" width=\"100%\" height=\"100%\" scrolling=\"yes\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</iframe>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

			if (nStateFlag.equals("1")) {
			
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td height=25>\r\n");
      out.write("\t\t\t\t\t<TABLE border=\"0\" cellPadding=\"0\" cellSpacing=\"0\" width=\"100%\"\r\n");
      out.write("\t\t\t\t\t\tclass=StatusBar height=25>\r\n");
      out.write("\t\t\t\t\t\t<TR valign=middle>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<table border=0 cellpadding=0 cellspacing=0 height=20>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=10></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td class=StatusBarBtnOff id=eWebEditor_CODE\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tonclick=\"setMode('CODE')\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img border=0 src=\"buttonimage/");
      out.print(sStyleDir);
      out.write("/modecode.gif\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth=50 height=15 align=absmiddle>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=5></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td class=StatusBarBtnOff id=eWebEditor_EDIT\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tonclick=\"setMode('EDIT')\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img border=0 src=\"buttonimage/");
      out.print(sStyleDir);
      out.write("/modeedit.gif\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth=50 height=15 align=absmiddle>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=5></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td class=StatusBarBtnOff id=eWebEditor_VIEW\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tonclick=\"setMode('VIEW')\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img border=0\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"buttonimage/");
      out.print(sStyleDir);
      out.write("/modepreview.gif\" width=50\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\theight=15 align=absmiddle>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=right>\r\n");
      out.write("\t\t\t\t\t\t\t\t<table border=0 cellpadding=0 cellspacing=0 height=20>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td style=\"cursor:pointer;\" onclick=\"sizeChange(300)\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img border=0 SRC=\"buttonimage/");
      out.print(sStyleDir);
      out.write("/sizeplus.gif\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth=20 height=20 alt=\"增高编辑区\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=5></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td style=\"cursor:pointer;\" onclick=\"sizeChange(-300)\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img border=0 SRC=\"buttonimage/");
      out.print(sStyleDir);
      out.write("/sizeminus.gif\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\twidth=20 height=20 alt=\"减小编辑区\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=40></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</TR>\r\n");
      out.write("\t\t\t\t\t</Table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

			}
			
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\t\t<div id=\"eWebEditor_Temp_HTML\"\r\n");
      out.write("\t\t\tstyle=\"VISIBILITY: hidden; OVERFLOW: hidden; POSITION: absolute; WIDTH: 1px; HEIGHT: 1px\"></div>\t\r\n");
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
