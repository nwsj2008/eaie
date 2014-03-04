<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.gcteacher.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>

<%
    int csid=Integer.parseInt(request.getParameter("csid"));
    String hql = "";
	hql = "from Gcxk as gcxk where gcxk.tid ='"+ csid + "'";
	List lista = BasicDAO.queryByHql(hql);
    // int xkid=Integer.parseInt(request.getParameter("xkid"));
	//String score = request.getParameter("score");
	
    //gcxk.setId(xkid);
	//gcxk.setScore(score);
try {
	for (int i=0;i<lista.size();i++)
	{
		Gcxk gcxk=(Gcxk)lista.get(i);
		int xkid=gcxk.getId();
		String gcxkid=gcxk.getId().toString();
		String score=request.getParameter(gcxkid);
		Gcxk gcxkTwo= ( Gcxk )BasicDAO.queryById(Gcxk.class, xkid);
		gcxkTwo.setId(xkid);
		gcxkTwo.setScore(score);
		BasicDAO.update(gcxkTwo);
		
	}
	out.println(JavaScript.alertandRedirect("保存成功", "../score.jsp"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>