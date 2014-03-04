<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page language="java"  import="java.util.*,
                                  org.apache.poi.hssf.usermodel.HSSFWorkbook,
                                  org.apache.poi.hssf.usermodel.HSSFSheet,
                                  org.apache.poi.hssf.usermodel.HSSFRow,
                                  org.apache.poi.hssf.usermodel.HSSFCell,
                                  java.text.DecimalFormat"%>
<%@ page import="org.apache.poi.hssf.util.Region,org.apache.poi.hssf.usermodel.HSSFFont" %>                            
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	response.reset();//清除首部的空白行
    response.setContentType("application/msexcel");
    response.setHeader("Content-disposition","inline;filename=studentScore.xls");//定义文件名
    DecimalFormat f = new DecimalFormat("#,##0.00");
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("sheet1");
    String courseTitle = request.getParameter("csTitle");
    String[] xuhao = request.getParameterValues("xuhao");
    String[] name = request.getParameterValues("name");
    String[] score = request.getParameterValues("score");
    String[] beizhu = request.getParameterValues("beizhu");
   

//以下以写表头
        //表头为第一行
      	HSSFRow row0 = sheet.createRow((short) 0);
		//hjn
		HSSFCell cell01 = row0.createCell((short) 0);
        HSSFCell cell02 = row0.createCell((short) 1);
        
        cell01.setEncoding((short) 1);
        cell01.setCellType(1);
        cell02.setEncoding((short) 1);
        cell02.setCellType(1);
        
        cell01.setCellValue("课程名称");
        cell02.setCellValue(courseTitle);
        //合并第0行的单元格1至3
        sheet.addMergedRegion(new Region(0,(short)1,0,(short)3));
        
         HSSFRow row = sheet.createRow((short) 1);
//定义10列
        HSSFCell cell1 = row.createCell((short) 0);
        HSSFCell cell2 = row.createCell((short) 1);
        HSSFCell cell3 = row.createCell((short) 2);
        HSSFCell cell4 = row.createCell((short) 3);
   
//设置每列的属性名

        cell1.setEncoding((short) 1);
        cell1.setCellType(1);
        cell2.setEncoding((short) 1);
        cell2.setCellType(1);
        cell3.setEncoding((short) 1);
        cell3.setCellType(1);
        cell4.setEncoding((short) 1);
        cell4.setCellType(1);
     
//定义表头的内容
        cell1.setCellValue("序号");
        cell2.setCellValue("姓名");
        cell3.setCellValue("分数");
		cell4.setCellValue("备注");
    for(int i= 0; i < name.length; i++){
//定义数据从第三行开始       
  row = sheet.createRow((short) i+2);
                cell1 = row.createCell((short) 0);
                cell2 = row.createCell((short) 1);
                cell3 = row.createCell((short) 2);
               	cell4 = row.createCell((short) 3);
               	
               cell1.setEncoding((short) 1);
               cell1.setCellType(1);
               cell2.setEncoding((short) 1);
               cell2.setCellType(1);
               cell3.setEncoding((short) 1);
               cell3.setCellType(1);
               cell4.setEncoding((short) 1);
               cell4.setCellType(1);
              

//填充内容
        cell1.setCellValue(xuhao[i]);
        cell2.setCellValue(name[i]);
        cell3.setCellValue(score[i]);
      	cell4.setCellValue(beizhu[i]);
      
    }
     
        //定义表尾
      	HSSFRow row2 = sheet.createRow((short) (name.length+2));
		HSSFCell cell21 = row2.createCell((short) 0);
        HSSFCell cell22 = row2.createCell((short) 1);
        cell21.setEncoding((short) 1);
        cell21.setCellType(1);
        cell22.setEncoding((short) 1);
        cell22.setCellType(1);
        cell22.setCellNum((short)2);
        //合并表尾的单元格0至2
        sheet.addMergedRegion(new Region((name.length+2),(short)0,(name.length+2),(short)1)); 
        sheet.addMergedRegion(new Region((name.length+2),(short)2,(name.length+2),(short)3)); 
        cell21.setCellValue("");
        cell22.setCellValue("培养单位");
        
       
    wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();



%>