<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="exp" class="Innovativelexp">
<jsp:setProperty name="exp" property="*"/>
</jsp:useBean>
<%
	try{
		String introduce = exp.getIntroduce();
		String team = exp.getTeam();
		String feature = exp.getFeature();
		String aim = exp.getIntention();
		String money = exp.getMoney();
		exp.setIntroduce(HtmlEncode.outHtml(introduce));
		exp.setTeam(HtmlEncode.outHtml(team));
		exp.setFeature(HtmlEncode.outHtml(feature));
		exp.setIntention(HtmlEncode.outHtml(aim));
		exp.setMoney(HtmlEncode.outHtml(money));
		ExpManage.UpdateInnovativelexp(exp);
		out.println(JavaScript.alertandRedirect("修改课题成功","ExpList.jsp"));
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("修改课题失败，请检查输入或重试"));
	}
%>