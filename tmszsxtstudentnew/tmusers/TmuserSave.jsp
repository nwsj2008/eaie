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
	//在数据库中查找与输入的用户名相同的用户名
	List list = BasicDAO
			.queryByHql("FROM Tmstudent As Tmusers where Tmusers.username = '"
					+ tmusername + "'");
	if (list.size() == 0) {//数据库不存在该用户
		MD5 md5 = new MD5();
		Tmstudent tmuser = new Tmstudent();
		tmuser.setUsername(tmusername);
		tmuser.setPwd(md5.getMD5ofStr(tmpassword));
		tmuser.setLogintimes(0);
		try {

			BasicDAO.save(tmuser);
			out.println(JavaScript.alertandRedirect("注册成功,返回登陆页面！", basePath
					+ "tmlogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("注册失败！",
					"TmuserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		//out.print("<script> alert('登录失败，请检查用户名及密码！')</script>");
		out.println(JavaScript.alertandRedirect("已有该用户名，请用新用户名注册！",
				"TmuserAdd.jsp"));
	}
%>






