<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.common.Page"%>
<%@page import="com.eaie.dbmanage.*"%>
<%@page import="com.eaie.gcxknews.GcxknewsList"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Gcstudent gcUser = (Gcstudent)session.getAttribute("GCUSER");

%>
<html>


<head>
		
		<title>��ʾ֪ͨ</title>
		<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
<script language="JavaScript">
		

		
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script language="JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>
		<Script Language=JavaScript>
		function checkall()     
		{  var num;     
		   num=document.form2.elements.length;     
		        
		   if(document.form2.chkall.checked)     
		   {  var i;     
		      for(i=0;i<num;i++)     
		        if(document.form2.elements[i].type=="checkbox"&&document.form2.elements[i].name!="chkall")     
		           document.form2.elements[i].checked = true;     
		      return true;     
		   }     
		   else   
		   {  var j;     
		      for(i=0;i<num;i++)     
		        if(document.form2.elements[i].type == "checkbox"&&document.form2.elements[i].name!="chkall")     
		           document.form2.elements[i].checked = !(document.form2.elements[i].checked);     
		      return true;     
		   }     
		     
		}     
		</Script>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


	</head>
	<%!List list;
	String cKeyWords, csearchpart;%>
		<%
		 SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			GcxknewsList clist = new GcxknewsList();
			list = clist.getGcxknewsList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
		//	Iterator it = list.iterator();
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
	<br><br>
	<form name="form2" method="post"
			action="#">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="350" align="">
						����
					</td>
					<td>
						����ʱ��
					</td>
					

				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Gcxknews Gcnews = (Gcxknews) list.get(i);
				%>

				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
				
					<td>
						<a href="NewsDetail.jsp?id=<%=Gcnews.getId()%>"><%=Gcnews.getTitle()%></a>
					</td>
					<td><%=dateFormatStart.format(Gcnews.getPubtime())%>
					
			

						

						<%
							}
							}
						%>
						</tr>
						
					
			</table>
			
		</form>


		<form name="pageForm" action="">
			<table align="center" width="96%">
				<tr>
					<td align="center"><input type="hidden" id="keyword" name="keyword"
							value=<%=cKeyWords == null ? "" : cKeyWords%>>
						<input type="hidden" id="keyword" name="type"
							value=<%=csearchpart == null ? "" : csearchpart%>>
							<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>
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