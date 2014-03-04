<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@ page import="org.apache.poi.poifs.filesystem.POIFSFileSystem"%>
<%@page import="sun.security.util.Password"%>

<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.poi.hssf.record.formula.functions.Int"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<%
		POIFSFileSystem fs = null;
		HSSFWorkbook wb = null;
		//Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver"); 
		//Connection conn = DriverManager.getConnection("jdbc:microsoft:sqlserver://202.112.146.68:1433;dataBase=seie2006","sa","sa");
		//Statement stmt=conn.createStatement();    

		try {
			fs = new POIFSFileSystem(new FileInputStream(
					"D:\\workspace\\eaie\\UploadFiles\\upfile\\gcss.xls "));
			//设定FileINputStream读取Excel档 
			wb = new HSSFWorkbook(fs);
		} catch (IOException e) {
			e.printStackTrace();
		}
		HSSFSheet sheet = wb.getSheetAt(0); //读取第一个工作表，宣告其为sheet ;
		HSSFRow row = null;
		//HSSFCell   cell = null; 
		String name = "";
		String sfz = "";
		String gcly = "";
		String gct = "";
		//String zyk = "";
		//String tel = "";
		//String lqjg = "";

		int rowNum = sheet.getLastRowNum();
		for (int i = 0; i <= rowNum; i++) {
			row = sheet.getRow(i);
			int cellNum = row.getLastCellNum();
			HSSFCell cell[] = new HSSFCell[cellNum];

			for (int j = 0; j < cellNum; j++) {
				cell[j] = row.getCell((short) j);
			}

			//name = cell[0].getStringCellValue(); //姓名为字符串
			
			if (cell[0].getCellType() == 0) {//celltype  数字类型为0
				String s = String.valueOf(cell[0].getNumericCellValue());
				name = s.substring(0, ((s.length()) - 2));
			} else {
				name = cell[0].getStringCellValue();
			}

			//密码判断；数字或字符串； 
			if (cell[1].getCellType() == 0) {//celltype  数字类型为0
				String s = String.valueOf(cell[1].getNumericCellValue());
				sfz = s.substring(0, ((s.length()) - 2));
			} else {
				sfz = cell[1].getStringCellValue();
			}
			
			if (cell[2].getCellType() == 0) {//celltype  数字类型为0
				String s = String.valueOf(cell[2].getNumericCellValue());
				gcly = s.substring(0, ((s.length()) - 2));
			} else {
				gcly = cell[2].getStringCellValue();
			}

			//gcly = cell[2].getStringCellValue();

			if (cell[3].getCellType() == 0) {//celltype  数字类型为0
				String s = String.valueOf(cell[3].getNumericCellValue());
				gct = s.substring(0, ((s.length()) - 2));
			} else {
				gct = cell[3].getStringCellValue();
			}
			// gct = cell[3].getStringCellValue();
	
      
       
			Gcss gcss = new Gcss();

			gcss.setName(name);
			gcss.setSfz(sfz);
			gcss.setGcly(gcly);
			gcss.setGct(gct);
			//gcss.setZyk(zyk);
			//gcss.setTel(tel);
			//gcss.setLqjg(lqjg);

			try {

				BasicDAO.save(gcss);
				//stmt.executeUpdate(sql); 
				out.println(JavaScript.alertandRedirect("数据导入成功",
						"gcssStudentDrList.jsp"));
				//stmt.close();
				//db.executeUpdate(sql);
			} catch (SQLException e1) {
				e1.printStackTrace();

			}
		}
	%>
</html>
