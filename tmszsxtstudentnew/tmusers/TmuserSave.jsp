<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.admin.tmusers.*"%>
<%@ page import="com.eaie.tmszsxt.*"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/tmszsxtstudentnew/";
%>

<%
	String tmusername = request.getParameter("tmusername");
	String tmpassword = request.getParameter("pwd");
	//�����ݿ��в�����������û�����ͬ���û���
	List list = BasicDAO
			.queryByHql("FROM Tmstudent As Tmusers where Tmusers.username = '"
					+ tmusername + "'");
	if (list.size() == 0) {//���ݿⲻ���ڸ��û�
		MD5 md5 = new MD5();
		Tmstudent tmuser = new Tmstudent();
		tmuser.setUsername(tmusername);
		tmuser.setPwd(md5.getMD5ofStr(tmpassword));
		tmuser.setLogintimes(0);
		try {

			BasicDAO.save(tmuser);
			out.println(JavaScript.alertandRedirect("ע��ɹ�,���ص�½ҳ�棡", basePath
					+ "tmlogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("ע��ʧ�ܣ�",
					"TmuserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		//out.print("<script> alert('��¼ʧ�ܣ������û��������룡')</script>");
		out.println(JavaScript.alertandRedirect("���и��û������������û���ע�ᣡ",
				"TmuserAdd.jsp"));
	}
%>






