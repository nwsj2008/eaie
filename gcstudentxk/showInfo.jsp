<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.xk.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
   Gcxkopen gcxkopen = new Gcxkopen();
  gcxkopen = (Gcxkopen)BasicDAO.queryById(Gcxkopen.class,1);
  String openxt = gcxkopen.getOpenxt();
  String term = gcxkopen.getTerm();
  String nian="";
  if(openxt.equals("0"))
    out.println(JavaScript.alertandRedirect("���ڲ���ѡ��ʱ��", "index.jsp"));
    
   String courseid=request.getParameter("courseid");
   
   int sid;
   if(gc!=null){
    sid=gc.getId();
%>
<html>

<head>
<title>�γ̾�����Ϣ</title>
<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
</head>

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ����˶ʿѡ��ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="#">��ҳ</a>
		<a href="NewsList.jsp">�鿴֪ͨ</a>
		<a href="xk.jsp">ѡ����ѧ�ڿγ�</a>	
		<a href="showCourse.jsp">��ʾ��ѧ�ڿγ�</a>	
	    <a href="showScore.jsp">�鿴����</a>
	    <a href="help.jsp">ѡ�ΰ���</a>
		<a href="logout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	
	<form name="add" method="post" action="addSave.jsp" >
<%
    if(courseid!=null)
    {
     
    Gccourse courseList = (Gccourse)BasicDAO.queryById(Gccourse.class,Integer.parseInt(courseid));
    String HQL_GET_NUM="From Gcxk as gc where gc.tid='"+courseid+"'";
    List gclist = BasicDAO.queryByHql(HQL_GET_NUM);
    int num=gclist.size();
 %>
 <h2>�鿴<%=courseList.getTitle() %>�ľ�����Ϣ</h2>
 
<fieldset >
<legend>�γ���Ϣ��</legend>

<label>�γ����ƣ�<input type="text" readonly="readonly" value="<%=(courseList.getTitle()==null?"":courseList.getTitle()) %>" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�ον�ʦ��<input type="text" readonly="readonly" value="<%=(courseList.getTeacher()==null?"":courseList.getTeacher()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>�Ͽεص㣺<input type="text" readonly="readonly" value="<%=(courseList.getPlace()==null?"":courseList.getPlace()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�Ͽ�ʱ�䣺<input type="text" width="300" readonly="readonly" value="<%=courseList.getShijian() %>"/></label><br>
<label>ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�֣�<input type="text" readonly="readonly" value="<%=(courseList.getCredit()==null?"":courseList.getCredit()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ڣ�<input type="text" readonly="readonly" value="<%=(courseList.getCredit()==null?"":courseList.getCredit()) %>"/></label><br>
<label>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ģ�<input type="text" readonly="readonly" value="<%=(courseList.getBook()==null?"":courseList.getBook()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѡ��������<input type="text" readonly="readonly" value="<%=num %>"/></label><br>
<label>������Ϣ��<input type="text" readonly="readonly" value="<%=(courseList.getTest()==null?"":courseList.getTest()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="addid" name="addid" value="<%=courseid %>">
<input type="hidden" id="sid" name="sid" value="<%=sid %>">
<input type="submit" id="submit" name="submit" value="ѡ�ϸÿγ�">
<input type="button" name="back" value="��&nbsp;��"  onClick="window.location.href='xk.jsp'">
</td>

</tr>
</table>
<%
   }else{
 %>
 <fieldset >
<legend>�γ���Ϣ��</legend>

<label>�γ����ƣ�<input type="text" readonly="readonly" value="" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�ον�ʦ��<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>�Ͽεص㣺<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�Ͽ�ʱ�䣺<input type="text" width="300" readonly="readonly" value=""/></label><br>
<label>ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�֣�<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ڣ�<input type="text" readonly="readonly" value=""/></label><br>
<label>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ģ�<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѡ��������<input type="text" readonly="readonly" value=""/></label><br>
<label>������Ϣ��<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
 
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="" name="" value="">
<input type="submit" id="" name="" value="ѡ�ϸÿγ�">
</td>

</tr>
</table>
<%
   }
   }
 %>
	</form>
	<br>

		<br><br>
	</div>
	
	
	</div>
	
	<div id="footer">
			��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
	</div>


</div>
</body>
</html>