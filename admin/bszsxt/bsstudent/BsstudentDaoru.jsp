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
<%@page import="com.eaie.tools.JavaScript"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<%
   POIFSFileSystem   fs   =   null; 
   HSSFWorkbook   wb   =   null;
    //Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver"); 
    //Connection conn = DriverManager.getConnection("jdbc:microsoft:sqlserver://202.112.146.68:1433;dataBase=seie2006","sa","sa");
    //Statement stmt=conn.createStatement();    
     
     
    try   { 
      fs   =   new   POIFSFileSystem(new   FileInputStream( "F:\\workspace\\eaie\\UploadFiles\\upfile\\bs.xls "));
       //�趨FileINputStream��ȡExcel�� 
      wb   =   new   HSSFWorkbook(fs); 
    }   catch   (IOException   e)   { 
      e.printStackTrace(); 
    } 
    HSSFSheet   sheet   =   wb.getSheetAt(0); //��ȡ��һ��������������Ϊsheet ;
    HSSFRow   row = null; 
    //HSSFCell   cell = null; 
    String name=""; 
    String pwd="";
    String bkzy="";
    String bkds="";
    String waiyu="";
    String yewu1="";
    String yewu2="";
    String zongfen="";
   

     
   int rowNum=sheet.getLastRowNum(); 
    for(int i =0;i<=rowNum;i++)   { 
      row = sheet.getRow(i); 
     int cellNum   =   row.getLastCellNum(); 
       HSSFCell   cell[] = new HSSFCell[cellNum] ;
       
      for (int j = 0;j<cellNum;j++)
         {
              cell[j] = row.getCell((short) j);
         }
   
      name=cell[0].getStringCellValue(); //����Ϊ�ַ���
    
     //�����жϣ����ֻ��ַ����� 
      if(cell[1].getCellType()==0){//celltype  ��������Ϊ0
      String pwd2=String.valueOf(cell[1].getNumericCellValue());
      pwd=pwd2.substring(0,((pwd2.length())-2));      
      }
      else
        {
         pwd=cell[1].getStringCellValue();   
          }
          
      if(cell[2].getCellType()==0){//celltype  ��������Ϊ0
      String bk=String.valueOf(cell[2].getNumericCellValue());
      bkzy=bk.substring(0,((bk.length())-2));      
      }
      else
        {
         bkzy=cell[2].getStringCellValue();   
          }
      
    if(cell[3].getCellType()==0){//celltype  ��������Ϊ0
      String ds=String.valueOf(cell[3].getNumericCellValue());
      bkds=ds.substring(0,((ds.length())-2));      
      }
      else
        {
         bkds=cell[3].getStringCellValue();   
          }
          
   if(cell[4].getCellType()==0){//celltype  ��������Ϊ0
      String waiyu2=String.valueOf(cell[4].getNumericCellValue());
      waiyu=waiyu2.substring(0,((waiyu2.length())-2));      
      }
      else
        {
         waiyu=cell[4].getStringCellValue();   
          }
     
     if(cell[5].getCellType()==0){//celltype  ��������Ϊ0
      String yewu3=String.valueOf(cell[5].getNumericCellValue());
      yewu1=yewu3.substring(0,((yewu3.length())-2));      
      }
      else
        {
         yewu1=cell[5].getStringCellValue();   
          }
     
     if(cell[6].getCellType()==0){//celltype  ��������Ϊ0
      String yewu4=String.valueOf(cell[6].getNumericCellValue());
      yewu2=yewu4.substring(0,((yewu4.length())-2));      
      }
      else
        {
         yewu2=cell[6].getStringCellValue();   
          }
    
    
     
    if(cell[7].getCellType()==0){//celltype  ��������Ϊ0
      String zongfen2=String.valueOf(cell[7].getNumericCellValue());
      zongfen=zongfen2.substring(0,((zongfen2.length())-2));      
      }
      else
        {
         zongfen=cell[7].getStringCellValue();   
          }
     
     
     
      
      
      Bsstudent bsstudent=new Bsstudent();
      
      bsstudent.setName(name);
      bsstudent.setPwd(pwd);
      bsstudent.setBkzy(bkzy);
      bsstudent.setBkds(bkds);
      bsstudent.setWaiyu(waiyu);
      bsstudent.setYewu1(yewu1);
      bsstudent.setYewu2(yewu2);
      bsstudent.setZongfen(zongfen);
     
      
      try   { 
      
        BasicDAO.save(bsstudent);
        //stmt.executeUpdate(sql); 
        out.println(JavaScript.alertandRedirect("���ݵ���ɹ�", "BsstudentList.jsp"));
        //stmt.close();
        //db.executeUpdate(sql);
      }   catch   (SQLException e1)   { 
        e1.printStackTrace(); 
        
      } 
    } 
 
   
   %>
</html>
