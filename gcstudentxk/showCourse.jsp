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
%>
<html>

<head>
<title>��ʾ��ѧ�ڿγ�</title>
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
		<a class="active" href="index.jsp">��ҳ</a>
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
	<form action="">

<table  border="0" align="center" cellpadding="1" cellspacing="1" >
			<tr align="center" class="titleheader">
			  <td><a style="font-size: 19px">��ѧ�ڵĿγ�����:</a></td>
			</tr>
			</table>
			<table width="100%" border="1" align="left" cellpadding="1" cellspacing="1" class="border">
			<tr align="center">	
					<td>
					<nobr>
						�γ�����
						</nobr>
					</td>
					<td>
					<nobr>
						��ʦ</nobr>
					</td>
					<td>
					<nobr>
						ѧ��</nobr>
					</td>
					<td>
					<nobr>
						�Ͽεص�</nobr>
					</td>
					<td>
					<nobr>
						�Ͽ�ʱ��</nobr>
					</td>
					<td>
					<nobr>
						����</nobr>
					</td>
			</tr>
			<%
			    String HQL_GET_SID="From Gcxk as gcxk where gcxk.sid= '"+gc.getId()+"'";
			    List list = BasicDAO.queryByHql(HQL_GET_SID);
			  
			    if(list.size()!=0)
			    {
			    for(int i=0;i<list.size();i++)
			    {
			      Gcxk gcxk1 = (Gcxk)list.get(i);
			      int tid =gcxk1.getTid();
			      Gccourse course1 = (Gccourse)BasicDAO.queryById(Gccourse.class,tid);
			 %>
			  <tr align="center">	
					<td>
					<nobr>
						<%=course1.getTitle()==null?"":course1.getTitle() %>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getTeacher()==null?"":course1.getTeacher() %>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getCredit()==null?"":course1.getCredit() %></nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getPlace()==null?"":course1.getPlace() %></nobr>
					</td>
					<td>
					<nobr>
						������α�</nobr>
					</td>
					<td>
					<nobr>
						<a href="del.jsp?gcxkid=<%=gcxk1.getId() %>">ɾ��</a></nobr>
					</td>
			</tr>
		      <%
		      }
		      }
		      
		       %>

			</table>	
		</form>

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