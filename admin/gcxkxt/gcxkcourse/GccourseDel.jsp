<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.List"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	String[] idStrings = request.getParameterValues("id");
	try {
		for (int i = 0; i < idStrings.length; i++) {
			int temp = Integer.parseInt(idStrings[i]);
			Gccourse gccourse = (Gccourse)BasicDAO.queryById(Gccourse.class, temp);
			
		   String hql = "From Gcxk As Gk where Gk.tid='"+gccourse.getId()+"'";
		   List listA = BasicDAO.queryByHql(hql);    //��Gcxk�в��ҿγ�id
		   
		   for(int j = 0;j<listA.size();j++)
		   		{
		   		    Gcxk gcxk = (Gcxk)listA.get(j);
		   		    BasicDAO.delete(gcxk);           //ɾ���Ŀγ�id��Ӧ��gcxk��Ϣ 
		   		}
           
			BasicDAO.delete(gccourse);               //ɾ����Ӧ�Ŀγ���Ϣ
		}
		out.println(JavaScript.alertandRedirect("ɾ���ɹ���",
				"Gcchoose.jsp"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("ɾ��ʧ�ܣ�"));

	}
%>