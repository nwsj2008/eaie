<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page language="java"  import="java.util.*,
                                  org.apache.poi.hssf.usermodel.HSSFWorkbook,
                                  org.apache.poi.hssf.usermodel.HSSFSheet,
                                  org.apache.poi.hssf.usermodel.HSSFRow,
                                  org.apache.poi.hssf.usermodel.HSSFCell,
                                  java.text.DecimalFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
response.reset();
    response.setContentType("application/msexcel");
    response.setHeader("Content-disposition","inline;filename=tmstudent.xls");//定义文件名
    DecimalFormat f = new DecimalFormat("#,##0.00");
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("sheet1");
    String[] id = request.getParameterValues("id");
    String[] name = request.getParameterValues("name");
    String[] byschool = request.getParameterValues("byschool");
    String[] byspeciality = request.getParameterValues("byspeciality");
    String[] jsacademe = request.getParameterValues("jsacademe");
    String[] jsspeciality = request.getParameterValues("jsspeciality");
    String[] tel = request.getParameterValues("tel");
    String[] siji=request.getParameterValues("siji");
    String[] liuji=request.getParameterValues("liuji");
    String[] zypm=request.getParameterValues("zypm");
    String[] zyrs=request.getParameterValues("zyrs");
    String[] huoj=request.getParameterValues("huoj");
    String[] fushiresult = request.getParameterValues("fushiresult");
    String[] shenheresult = request.getParameterValues("shenheresult");   
    String[] sflq = request.getParameterValues("sflq");
    String[] teacher = request.getParameterValues("teacher");

    


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
         HSSFCell cell12 = row.createCell((short) 11);
         HSSFCell cell13 = row.createCell((short) 12);
         HSSFCell cell14 = row.createCell((short) 13);
         HSSFCell cell15 = row.createCell((short) 14);
         HSSFCell cell16 = row.createCell((short) 15);

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
        cell12.setEncoding((short) 1);
        cell12.setCellType(1);
        cell13.setEncoding((short) 1);
        cell13.setCellType(1);
        cell14.setEncoding((short) 1);
        cell14.setCellType(1);
        cell15.setEncoding((short) 1);
        cell15.setCellType(1);
        cell16.setEncoding((short) 1);
        cell16.setCellType(1);
//定义表头的内容
        cell1.setCellValue("序号");
        cell2.setCellValue("姓名");
        cell3.setCellValue("毕业学校");
        cell4.setCellValue("毕业专业");
        cell5.setCellValue("接收学院");
        cell6.setCellValue("接收专业");
        cell7.setCellValue("联系电话");
        cell8.setCellValue("四级成绩");
        cell9.setCellValue("六级成绩");
        cell10.setCellValue("专业排名");
        cell11.setCellValue("专业人数");
        cell12.setCellValue("获奖情况");
        cell13.setCellValue("复试成绩");
        cell14.setCellValue("考核信息");
        cell15.setCellValue("录取信息");
        cell16.setCellValue("导师信息");
        


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
                cell12 = row.createCell((short) 11);
                cell13 = row.createCell((short) 12);
                cell14 = row.createCell((short) 13);
                cell15 = row.createCell((short) 14);
                cell16 = row.createCell((short) 15);

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
               cell12.setEncoding((short) 1);
               cell12.setCellType(1);
               cell13.setEncoding((short) 1);
               cell13.setCellType(1);
               cell14.setEncoding((short) 1);
               cell14.setCellType(1);
               cell15.setEncoding((short) 1);
               cell15.setCellType(1);
               cell16.setEncoding((short) 1);
               cell16.setCellType(1);

//填充内容
        cell1.setCellValue(id[i]);
        cell2.setCellValue(name[i]);
        cell3.setCellValue(byschool[i]);
        cell4.setCellValue(byspeciality[i]);
        cell5.setCellValue(jsacademe[i]);
        cell6.setCellValue(jsspeciality[i]);
        cell7.setCellValue(tel[i]);
        cell8.setCellValue(siji[i]);
        cell9.setCellValue(liuji[i]);
        cell10.setCellValue(zypm[i]);
        cell11.setCellValue(zyrs[i]);
        cell12.setCellValue(huoj[i]);
        cell13.setCellValue(fushiresult[i]);
        cell14.setCellValue(shenheresult[i]);     
        cell15.setCellValue(sflq[i]);
        cell16.setCellValue(teacher[i]);
    }
    wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();



%>