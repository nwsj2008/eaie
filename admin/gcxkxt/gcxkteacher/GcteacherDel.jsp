<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.List"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String[] idStrings = request.getParameterValues("id");
	try {
		for (int i = 0; i < idStrings.length; i++) {
			int temp = Integer.parseInt(idStrings[i]);
			Gcteacher gcteacher = (Gcteacher) BasicDAO.queryById(
					Gcteacher.class, temp);
			String hql = "FROM Gccourse As Course where Course.teacher='"
					+ gcteacher.getName() + "'";//��Gccourse�в��Ҷ�Ӧ�Ľ�ʦ����
			List listA = BasicDAO.queryByHql(hql);

			if (listA.size() > 0) //���������
			{
				for (int m = 0; m < listA.size(); m++) {

					Gccourse gccourse = (Gccourse) listA.get(m);// һ����ʦ�������ſγ�

					String Shql = "FROM Gcxk As Gk where Gk.tid='"
							+ gccourse.getId() + "'"; //��Gcxk�в��Ҹý�ʦ���̿γ̵�ID
					List listB = BasicDAO.queryByHql(Shql);
					if (listB.size() > 0) {
						for (int j = 0; j < listB.size(); j++) {
							Gcxk gcxk = (Gcxk) listB.get(j);
							BasicDAO.delete(gcxk); //��Gcxk��ɾ���Ľ�ʦ���̿γ̵�ѡ����Ϣ
						}
					}

					BasicDAO.delete(gccourse);
				}
			}
			BasicDAO.delete(gcteacher);

		}

		out.println(JavaScript.alertandRedirect("ɾ���ɹ���",
				"GcteacherList.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("ɾ��ʧ�ܣ�"));

	}
%>