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
    response.setHeader("Content-disposition","inline;filename=tqgbstudent.xls");//�����ļ���
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

    


//������д��ͷ
        //��ͷΪ��һ��
        
      HSSFRow row = sheet.createRow((short) 0);
      HSSFCell []cell = new HSSFCell[cellNum];
      
   
      
   
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
//�����ͷ������
        cell1.setCellValue("���");
        cell2.setCellValue("����");
        cell3.setCellValue("ѧ��");
        cell4.setCellValue("�Ա�");
        cell5.setCellValue("˶ʿרҵ");
        cell6.setCellValue("�ⱨ��ʿרҵ");
        cell7.setCellValue("ԭ˶��");
        cell8.setCellValue("�ⱨ����");
        cell9.setCellValue("ѧλ�μ�Ȩ�ɼ�����");
        cell10.setCellValue("��ע");
        cell11.setCellValue("��ϵ��ʽ");
      
        


    for(int i= 0; i < name.length; i++){
//�������ݴӵڶ��п�ʼ       
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
              

//�������
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



%>