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
	//在数据库中查找与输入的用户名相同的用户名
	List list = BasicDAO.queryByHql("FROM Tqgb As tqgbUsers where tqgbUsers.username = '"
					+ tqgbusername + "'");
	if (list.size() == 0) {//数据库不存在该用户
		//MD5 md5 = new MD5();
		Tqgb tqgbuser = new Tqgb();
		tqgbuser.setUsername(tqgbusername);
		//bsuser.setPwd(md5.getMD5ofStr(bspassword));
	    tqgbuser.setPwd(tqgbpassword);
		try {

			BasicDAO.save(tqgbuser);
			out.println(JavaScript.alertandRedirect("注册成功,返回登陆页面！", basePath
					+ "tqgb/tqgbLogin.jsp"));
		} catch (Exception ex) {
			out.println(JavaScript.alertandRedirect("注册失败！",
					"tqgbUserAdd.jsp"));
			out.println(ex.getMessage());
		}

	} else {
		out.println(JavaScript.alertandRedirect("已有该用户名，请用新用户名注册！",
				"tqgbUserAdd.jsp"));
	}
%>