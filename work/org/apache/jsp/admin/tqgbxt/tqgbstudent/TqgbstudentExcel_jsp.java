package org.apache.jsp.admin.tqgbxt.tqgbstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;
import java.text.DecimalFormat;

public final class TqgbstudentExcel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=gb2312");
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");

response.reset();
    response.setContentType("application/msexcel");
    response.setHeader("Content-disposition","inline;filename=tqgbstudent.xls");//定义文件名
    DecimalFormat f = new DecimalFormat("#,##0.00");
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("sheet1");
    String[] id = request.getParameterValues("id");
    String[] name = request.getParameterValues("name");
    String[] xuehao = request.getParameterValues("xuehao");
    String[] sex = request.getParameterValues("sex");
    String[] sszy = request.getParameterValues("sszy");
    String[] nbzy = request.getParameterValues("nbzy");
    String[] sd = request.getParameterValues("sd");
    String[] nbbd = request.getParameterValues("nbbd");
    String[] cjpm = request.getParameterValues("cjpm");
    String[] beizhu = request.getParameterValues("beizhu");
     String[] tel = request.getParameterValues("tel");

    


//以下以写表头
        //表头为第一行
      HSSFRow row = sheet.createRow((short) 0);
//定义10列
        HSSFCell cell1 = row.createCell((short) 0);
        HSSFCell cell2 = row.createCell((short) 1);
        HSSFCell cell3 = row.createCell((short) 2);
        HSSFCell cell4 = row.createCell((short) 3);
        HSSFCell cell5 = row.createCell((short) 4);
        HSSFCell cell6 = row.createCell((short) 5);
        HSSFCell cell7 = row.createCell((short) 6);
        HSSFCell cell8 = row.createCell((short) 7);
        HSSFCell cell9 = row.createCell((short) 8);
        HSSFCell cell10 = row.createCell((short) 9);
        HSSFCell cell11 = row.createCell((short) 10);
   
   
        cell1.setEncoding((short) 1);
        cell1.setCellType(1);
        cell2.setEncoding((short) 1);
        cell2.setCellType(1);
        cell3.setEncoding((short) 1);
        cell3.setCellType(1);
        cell4.setEncoding((short) 1);
        cell4.setCellType(1);
        cell5.setEncoding((short) 1);
        cell5.setCellType(0);
        cell6.setEncoding((short) 1);
        cell6.setCellType(1);
        cell7.setEncoding((short) 1);
        cell7.setCellType(1);
        cell8.setEncoding((short) 1);
        cell8.setCellType(1);
        cell9.setEncoding((short) 1);
        cell9.setCellType(1);
        cell10.setEncoding((short) 1);
        cell10.setCellType(1);
        cell11.setEncoding((short) 1);
        cell11.setCellType(1);
//定义表头的内容
        cell1.setCellValue("序号");
        cell2.setCellValue("姓名");
        cell3.setCellValue("学号");
        cell4.setCellValue("性别");
        cell5.setCellValue("硕士专业");
        cell6.setCellValue("拟报博士专业");
        cell7.setCellValue("原硕导");
        cell8.setCellValue("拟报博导");
        cell9.setCellValue("学位课加权成绩排名");
        cell10.setCellValue("备注");
        cell11.setCellValue("联系方式");
      
        


    for(int i= 0; i < name.length; i++){
//定义数据从第二行开始       
  row = sheet.createRow((short) i+1);
                cell1 = row.createCell((short) 0);
                cell2 = row.createCell((short) 1);
                cell3 = row.createCell((short) 2);
                cell4 = row.createCell((short) 3);
                cell5 = row.createCell((short) 4);
                cell6 = row.createCell((short) 5);
                cell7 = row.createCell((short) 6);
                cell8 = row.createCell((short) 7);
                cell9 = row.createCell((short) 8);
                cell10 = row.createCell((short) 9);
               cell11 = row.createCell((short) 10);

               cell1.setEncoding((short) 1);
               cell1.setCellType(1);
               cell2.setEncoding((short) 1);
               cell2.setCellType(1);
               cell3.setEncoding((short) 1);
               cell3.setCellType(1);
               cell4.setEncoding((short) 1);
               cell4.setCellType(1);
               cell5.setEncoding((short) 1);
               cell5.setCellType(0);
               cell6.setEncoding((short) 1);
               cell6.setCellType(1);
               cell7.setEncoding((short) 1);
               cell7.setCellType(1);
               cell8.setEncoding((short) 1);
               cell8.setCellType(1);
               cell9.setEncoding((short) 1);
               cell9.setCellType(1);
               cell10.setEncoding((short) 1);
               cell10.setCellType(1);
               cell11.setEncoding((short) 1);
               cell11.setCellType(1);
              

//填充内容
        cell1.setCellValue(id[i]);
        cell2.setCellValue(name[i]);
        cell3.setCellValue(xuehao[i]);
        cell4.setCellValue(sex[i]);
        cell5.setCellValue(sszy[i]);
        cell6.setCellValue(nbzy[i]);
        cell7.setCellValue(sd[i]);
        cell8.setCellValue(nbbd[i]);
        cell9.setCellValue(cjpm[i]);
        cell10.setCellValue(beizhu[i]);
        cell11.setCellValue(tel[i]);
    }
    wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();




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
