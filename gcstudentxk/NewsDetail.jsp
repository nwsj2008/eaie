<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="com.eaie.gcxknews.GcxknewsList"%>
<%@ page import="java.text.SimpleDateFormat"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gcUser = (Gcstudent)session.getAttribute("GCUSER");

%>
<html>


<head>
		
		<title>֪ͨ������Ϣ</title>
		
		<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
<script language="JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>

</head>



<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
 List list=BasicDAO.queryByHql("From Gcxknews Gcxknews where Gcxknews.id='"+id+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }else{
  Gcxknews gcnews=(Gcxknews)list.get(0);
 %>

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
	<form name="myform" id="myform" method="post"
			action="#">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						������Ϣ����ѧԺ����˶ʿѡ��֪ͨ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;�⣺
					</td>
					<td>
					    <input name="id" id="id" type="hidden" value="<%=id%>">
						
																	
					<%=(gcnews.getTitle() == null) ? "" : gcnews.getTitle()%>
								
				
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;�ݣ�
					</td>
			
					
						<td valign="top">
																	
					<%=(gcnews.getContent() == null) ? "" : gcnews.getContent()%>
								
					</td>
				</tr>


				
				<%
								if (gcnews.getFileurl() != null
											&& !gcnews.getFileurl().equals("")) {
							%>
							<tr>
								<td>
									��&nbsp;����
									<a href="../sb_download.jsp?id=<%=gcnews.getId()%>">
										<%=gcnews.getFilename()%> </a>
								</td>
							</tr>
							<%
								}
							%>
				
<tr align="center" class="tdbg">
					<td colspan="2">
						
						<input type="button" name="back" value="��&nbsp;��"  onClick="window.location.href='NewsList.jsp'">
					</td>
				</tr>
				
			</table>
		</form>
		<%
 }
 %>
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