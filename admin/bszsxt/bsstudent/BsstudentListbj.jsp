<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.eaie.bszsxt.bsstudent.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title>��ʿ����Ϣ��ѯ</title>
		<link href="tm_style.css" rel="stylesheet" type="text/css">
		<base href="<%=basePath%>">

		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">

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
	<body>
		<%!List list;
	%>
		<%
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			
			BsstudentList bsstudentList = new BsstudentList();
			list = bsstudentList.getBsstudentList(curPage);

			Page pager = bsstudentList.getCurrentPage();
			Iterator it = list.iterator();//����list
		%>
		<form name="form2" method="post"
			action="admin/bszsxt/bsstudent/BsstudentDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
					<nobr>
						ѡ��
						</nobr>
					</td>		
					<td width="80">
					<nobr>
						����
						</nobr>
					</td>	
					<td>
					<nobr>
					���֤��</nobr>
					</td>		
					<td>
					<nobr>
					¼ȡרҵ</nobr>
					</td>
					<td>
					<nobr>
						������ʦ</nobr>
					</td>
					<td>
					<nobr>
						�ܷ�</nobr>
					</td>
					<td>
					<nobr>
						����</nobr>
					</td>
					<td>
					<nobr>
						 ҵ���1</nobr>
					</td>
					<td>
					<nobr>
						ҵ���2</nobr>
					</td>
					<td>
					<nobr>
						¼ȡרҵ</nobr>
					</td>	
					<td>
					<nobr>
						���յ�ʦ</nobr>
					</td>		
						<td>
					<nobr>
						¼ȡ���</nobr>
					</td>			
					<td>
					<nobr>
						����</nobr>
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Bsstudent bsstudent = (Bsstudent) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="id" type="checkbox" id="id"
							value="<%=bsstudent.getId()%>">
					</td>
					
					
					<td width="80">
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a
							href="admin/bszsxt/bsstudent/BsstudentEdit.jsp?id=<%=bsstudent.getId()%>"><%=(bsstudent.getName()==null)?"":bsstudent.getName()%></a>
					</nobr>
					</div>
					</td>	
					<td>
					<div style="width: 120px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getPwd()==null)?"":bsstudent.getPwd()%>					
					</nobr></div>
					</td>		
					<td><div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getLqzy()==null)?"":bsstudent.getLqzy()%>
						</nobr></div>
					</td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getBkds()==null)?"":bsstudent.getBkds()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getZongfen()==null)?"":bsstudent.getZongfen()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getWaiyu()==null)?"":bsstudent.getWaiyu()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getYewu1()==null)?"":bsstudent.getYewu1()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getYewu2()==null)?"":bsstudent.getYewu2()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getLqzy() == null) ? ""
							: bsstudent.getLqzy()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getLqds() == null) ? ""
							: bsstudent.getLqds()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getLqlb() == null) ? ""
							: bsstudent.getLqlb()%>
							</nobr></div>
					</td>
					
					<td align="center">
						<a
							href="admin/bszsxt/bsstudent/BsstudentEdit.jsp?id=<%=bsstudent.getId()%>">�༭</a>
				</tr>
				<%
					}
					}
				%>

			</table>
			<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input name="chkall" type="checkbox" id="chkall" value="checkbox"
							onclick="checkall();">
						ѡȡ���еĲ�ʿ��&nbsp;&nbsp;
						<input type="submit" name="Submit" value="ɾ����ѡ�Ĳ�ʿ��"
							onclick="{if(confirm('ȷ��ɾ��ѡ�еĲ�ʿ����')){return true;}return false;}">
					</td>
					<td align="right">
						<input type="button" name="Submit2" value="�ϴ���ʿ����Ϣ"
							onClick="location.href='Newbsstudent.jsp'">
						&nbsp; &nbsp;
					</td>
				</tr>
			</table>
		</form>

		<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>