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
    response.setHeader("Content-disposition","inline;filename=student.xls");//�����ļ���
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
 
//������д��ͷ
        //��ͷΪ��һ��
      HSSFRow row = sheet.createRow((short) 0);
//����10��
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
         
         //�����ͷ������
        cell1.setCellValue("���");
        cell2.setCellValue("����");
        cell3.setCellValue("ѧ��");
        cell4.setCellValue("�Ա�");
        cell5.setCellValue("˶ʿרҵ");
        cell6.setCellValue("�ⱨ��ʿרҵ");
        cell7.setCellValue("ԭ˶��");
        cell8.setCellValue("�ⱨ����");
        cell9.setCellValue("��ѧ�ɼ�");
        cell10.setCellValue("ѧλ�μ�Ȩ�ɼ�����");
        cell11.setCellValue("��ע");
        
        
      

        wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();
 %>
