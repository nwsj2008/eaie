package org.apache.jsp.admin.gcxkxt.gcxkstudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.io.FileInputStream;
import org.apache.poi.hssf.usermodel.HSSFCell;
import java.io.IOException;
import java.sql.SQLException;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import com.eaie.tools.*;

public final class GcstudentDaoru_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t");

   POIFSFileSystem   fs   =   null; 
   HSSFWorkbook   wb   =   null;
    //Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver"); 
    //Connection conn = DriverManager.getConnection("jdbc:microsoft:sqlserver://202.112.146.68:1433;dataBase=seie2006","sa","sa");
    //Statement stmt=conn.createStatement();    
     
     
    try   { 
      fs   =   new   POIFSFileSystem(new   FileInputStream( "F:\\workspace\\eaie\\UploadFiles\\upfile\\gx.xls "));
       //设定FileINputStream读取Excel档 
      wb   =   new   HSSFWorkbook(fs); 
    }   catch   (IOException   e)   { 
      e.printStackTrace(); 
    } 
    HSSFSheet   sheet   =   wb.getSheetAt(0); //读取第一个工作表，宣告其为sheet ;
    HSSFRow   row = null; 
    //HSSFCell   cell = null; 
    String name=""; 
    String pwd="";
   
   

     
   int rowNum=sheet.getLastRowNum(); 
    for(int i =0;i<=rowNum;i++)   { 
      row = sheet.getRow(i); 
     int cellNum   =   row.getLastCellNum(); 
       HSSFCell   cell[] = new HSSFCell[cellNum] ;
       
      for (int j = 0;j<cellNum;j++)
         {
              cell[j] = row.getCell((short) j);
         }
   
       if(cell[0].getCellType()==0){//celltype  数字类型为0
      String name2=String.valueOf(cell[1].getNumericCellValue());
      name=name2.substring(0,((name2.length())-2));      
      }
      else
        {
         name=cell[0].getStringCellValue();   
          }
      
      
     //密码判断；数字或字符串； 
      if(cell[1].getCellType()==0){//celltype  数字类型为0
      String pwd2=String.valueOf(cell[1].getNumericCellValue());
      pwd=pwd2.substring(0,((pwd2.length())-2));      
      }
      else
        {
         pwd=cell[1].getStringCellValue();   
          }
          
      
     
     
     
      
      
     Gcstudent gcstudent=new Gcstudent();
      
      gcstudent.setName(name);
      gcstudent.setPwd(pwd);
     
     
      
      try   { 
      
        BasicDAO.save(gcstudent);
        //stmt.executeUpdate(sql); 
        out.println(JavaScript.alertandRedirect("数据导入成功", "GcstudentListbj.jsp"));
        //stmt.close();
        //db.executeUpdate(sql);
      }   catch   (SQLException e1)   { 
        e1.printStackTrace(); 
        
      } 
    } 
 
   
   
      out.write("\r\n");
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
