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
	String tqgbusername = request.getParameter("tqgbusername");
	String tqgbpassword = request.getParameter("tqgbpassword");
	//�����ݿ��в�����������û�����ͬ���û���
	List list = BasicDAO.queryByHql("FROM Tqgb As tqgbUsers where tqgbUsers.username = '"
					+ tqgbusername + "'");
	if (list.size() == 0) {//���ݿⲻ���ڸ��û�
		//MD5 md5 = new MD5();
		Tqgb tqgbuser = new Tqgb();
		tqgbuser.setUsername(tqgbusername);
		//bsuser.setPwd(md5.getMD5ofStr(bspassword));
	    tqgbuser.setPwd(tqgbpassword);
		try {

			BasicDAO.save(tqgbuser);
			out.println(JavaScript.alertandRedirect("ע��ɹ�,���ص�½ҳ�棡", basePath
					+ "tqgb/tqgbLogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("ע��ʧ�ܣ�",
					"tqgbUserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		out.println(JavaScript.alertandRedirect("���и��û������������û���ע�ᣡ",
				"tqgbUserAdd.jsp"));
	}
%>