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
	response.reset();//����ײ��Ŀհ���
    response.setContentType("application/msexcel");
    response.setHeader("Content-disposition","inline;filename=studentScore.xls");//�����ļ���
    DecimalFormat f = new DecimalFormat("#,##0.00");
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("sheet1");
    String courseTitle = request.getParameter("csTitle");
    String[] xuhao = request.getParameterValues("xuhao");
    String[] name = request.getParameterValues("name");
    String[] score = request.getParameterValues("score");
    String[] beizhu = request.getParameterValues("beizhu");
   

//������д��ͷ
        //��ͷΪ��һ��
      	HSSFRow row0 = sheet.createRow((short) 0);
		//hjn
		HSSFCell cell01 = row0.createCell((short) 0);
        HSSFCell cell02 = row0.createCell((short) 1);
        
        cell01.setEncoding((short) 1);
        cell01.setCellType(1);
        cell02.setEncoding((short) 1);
        cell02.setCellType(1);
        
        cell01.setCellValue("�γ�����");
        cell02.setCellValue(courseTitle);
        //�ϲ���0�еĵ�Ԫ��1��3
        sheet.addMergedRegion(new Region(0,(short)1,0,(short)3));
        
         HSSFRow row = sheet.createRow((short) 1);
//����10��
        HSSFCell cell1 = row.createCell((short) 0);
        HSSFCell cell2 = row.createCell((short) 1);
        HSSFCell cell3 = row.createCell((short) 2);
        HSSFCell cell4 = row.createCell((short) 3);
   
//����ÿ�е�������

        cell1.setEncoding((short) 1);
        cell1.setCellType(1);
        cell2.setEncoding((short) 1);
        cell2.setCellType(1);
        cell3.setEncoding((short) 1);
        cell3.setCellType(1);
        cell4.setEncoding((short) 1);
        cell4.setCellType(1);
     
//�����ͷ������
        cell1.setCellValue("���");
        cell2.setCellValue("����");
        cell3.setCellValue("����");
		cell4.setCellValue("��ע");
    for(int i= 0; i < name.length; i++){
//�������ݴӵ����п�ʼ       
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
              

//�������
        cell1.setCellValue(xuhao[i]);
        cell2.setCellValue(name[i]);
        cell3.setCellValue(score[i]);
      	cell4.setCellValue(beizhu[i]);
      
    }
     
        //�����β
      	HSSFRow row2 = sheet.createRow((short) (name.length+2));
		HSSFCell cell21 = row2.createCell((short) 0);
        HSSFCell cell22 = row2.createCell((short) 1);
        cell21.setEncoding((short) 1);
        cell21.setCellType(1);
        cell22.setEncoding((short) 1);
        cell22.setCellType(1);
        cell22.setCellNum((short)2);
        //�ϲ���β�ĵ�Ԫ��0��2
        sheet.addMergedRegion(new Region((name.length+2),(short)0,(name.length+2),(short)1)); 
        sheet.addMergedRegion(new Region((name.length+2),(short)2,(name.length+2),(short)3)); 
        cell21.setCellValue("");
        cell22.setCellValue("������λ");
        
       
    wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();



%>