<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.bszsxt.bsnews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.bszsxt.bsnews.BsnewsList"%>
<%@page import="com.eaie.common.*"%>
<%@page import="com.eaie.dbmanage.Tmnews"%>
<%@page import="com.eaie.dbmanage.*"%>
<%@page import="com.eaie.bszsxt.bsnews.BsnewsList"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>������Ϣ����ѧԺ��ʿ�о�������ϵͳ</title>
<LINK REL=StyleSheet HREF="bsstyle.css" TYPE="text/css" MEDIA=screen>
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
		   num=document.form.elements.length;     
		        
		   if(document.form.chkall.checked)     
		   {  var i;     
		      for(i=0;i<num;i++)     
		        if(document.form.elements[i].type=="checkbox"&&document.form.elements[i].name!="chkall")     
		           document.form.elements[i].checked = true;     
		      return true;     
		   }     
		   else   
		   {  var j;     
		      for(i=0;i<num;i++)     
		        if(document.form.elements[i].type == "checkbox"&&document.form.elements[i].name!="chkall")     
		           document.form.elements[i].checked = !(document.form.elements[i].checked);     
		      return true;     
		   }     
		     
		}     
		</Script>

</head>
<%!List list;
	String cKeyWords, csearchpart;

	%>
	<% 
	    SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			BsnewsList clist = new BsnewsList();
			list = clist.getBsnewsList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
	
		%>
	    

<body>
<div id="page">
	<div id="header">
			<h1 align="center">������Ϣ����ѧԺ��ʿ�о�������ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">��ҳ</a>
		<a href="newslist.jsp">�鿴����֪ͨ</a>
		<a href="cscj.jsp">�鿴���Գɼ�</a>
		<a href="fstj.jsp">�鿴����֪ͨ</a>
		<a href="lqjg.jsp">�鿴¼ȡ���</a>
		<a href="lianxi.jsp">��ϵ����</a>
		<a href="bslogout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
	<br>
	<form name="form" method="post" action="#">
			<table width="100%" border="1" align="center" cellpadding="2" cellspacing="1">
				<tr align="center" class="">
					<td width="8%">
						���
					</td>
					<td width="45%">
						����
					</td>
					<td width="25%"> 
						����ʱ��
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Bsnews bsnews = (Bsnews) list.get(i);
				%>

				<tr align="center" >
					
					<td width="35">
						<%=i+1%>
					</td>
					<td>
						<a href="bszstz.jsp?id=<%=bsnews.getId()%>"><%=bsnews.getTitle()%></a>
					</td>
					<td>
					     <%=dateFormatStart.format(bsnews.getPubtime())%>
				    </td>
						<%
							}
							}
						%>
					
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