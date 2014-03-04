package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import java.util.*;
import com.eaie.common.*;
import com.eaie.admin.users.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\t\t\t\t\r\n");
      out.write("\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\ttype=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<title>无标题文档</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");

	Teacher user = (Teacher)session.getAttribute("USER");
	
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<table width=\"86%\" border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"1\" bgcolor=\"#FFFFFF\" class=\"border\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"30\" align=\"center\" class=\"topbg\">欢迎登录电子信息工程学院网站管理系统！</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" class=\"tdbg\">\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t<legend>用户信息</legend>\r\n");
      out.write("\t\t<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"25\" align=\"center\">\r\n");
      out.write("            当前登录：");
      out.print(user.getPart() );
      out.write("&nbsp;");
      out.print(user.getTeacher() );
      out.write("\r\n");
      out.write("            ");
if(user.getIsadmin()!=null&&user.getIsadmin()>0) out.println("管理员"); 
      out.write(" &nbsp;&nbsp; \r\n");
      out.write("            登陆地点：");
      out.print(request.getServerName() );
      out.write("&nbsp;&nbsp;\r\n");
      out.write("            上次登陆时间：");
      out.print(session.getAttribute("LAST_LOGIN_TIME").toString() );
      out.write("&nbsp;&nbsp;\r\n");
      out.write("            登陆次数：");
      out.print(session.getAttribute("LOGIN_TIMES").toString() );
      out.write("</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("\t\t</fieldset></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" class=\"tdbg\">\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t<legend>管理权限</legend>\r\n");
      out.write("\t\t<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"25\" align=\"center\">\r\n");
      out.write("            ");

				if(user.getIsadmin()!=null&&user.getIsadmin()>0)
					out.println("管理员（拥有所有权限）" );	
				else{
					List list = BasicDAO.queryByHql("from Bigclass");
					Iterator it = list.iterator();
					while(it.hasNext()){						
						Bigclass bg = (Bigclass)it.next();
						if(UserManage.HasRight(bg.getId(),user)){
						  out.println(bg.getBigclass()+"&nbsp;&nbsp");
						}
					}
				}
					

			
      out.write("\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("\t\t</fieldset></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td class=\"tdbg\">\r\n");
      out.write("\t\t<fieldset><legend>使用说明</legend>\r\n");
      out.write("\t\t<table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>1.为使后台页面正常显示，推荐您使用<font color=\"0000FF\">1024x768</font>或者更高的屏幕分辨率。</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>2.请您保护好自己的登录密码，用完后记得<font color=\"0000FF\">退出系统</font>。</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>3.<font color=\"0000FF\">如何添加文章？</font></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><ul>\r\n");
      out.write("            \t<li>可直接在编辑器上输入文字，也可以将编辑好的文章复制后点编辑器上的<img src=\"admin/images/paste.gif\" width=\"20\" height=\"20\">或使用<font color=\"0000FF\">CTRL+V</font>粘贴过来，推荐<font color=\"0000FF\">整篇复制</font>后粘贴。(在编辑器上右键粘贴复制都<font color=\"0000FF\">无效</font>，请按编辑器上的按钮进行操作)\r\n");
      out.write("            \t<li>网页已设置好了文章的字体和大小，所以一般情况下可以粘贴后<font color=\"0000FF\">直接发布</font>，不用再设置字体和大小了，以便保持网站格式的一致性。\r\n");
      out.write("            </ul></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>4.<font color=\"0000FF\">如何添加图片？</font></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><ul>\r\n");
      out.write("            \t<li>点击编辑器上的<img src=\"admin/images/insertimg.gif\" width=\"20\" height=\"20\">，弹出上传图片对话框，设定你要上传的数量，所有图片请<font color=\"0000FF\">一次上传</font>完毕，不要分几次上传。\r\n");
      out.write("             <li>若要删除已上传的图片，在编辑文章状态下点删除，再更新文章。\r\n");
      out.write("      \t<li>若要更换图片，在编辑文章状态下先删除图片，再重新上传，再更新文章。\r\n");
      out.write("\t\t\t</ul></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>5.<font color=\"0000FF\">如何添加附件？</font></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><ul>\r\n");
      out.write("            \t<li>添加文章时在添加附件栏内浏览您要粘贴的附件，再点<font color=\"0000FF\">粘贴</font>进行上传，若有多个附件请<font color=\"0000FF\">打包</font>后再上传。\r\n");
      out.write("                <li>若要删除已上传的附件，在编辑文章状态下点删除，再更新文章。\r\n");
      out.write("            \t<li>若要更换附件，在编辑文章状态下先删除文件，再重新上传，再更新文章。\r\n");
      out.write("\t\t\t</ul></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("\r\n");
      out.write("\t\t  <tr>\r\n");
      out.write("            <td>6.【管理员注意】切勿随意更改栏目管理内的大类ID号和小类ID号，否则将导致系统出错。</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</fieldset></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("</table>\r\n");
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
