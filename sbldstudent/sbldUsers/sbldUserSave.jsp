<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String sbldusername = request.getParameter("sbldusername");
	String sbldpassword = request.getParameter("sbldpassword");
	//�����ݿ��в�����������û�����ͬ���û���
	List list = BasicDAO.queryByHql("FROM Sbld As sbldUsers where sbldUsers.username = '"
					+ sbldusername + "'");
	if (list.size() == 0) {//���ݿⲻ���ڸ��û�
		//MD5 md5 = new MD5();
		Sbld sblduser = new Sbld();
		sblduser.setUsername(sbldusername);
		//bsuser.setPwd(md5.getMD5ofStr(bspassword));
	    sblduser.setPwd(sbldpassword);
		try {

			BasicDAO.save(sblduser);
			out.println(JavaScript.alertandRedirect("ע��ɹ�,���ص�½ҳ�棡", basePath
					+ "sbldstudent/sbldLogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("ע��ʧ�ܣ�",
					"sbldUserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		out.println(JavaScript.alertandRedirect("���и��û������������û���ע�ᣡ",
				"sbldUserAdd.jsp"));
	}
%>