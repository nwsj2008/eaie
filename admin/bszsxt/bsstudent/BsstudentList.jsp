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
		<title>��ʿ����Ϣ</title>
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
	String cKeyWords, csearchpart;%>
		<%
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			
			BsstudentList bsstudentList = new BsstudentList();
			list = bsstudentList.getBsstudentList(curPage);

			Page pager = bsstudentList.getCurrentPage();
			Iterator it = list.iterator();
		%>


		<form name="form2" method="post"
			action="admin/bszsxt/bsstudent/BsstudentDaoru.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					
					<td>
					<nobr>
						����</nobr>
					</td>
					<td>
					<nobr>
						���֤��</nobr>
					</td>
					<td>
					<nobr>
						����רҵ</nobr>
					</td>
					<td>
					<nobr>
						������ʦ</nobr>
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
						�ܷ�</nobr>
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
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>					
							<%=(bsstudent.getName()==null)?"":bsstudent.getName()%>
					</nobr></div>
					</td>
					<td>
					<div style="width: 120px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getPwd() == null) ? ""
							: bsstudent.getPwd()%>
							</nobr></div>
					</td>
					<td>
					<div style="width:100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getBkzy() == null) ? ""
							: bsstudent.getBkzy()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getBkds() == null) ? ""
							: bsstudent.getBkds()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getWaiyu() == null) ? ""
							: bsstudent.getWaiyu()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getYewu1() == null) ? ""
							: bsstudent.getYewu1()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getYewu2() == null) ? ""
							: bsstudent.getYewu2()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(bsstudent.getZongfen() == null) ? ""
							: bsstudent.getZongfen()%>
							</nobr></div>
					</td>
					
				<%
					}
					}
				%>
			</table>	

					
					
				<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe id=d_file frameborder=0 src="upload/uploadxls.jsp"
							width="650" height="25" scrolling=no frameborder="0" allowtransparency="yes"></iframe>
					</td>
					<td align="right">
					<input type="submit" name="Submit" value="�������ݿ�">
				&nbsp;&nbsp;				
				</td>
				</tr>
				<tr><td>ע�⣺�ϴ��ļ�����Ϊxls,��������,���֤ ,����רҵ ,������ʦ�����ҵ���1��ҵ���2���ְܷ���  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" name="Submit2" value="����ģ��"
							onClick="location.href='download.jsp'"></td></tr>
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