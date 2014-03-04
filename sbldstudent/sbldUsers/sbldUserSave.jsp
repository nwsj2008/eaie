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
	//在数据库中查找与输入的用户名相同的用户名
	List list = BasicDAO.queryByHql("FROM Sbld As sbldUsers where sbldUsers.username = '"
					+ sbldusername + "'");
	if (list.size() == 0) {//数据库不存在该用户
		//MD5 md5 = new MD5();
		Sbld sblduser = new Sbld();
		sblduser.setUsername(sbldusername);
		//bsuser.setPwd(md5.getMD5ofStr(bspassword));
	    sblduser.setPwd(sbldpassword);
		try {

			BasicDAO.save(sblduser);
			out.println(JavaScript.alertandRedirect("注册成功,返回登陆页面！", basePath
					+ "sbldstudent/sbldLogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("注册失败！",
					"sbldUserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		out.println(JavaScript.alertandRedirect("已有该用户名，请用新用户名注册！",
				"sbldUserAdd.jsp"));
	}
%>