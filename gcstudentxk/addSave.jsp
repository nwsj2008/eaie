<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.xk.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%
	String tid = request.getParameter("addid");
	String sid = request.getParameter("sid");
	Gcxk gcxk = new Gcxk();
	Gcxk gcxk1 = new Gcxk();
	String HQL_SID="From Gcxk as gcxk where gcxk.sid='"+sid+"'";
	List list = BasicDAO.queryByHql(HQL_SID);
	int isHave = 0;
	for(int i=0;i<list.size();i++)
	{
	   gcxk1 = (Gcxk)list.get(i);
	   int ttid=gcxk1.getTid();
	   if(ttid==Integer.parseInt(tid))  isHave=1;
	}
	if(isHave==0){
		try {
			    
				gcxk.setSid(Integer.parseInt(sid));
				gcxk.setTid(Integer.parseInt(tid));
			    BasicDAO.save(gcxk);
			    out.println(JavaScript.alertandRedirect("选课成功", "xk.jsp"));

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(JavaScript.alertandBack("选课失败"));
		}
}else{
    out.println(JavaScript.alertandRedirect("该课程已选上,请不要重复选课", "xk.jsp"));
}
%>