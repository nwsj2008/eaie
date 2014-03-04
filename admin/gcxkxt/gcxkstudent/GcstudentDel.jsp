<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.log4j.Logger"%>

<%
Logger log = Logger.getRootLogger();
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
   log.error("This is an Error");
	String[] idStrings = request.getParameterValues("id");
	try {
		for (int i = 0; i < idStrings.length; i++) {
			int temp = Integer.parseInt(idStrings[i]);
			Gcstudent gcstudent = (Gcstudent)BasicDAO.queryById(Gcstudent.class, temp);
			 String hql = "FROM Gcxk As Gc where Gc.sid = '"+gcstudent.getId()+"'";
             System.out.println("abc");
             List list =BasicDAO.queryByHql(hql);
         System.out.println("adv");
            for (int j = 0; j<list.size();j++)
                {
                System.out.println("ddd");
                Gcxk gcxk = (Gcxk)list.get(j);
                BasicDAO.delete(gcxk);
                System.out.println("aaa"+gcxk.getSid());
                  }
                
			BasicDAO.delete(gcstudent);
		}
		out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡",
				"GcstudentList.jsp"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¡"));

	}
%>