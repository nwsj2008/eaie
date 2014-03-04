package org.apache.jsp.admin.message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
import com.eaie.admin.message.*;

public final class Msg_005freply_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>回复留言</title>\r\n");
      out.write("\t\t");

			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		
      out.write("\t\t\t\t\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<link href=\"admin/css/admin_style.css\" rel=\"stylesheet\"\r\n");
      out.write("\t\t\ttype=\"text/css\">\r\n");
      out.write("\t\t<script language=\"javascript\" src=\"js/basicJS.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\">   \t\r\n");
      out.write("\t\tfunction CheckForm(){\t\r\n");
      out.write("\t\t     \r\n");
      out.write("\t\t\t if(!isNull(\"teacher\",\"用户名\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\t\t\t\r\n");
      out.write("\t\t\t if(!isNull(\"pwd\",\"密码\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(!isNull(\"pwd2\",\"重复密码\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(!isEqual(\"pwd\",\"pwd2\",\"两次输入密码不一致！\"))\r\n");
      out.write("\t\t\t {\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\t\r\n");
      out.write("\t\t\t var num; \r\n");
      out.write("\t\t\t var flag = false;    \r\n");
      out.write("   \t\t\t num=document.userform.elements.length\r\n");
      out.write("\t\t\t for(var i=0;i<num;i++){     \r\n");
      out.write("\t\t\t\tif(document.userform.elements[i].type==\"checkbox\"&&document.userform.elements[i].name!=\"isadmin\"){     \r\n");
      out.write("\t\t\t\t   if(document.userform.elements[i].checked ==true){\r\n");
      out.write("\t\t\t\t   \t flag = true;\r\n");
      out.write("\t\t\t\t   }\r\n");
      out.write("\t\t\t\t}  \t\t\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t if(flag==false){\r\n");
      out.write("\t\t\t \t\r\n");
      out.write("\t\t\t \talert(\"请选择用户权限\");\r\n");
      out.write("\t\t\t \treturn false;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t    \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\tfunction checkall()     \r\n");
      out.write("\t\t{  \t\r\n");
      out.write("\t\t\tvar num;     \r\n");
      out.write("   \t\t\tnum=document.userform.elements.length;     \r\n");
      out.write("        \r\n");
      out.write("  \t\t\tif(document.userform.isadmin.checked)     \r\n");
      out.write("   \t\t\t{  var i;     \r\n");
      out.write("\t\t\t   for(i=0;i<num;i++)     \r\n");
      out.write("\t\t\t\tif(document.userform.elements[i].type==\"checkbox\"&&document.userform.elements[i].name!=\"isadmin\")     \r\n");
      out.write("\t\t\t\t   document.userform.elements[i].checked = true;  \t\t\r\n");
      out.write("\t\t\t\tdocument.userform.isadmin.value = 1 ;\t\t\r\n");
      out.write("\t\t\t   return true;     \r\n");
      out.write("\t\t    }     \r\n");
      out.write("\t\t    else   \r\n");
      out.write("\t\t    { var i;     \r\n");
      out.write("\t\t\t  for(i=0;i<num;i++)     \r\n");
      out.write("\t\t\t\tif(document.userform.elements[i].type == \"checkbox\"&&document.userform.elements[i].name!=\"isadmin\")     \r\n");
      out.write("\t\t\t\t\tdocument.userform.elements[i].checked = !(document.userform.elements[i].checked);  \r\n");
      out.write("\t\t\t\tdocument.userform.isadmin.value = 0 ;  \t\t\t \r\n");
      out.write("\t\t\t  return true;     \r\n");
      out.write("\t\t    }     \r\n");
      out.write("     \r\n");
      out.write("\t\t}  \r\n");
      out.write("\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t");

		String id = request.getParameter("id");
		List list =	BasicDAO.queryByHql("from Bigclass");	
		
		if(id == null){

		}else{
		
			Message message = (Message) BasicDAO.queryById(Message.class,Integer.parseInt(id));				
			if(message!=null){

      out.write("\r\n");
      out.write("\t\t<form name=\"userform\" method=\"post\" action=\"admin/message/Msg_save.jsp\">\r\n");
      out.write("\t\t\t <table width=\"500\"  border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                   <td colspan=\"2\" align=\"center\" class=\"titlebg\">回复留言</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr class=\"tdbg\">\r\n");
      out.write("                   <td width=\"50%\">来源：");
      out.print(message.getName()==null?"":message.getName());
      out.write("</td>\r\n");
      out.write("                   <td>对象：");
      out.print(message.getPart()==null?"--":message.getPart());
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("\t\t\t\t <tr class=\"tdbg\">\r\n");
      out.write("     \t\t\t\t<td>时间：");
      out.print(message.getGivetime()==null?"":message.getGivetime());
      out.write("</td>\r\n");
      out.write("     \t\t\t\t <td>地点：");
      out.print(message.getIp()==null?"":message.getIp());
      out.write("</td>\r\n");
      out.write("  \t\t\t\t  </tr>\r\n");
      out.write("   \t\t\t\t <tr class=\"tdbg\">\r\n");
      out.write("    \t\t\t\t  <td colspan=\"2\">内容：");
      out.print(message.getContent()==null?"":message.getContent());
      out.write("</td>\r\n");
      out.write("   \t\t\t\t </tr>\r\n");
      out.write("    \t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("     \t\t\t\t <td colspan=\"2\">回复：\r\n");
      out.write("     \t\t\t\t <textarea name=\"reply\" cols=\"60\" rows=\"12\" id=\"reply\">");
      out.print(message.getReply()==null?"":message.getReply());
      out.write("</textarea></td>\r\n");
      out.write("   \t\t\t\t </tr>\r\n");
      out.write("                  ");
if (message.getReply()!=null) 
                    {
      out.write("\r\n");
      out.write("\t\t\t\t\t<tr class=\"tdbg\">\r\n");
      out.write("     \t\t\t\t <td>回复人：");
      out.print(message.getTeacher()==null?"":message.getTeacher());
      out.write("</td>\r\n");
      out.write("    \t\t\t\t  <td>回复时间：");
      out.print(message.getReplytime()==null?"":message.getReplytime());
      out.write("</td>\r\n");
      out.write("   \t\t\t\t </tr>\r\n");
      out.write("   \t\t\t\t ");

   				    } 
   				 
      out.write("\r\n");
      out.write("\t\t\t\t<tr align=\"center\" class=\"tdbg\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" name=\"Submit\" value=\"回　复\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<input type=\"button\" name=\"Submit2\" value=\"取 消\" onclick=\"javascript:window.location.href='Msg_list.jsp'\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"id\" value=\"");
      out.print(message.getId().toString() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"teacher\" value=\"");
      out.print(message.getTeacher() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\t\t\t\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t\r\n");
      out.write("  \r\n");
		}
	}

      out.write("\r\n");
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
