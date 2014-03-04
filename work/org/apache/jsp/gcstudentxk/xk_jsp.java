package org.apache.jsp.gcstudentxk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.eaie.dbmanage.*;
import com.eaie.admin.xk.*;
import com.eaie.tools.*;
import com.eaie.common.*;
import java.util.*;
import java.util.List;

public final class xk_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");


  Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
   
  String id = request.getParameter("id");
    
  Gcxkopen gcxkopen = new Gcxkopen();
  gcxkopen = (Gcxkopen)BasicDAO.queryById(Gcxkopen.class,1);
  String openxt = gcxkopen.getOpenxt();
  String term = gcxkopen.getTerm();
  String nian="";
  if(openxt.equals("0"))
    out.println(JavaScript.alertandRedirect("现在不是选课时间", "index.jsp"));
  if(term.equals("1"))
    nian = "2009上";
  else if(term.equals("2"))
    nian = "2009下";
  else if(term.equals("3"))
    nian = "2010上"; 
  else if(term.equals("4"))
    nian = "2010下"; 
  else if(term.equals("5"))
    nian = "2011上"; 
  else if(term.equals("6"))
    nian = "2011下"; 
  else if(term.equals("7"))
    nian = "2012上"; 
  else if(term.equals("8"))
    nian = "2012下"; 
  else if(term.equals("9"))
    nian = "2013上"; 
  else if(term.equals("10"))
    nian = "2013下"; 
  else if(term.equals("11"))
    nian = "2014上";  
  else if(term.equals("12"))
    nian = "2014下";
    
    int sid;
    //往GCXK表中增加sid tid
 
  String courseid=request.getParameter("courseid");
  String addid=request.getParameter("addid");
  String gcxkid=request.getParameter("gcxkid");
  //Gcxk gcxk=new Gcxk();
  Gccourse course=new Gccourse();
 // if(addid!=null)
  //{
 //     gcxk.setSid(gc.getId());  
 //     gcxk.setTid(Integer.parseInt(addid));  
 //     BasicDAO.save(gcxk); 
 //     addid=null;
 // }
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
   if(gc!=null){
 sid=gc.getId();
 //String selectid=null;
 String HQL_GET_COURSE="From Gccourse as gccourse where gccourse.nian= '"+nian+"'";
 List list = BasicDAO.queryByHql(HQL_GET_COURSE);
 //int dd=Integer.parseInt(addid);
 
  

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>选定本学期课程</title>\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"style.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("<script language=javascript>\r\n");
      out.write("         function getSelect(){\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("           var factor=document.getElementById('gccourse');\r\n");
      out.write("           var fa=factor.selectedIndex;\r\n");
      out.write("           username= factor.options[fa].value;\r\n");
      out.write("\r\n");
      out.write("           user=document.getElementById('gccourse').options[document.getElementById('gccourse').selectedIndex].text;\r\n");
      out.write("           document.getElementById('courseid').value = username;\r\n");
      out.write("           document.all.Xk.submit();\r\n");
      out.write("     }\r\n");
      out.write("         function add(){\r\n");
      out.write("           var factor=document.getElementById('courseid');\r\n");
      out.write("           var tid= factor.value;\r\n");
      out.write("           document.getElementById('addid').value = tid;\r\n");
      out.write("           document.all.add.submit();\r\n");
      out.write("        \r\n");
      out.write("     }\r\n");
      out.write("\t\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.print(addid );
      out.write("\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t\t<h1 align=\"center\"><br></h1><h1 align=\"center\">电子信息工程学院工程硕士选课系统</h1>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t<div id=\"mainarea\">\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t<a class=\"active\" href=\"index.jsp\">首页</a>\r\n");
      out.write("\t\t<a href=\"NewsList.jsp\">查看通知</a>\r\n");
      out.write("\t\t<a href=\"xk.jsp\">选定本学期课程</a>\r\n");
      out.write("\t\t<a href=\"showCourse.jsp\">显示本学期课程</a>\r\n");
      out.write("\t\t<a href=\"showScore.jsp\">查看分数</a>\r\n");
      out.write("\t\t<a href=\"help.jsp\">选课帮助</a>\r\n");
      out.write("\t\t<a href=\"logout.jsp\">退出系统</a>\r\n");
      out.write("\t\t<br><br><br><br><br><br>\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("<div id=\"contentarea\">\r\n");
      out.write("\r\n");
      out.write("<form action=\"\">\r\n");
      out.write("<table  border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" >\r\n");
      out.write("\t\t\t<tr align=\"center\" class=\"titleheader\">\r\n");
      out.write("\t\t\t  <td><a style=\"font-size: 20px\">本学期的课程如下:</a></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<table width=\"100%\" border=\"1\" align=\"left\" cellpadding=\"1\" cellspacing=\"1\" class=\"border\">\r\n");
      out.write("\t\t\t<tr align=\"center\">\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t课程名称\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t上课地点\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t教师\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t学分</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t操作</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

			    String COURSE="From Gccourse as gccourse where gccourse.nian= '"+nian+"'";
			    List list1 = BasicDAO.queryByHql(HQL_GET_COURSE);
			    if(list1.size()!=0)
			    {
			    for(int i=0;i<list1.size();i++)
			    {
			      Gccourse course1 = new Gccourse();
			      course1 = (Gccourse)list1.get(i);
			      
			      String HQL_GET_NUM="From Gcxk as gc where gc.tid='"+course1.getId()+"'";
                  List gclist = BasicDAO.queryByHql(HQL_GET_NUM);
                  int num=gclist.size();
			 
      out.write("\r\n");
      out.write("\t\t\t  <tr align=\"center\">\t\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"showInfo.jsp?courseid=");
      out.print(course1.getId() );
      out.write('"');
      out.write('>');
if((course1.getTitle()==null)&&(course1.getTitle()==""))
						        out.print(" ");
						        else out.print(course1.getTitle());
						 
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a>");
if((course1.getPlace()==null)&&(course1.getPlace()==""))
						        out.print(" ");
						        else out.print(course1.getPlace());
						 
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a>");
if((course1.getTeacher()==null)&&(course1.getTeacher()==""))
						        out.print(" ");
						        else out.print(course1.getTeacher());
						 
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a>");
if((course1.getCredit()==null)&&(course1.getCredit()==""))
						        out.print(" ");
						        else out.print(course1.getCredit());
						 
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t<td border=\"1\">\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"addSave.jsp?addid=");
      out.print(course1.getId() );
      out.write("&&sid=");
      out.print(sid );
      out.write("\">选上该课程</a>\r\n");
      out.write("\t\t\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t\t\t<nobr>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"del.jsp?gcxkid=");
      out.print(course1.getId() );
      out.write("\">删除</a></nobr>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t      ");

		      }
		      }
		      
		       
      out.write("\r\n");
      out.write("\t\t\t</table>\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\r\n");
      out.write("\r\n");

   
   }
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t\t版权所有：北京交通大学电子信息工程学院\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");

  session.setAttribute("GCUSER",gc);
 
      out.write("\r\n");
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
