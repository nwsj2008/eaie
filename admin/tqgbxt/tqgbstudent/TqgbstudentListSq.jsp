<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbstudent.*"%>
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
		<title>��ǰ������������Ϣ��ѯ</title>
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
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			TqgbstudentList tqgbstudentList = new TqgbstudentList();
			list = tqgbstudentList.getTqgbstudentList(curPage, csearchpart,
					cKeyWords);

			Page pager = tqgbstudentList.getCurrentPage();
			Iterator it = list.iterator();
		%>
		<form name="form1" method="post" action="admin/commie/CommieList.jsp">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">

			</table>
		</form>


		<form name="form2" method="post"
			action="admin/tqgbxt/tqgbstudent/TqgbstudentDel.jsp">
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
						ѧ��
						</nobr>
					</td>
					<td>
					<nobr>
						�Ա�</nobr>
					</td>
					<td>
					<nobr>
						˶ʿרҵ</nobr>
					</td>
					<td>
					<nobr>
						�ⱨ��ʿרҵ</nobr>
					</td>
					<td>
					<nobr>
						ԭ˶��</nobr>
					</td>
					<td>
					<nobr>
						�ⱨ����</nobr>
					</td>
					
					<td>
					<nobr>
						ѧλ�μ�Ȩ�ɼ�����</nobr>
					</td>
					<td>
					<nobr>
						��ע</nobr>
					</td>
					<td>
					<nobr>
						��ϵ��ʽ</nobr>
					</td>
					<td>
					<nobr>
						����</nobr>
					</td>
				
				
					
					
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Tqgb tqgb = (Tqgb) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">	
							
					<td width="35">
						<input name="id" type="checkbox" id="id"
							value="<%=tqgb.getId()%>">
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a
							href="admin/tqgbxt/tqgbstudent/TqgbstudentList.jsp?id=<%=tqgb.getId()%>"><%=(tqgb.getName()==null)?"":tqgb.getName()%></a>
					</nobr></div>
					</td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getXuehao() == null) ? ""
							: tqgb.getXuehao()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getSex() == null) ? ""
							: tqgb.getSex()%>
							</nobr></div>
					</td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getSszy()==null)?"":tqgb.getSszy()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getNbzy()==null)?"":tqgb.getNbzy()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getSd()==null)?"":tqgb.getSd()%>
					</nobr></div></td>		
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getNbbd()==null)?"":tqgb.getNbbd()%>
					</nobr></div></td>			
						
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getCjpm()==null)?"":tqgb.getCjpm()%>
					</nobr></div></td>		
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getBeizhu()==null)?"":tqgb.getBeizhu()%>
					</nobr></div></td>	
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(tqgb.getTel()==null)?"":tqgb.getTel()%>
					</nobr></div></td>		
					 
					 <td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a href="admin/tqgbxt/tqgbstudent/TqgbstudentList.jsp?id=<%=tqgb.getId()%>">�鿴</a>
					</nobr></div></td>	
				
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
						ѡȡ���е���ǰ������&nbsp;&nbsp;
						<input type="submit" name="Submit" value="ɾ����ѡ��Ŀ"
							onclick="{if(confirm('ȷ��ɾ��ѡ�е���ǰ������')){return true;}return false;}">
					</td>
					
				</tr>
			</table>
		</form>

		<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<input type="hidden" id="keyword" name="keyword"
							value=<%=cKeyWords == null ? "" : cKeyWords%>>
						<input type="hidden" id="keyword" name="searchpart"
							value=<%=csearchpart == null ? "" : csearchpart%>>
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>