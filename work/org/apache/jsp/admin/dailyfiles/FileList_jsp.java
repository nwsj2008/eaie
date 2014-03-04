package org.apache.jsp.admin.dailyfiles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.common.*;
import com.eaie.admin.upfile.*;
import com.eaie.dbmanage.*;
import java.util.*;

public final class FileList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/admin/dailyfiles/../common/Pager.jsp");
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

    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("<Script Language=JavaScript>\r\n");
      out.write("function checkall()     \r\n");
      out.write("{  var num;     \r\n");
      out.write("   num=document.del.elements.length;     \r\n");
      out.write("        \r\n");
      out.write("   if(document.del.chkall.checked)     \r\n");
      out.write("   {  var i;     \r\n");
      out.write("      for(i=0;i<num;i++)     \r\n");
      out.write("        if(document.del.elements[i].type==\"checkbox\"&&document.del.elements[i].name!=\"chkall\")     \r\n");
      out.write("           document.del.elements[i].checked = true;     \r\n");
      out.write("      return true;     \r\n");
      out.write("   }     \r\n");
      out.write("   else   \r\n");
      out.write("   {  var j;     \r\n");
      out.write("      for(i=0;i<num;i++)     \r\n");
      out.write("        if(document.del.elements[i].type == \"checkbox\"&&document.del.elements[i].name!=\"chkall\")     \r\n");
      out.write("           document.del.elements[i].checked = !(document.del.elements[i].checked);     \r\n");
      out.write("      return true;     \r\n");
      out.write("   }     \r\n");
      out.write("     \r\n");
      out.write("}     \r\n");
      out.write("</Script>\r\n");
      out.write("<title>文件列表</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	List list;
 
      out.write('\r');
      out.write('\n');

	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));
	String sKeyWords = request.getParameter("keyword");	
	UpFileList ulist = new UpFileList();	
	if(sKeyWords==null){	
		list = ulist.getFileList(curPage);
	}else{
		list = ulist.searchFile(curPage,sKeyWords);
	}
		//System.out.println(list.size());
	Page pager = ulist.getCurrentPage();		
	Iterator it =list.iterator();
		
		
		
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<form name=\"search\" method=\"post\" action=\"admin/dailyfiles/FileList.jsp\">\r\n");
      out.write("  <table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td class=\"tdbg\"><table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>&nbsp;<strong>文件搜索</strong>：            \r\n");
      out.write("            <input name=\"keyword\" type=\"text\" id=\"keyword\" size=\"30\"/>\r\n");
      out.write("            <input name=\"Submit\" type=\"submit\" value=\"搜&nbsp;索\" /></td>\r\n");
      out.write("          <td width=\"150\"><input type=\"button\" name=\"Submit2\" value=\"上传文件\" onClick=\"location.href='Upload.jsp'\" />\r\n");
      out.write("    &nbsp;&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("<form action=\"admin/dailyfiles/FileDelete.jsp\" method=\"post\" name=\"delete\" id=\"del\">\r\n");
      out.write("<table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><input name=\"chkall\" type=\"checkbox\" id=\"chkall\" value=\"checkbox\" onClick=\"checkall();\">\r\n");
      out.write("      选中所有的文件&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"submit\" name=\"Submit\" value=\"删除选中文件\" onClick=\"{if(confirm('确定删除选中的文件吗？')){return true;}return false;}\"></td>\r\n");
      out.write("    <td align=\"right\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("  <tr align=\"center\" class=\"titlebg\">\r\n");
      out.write("    <td width=\"35\">选中</td>\r\n");
      out.write("    <td>文件名称</td>\r\n");
      out.write("    <td width=\"80\">栏目</td>\r\n");
      out.write("    <td width=\"70\">部门</td>\r\n");
      out.write("    <td width=\"60\">大小</td>\r\n");
      out.write("    <td width=\"50\">下载</td>\r\n");
      out.write("    <td width=\"70\">上传人</td>\r\n");
      out.write("    <td width=\"120\">上传时间</td>\r\n");
      out.write("    <td>操作</td>\r\n");
      out.write("    </tr>\r\n");

	while(it.hasNext()){			
		Upfile file = (Upfile)it.next();
		String bigClass ="";
		int bigid = file.getBigclassid();
		if(bigid==2){
		
		 	 bigClass ="本科生";
		
		}else if(bigid==3){
		
			 bigClass ="研究生";
		
		}else if(bigid==4){
		
			 bigClass ="科学研究";
		
		}else{
		
			 bigClass ="就业专栏";
		
		}
 
      out.write("\r\n");
      out.write("  <tr bgcolor=\"#FFFFFF\" class=\"tdbg\" onMouseOut=\"this.style.backgroundColor=''\" onMouseOver=\"this.style.backgroundColor='#BFDFFF'\">\r\n");
      out.write("    <td  align=\"center\"><input name=\"id\" type=\"checkbox\" id=\"id\" value=\"");
      out.print(file.getId() );
      out.write("\" /></td>\r\n");
      out.write("    <td><a href=\"UploadFiles/upfile/");
      out.print(file.getFileurl() );
      out.write('"');
      out.write('>');
      out.print(file.getFilename() );
      out.write("</a></td>\r\n");
      out.write("    <td align=\"center\">");
      out.print(bigClass);
      out.write("</td>\r\n");
      out.write("    <td align=\"center\">");
      out.print(file.getPart() );
      out.write("</td>\r\n");
      out.write("    <td align=\"right\">");
      out.print(file.getFilesize() );
      out.write("&nbsp;</td>\r\n");
      out.write("    <td align=\"center\">");
      out.print(file.getDownnum() );
      out.write("</td>\r\n");
      out.write("    <td align=\"center\">");
      out.print(file.getTeacher() );
      out.write("</td>\r\n");
      out.write("    <td align=\"center\">");
      out.print(file.getUptime().toLocaleString() );
      out.write("</td>\r\n");
      out.write("    <td align=\"center\">\r\n");
      out.write("\t<a href=\"admin/dailyfiles/FileDelete.jsp?id=");
      out.print(file.getId());
      out.write("\"onclick=\"{if(confirm('确定删除吗？')){return true;}return false;}\">删除</a></td>\r\n");
      out.write("    </tr>");

 	}

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<form name=\"pageForm\" action=\"\" method=\"post\">   \r\n");
      out.write(" \t<table align=\"center\" width=\"96%\">\r\n");
      out.write("       <tr><td align=\"center\">\r\n");
      out.write("       <input type=\"hidden\" id=\"keyword\" name=\"keyword\" value=");
      out.print(sKeyWords==null?"":sKeyWords );
      out.write(">     \r\n");
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
      out.write("\r\n");
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
