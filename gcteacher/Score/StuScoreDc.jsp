<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page language="java"  import="java.util.*,
                                  org.apache.poi.hssf.usermodel.HSSFWorkbook,
                                  org.apache.poi.hssf.usermodel.HSSFSheet,
                                  org.apache.poi.hssf.usermodel.HSSFRow,
                                  org.apache.poi.hssf.usermodel.HSSFCell,
                                  java.text.DecimalFormat"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.gcxkxt.gcstudent.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%

    
    
   
    String tid =request.getParameter("tid");

    //Gcstudent gcstu = (Gcstudent)BasicDAO.queryById(Gcstudent.class,Integer.parseInt(sid));
    
    response.reset();
    response.setContentType("application/msexcel");
    response.setHeader("Content-disposition","inline;filename=score.xls");//�����ļ���
    DecimalFormat f = new DecimalFormat("#,##0.00");
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("sheet1");
   

//������д��ͷ
        //��ͷΪ��һ��
       HSSFRow row0 = sheet.createRow((short) 0);
       HSSFCell cell01 = row0.createCell((short) 0);
       HSSFCell cell02 = row0.createCell((short) 1);
       
    
        cell01.setEncoding((short) 1);
        cell01.setCellType(1);
        cell02.setEncoding((short) 1);
        cell02.setCellType(1);
       
        //��ͷΪ�ڶ���
        HSSFRow row = sheet.createRow((short) 1);
//����7��
     
        HSSFCell cell1 = row.createCell((short) 0);
        HSSFCell cell2 = row.createCell((short) 1);
        HSSFCell cell3 = row.createCell((short) 2);
        HSSFCell cell4 = row.createCell((short) 3);
        
   
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
        


        String hql = "from Gcxk as gcxk where gcxk.tid ='"+tid+"'";
        List gcxkList = BasicDAO.queryByHql(hql);
	    //Gcstudent stu = (Gcstudent)BasicDAO.queryById(Gcstudent.class,Integer.parseInt(sid));
	    int i;
        for(i=0;i<gcxkList.size();i++){
			Gcxk gcxk =(Gcxk)gcxkList.get(i);
			//String tid = gcxk.getTid();
			Gccourse course = (Gccourse)BasicDAO.queryById(Gccourse.class,gcxk.getTid());
						
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
        cell1.setCellValue(course.getTitle());
        cell2.setCellValue(course.getCredit());
        cell3.setCellValue(course.getXueshi());
        cell4.setCellValue(gcxk.getScore()==null?"δ����":gcxk.getScore());
       
					
					
		
         
//���������λ
    i=i+3;
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
              
             
        cell1.setCellValue(" ");
        cell2.setCellValue(" ");
        cell3.setCellValue(" ");
        cell4.setCellValue(" ");
        cell5.setCellValue(" ");
        cell6.setCellValue("������λ��������ͨ��ѧ������Ϣ����ѧԺ");
        cell7.setCellValue(" ");	


  i++;



//���ʱ��


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
               
             
        //Date DCtime =new Date();
        String time="ʱ�䣺"+new Date();
        cell1.setCellValue(" ");
        cell2.setCellValue(" ");
        cell3.setCellValue(" ");
        cell4.setCellValue(" ");
      	


 }
    wb.write(response.getOutputStream());
    response.getOutputStream().flush();
    response.getOutputStream().close();



%>