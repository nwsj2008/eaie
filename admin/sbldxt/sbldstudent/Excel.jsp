<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page language="java"  import="java.util.*,
                                  org.apache.poi.hssf.usermodel.HSSFWorkbook,
                                  org.apache.poi.hssf.usermodel.HSSFSheet,
                                  org.apache.poi.hssf.usermodel.HSSFRow,
                                  org.apache.poi.hssf.usermodel.HSSFCell,
                                  java.text.DecimalFormat"%>

<%
    //response.reset();
    response.setContentType("application/msexcel");
    response.setHeader("Content-disposition","inline;filename=student.xls");//定义文件名
    DecimalFormat f = new DecimalFormat("#,##0.00");
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("sheet1");
    String[] id = request.getParameterValues("id");
    String[] name = request.getParameterValues("name");
    String[] xuehao = request.getParameterValues("xuehao");
    String[] sex = request.getParameterValues("sex");
    String[] sszy = request.getParameterValues("sszy");
    String[] bkzy = request.getParameterValues("bkzy");
    String[] sd = request.getParameterValues("sd");
    String[] nbbd = request.getParameterValues("nbbd");
    String[] rxcj = request.getParameterValues("rxcj");
    String[] cjpm = request.getParameterValues("cjpm");
    String[] beizhu = request.getParameterValues("beizhu");
 
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
         
         //定义表头的内容
        cell1.setCellValue("序号");
        cell2.setCellValue("姓名");
        cell3.setCellValue("学号");
        cell4.setCellValue("性别");
        cell5.setCellValue("硕士专业");
        cell6.setCellValue("拟报博士专业");
        cell7.setCellValue("原硕导");
        cell8.setCellValue("拟报博导");
        cell9.setCellValue("入学成绩");
        cell10.setCellValue("学位课加权成绩排名");
        cell11.setCellValue("备注");
        
        
      

        wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();
 %>
