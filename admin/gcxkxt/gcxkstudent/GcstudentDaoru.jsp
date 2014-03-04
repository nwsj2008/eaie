<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import="java.io.IOException"%>

<%@ page import="java.sql.SQLException"%>

<%@ page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@ page import="org.apache.poi.poifs.filesystem.POIFSFileSystem"%>
<%@ page import="com.eaie.tools.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<%
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
 
   
   %>
</html>
