<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
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
		<title>��Ա��Ϣ��ѯ</title>
		<link href="admin_style.css" rel="stylesheet" type="text/css">
		<base href="<%=basePath%>">

		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	<script language = "JavaScript">
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
			//��ҳ
			//int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	

			//UserList ulist = new UserList();
			//CommieList commieList = new CommieList();
			//List list = commieList.getCommList(curPage);
			//List list=BasicDAO.queryByHql("From Leader order by postid");
			//System.out.println(list.size());
			//Page pager = commieList.getCurrentPage();

			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			CommieList clist = new CommieList();
			list = clist.getCommieList(curPage, csearchpart, cKeyWords);

			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
		%>
		<form name="form1" method="post" action="admin/commie/CommieList.jsp">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td class="tdbg">
						<table width="100%" border="0" align="center" cellpadding="4"
							cellspacing="0">
							<tr>
								<td>
									&nbsp;
									<strong>��Ա��ѯ�� <select name="searchpart"
											id="searchpart">
											<option value="stuid"<%if(csearchpart!=null&&csearchpart.equalsIgnoreCase("stuid")) out.println("selected");%>>
												ѧ��
											</option>
											<option value="name"<%if(csearchpart!=null&&csearchpart.equalsIgnoreCase("name")) out.println("selected");%>>
												����
											</option>
											<option value="banji"<%if(csearchpart!=null&&csearchpart.equalsIgnoreCase("banji")) out.println("selected");%>>
												�༶
											</option>
										</select> <input name="keyword" type="text" id="keyword" size="30"
											value=<%//=cKeyWords == null ? "" : cKeyWords%>> <input
											type="submit" name="Submit" value="��&nbsp;ѯ"> </strong>
								</td>
								<td>
									<select name="select" onChange="JumpMenu('self',this,0)">
										<option value="admin/commie/CommieList.jsp" selected>
											��֧���鿴��
										</option>
										<%
											//��commie����ȥbranch��ֵ distinct
											String hql = "select distinct commie.branch from Commie commie order by branch";
											List branchList = BasicDAO.queryByHql(hql);
											if (branchList.size() > 0) {
												for (int i = 0; i < branchList.size(); i++) {
													//���õ���ת��Ϊstring
													String branch = branchList.get(i).toString();
													//Commie commie2=(Commie)branchList.get(i);
										%>
										<option value="?searchpart=branch&keyword=<%=branch%>"
											<%if(cKeyWords!=null&&cKeyWords.equalsIgnoreCase(branch)) out.println("selected"); %>><%=branch%></option>
										<%
											}
											}
										%>
									</select>
								</td>
								<td width="100">
									<input type="button" name="Submit2" value="��ӵ�Ա"
										onClick="location.href='CommieAdd.jsp'">
									&nbsp; &nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>


		<form name="form2" method="post" action="servlet/DelCommie">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
						ѡ��
					</td>
					<td width="80">
						ѧ��
					</td>
					<td>
						����
					</td>
					<td width="40">
						�Ա�
					</td>
					<td>
						�༶
					</td>
					<td>
						��֧��
					</td>
					<td>
						ְ��
					</td>
					<td>
						�뵳ʱ��
					</td>
					<td>
						�Ƿ���ʽ
					</td>
				</tr>
				<%
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Commie commie = (Commie) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="delid" type="checkbox" id="delid"
							value="<%=commie.getStuid()%>">
					</td>
					<td width="80">
						<a href="admin/commie/CommieInfo.jsp?stuid=<%=commie.getStuid()%>"><%=commie.getStuid()%></a>
					</td>
					<td>
						<a href="admin/commie/CommieInfo.jsp?stuid=<%=commie.getStuid()%>"><%=(commie.getName()==null)?"":commie.getName()%></a>
					</td>
					<td><%=(commie.getSex()==null)?"":commie.getSex()%></td>
					<td>
						<a
							href="admin/commie/CommieList.jsp?searchpart=banji&keyword=<%=commie.getBanji()%>"><%=commie.getBanji()%></a>
					</td>
					<td>
						<a
							href="admin/commie/CommieList.jsp?searchpart=branch&keyword=<%=commie.getBranch()%>"><%=commie.getBranch()%></a>
					</td>
					<td>
						<%
							//���post��ֵΪ9����Ϊ��ͨ��Ա
									if (commie.getPost().equals(9)) {
										out.print("��ͨ��Ա");
									}

									else if (commie.getPost().equals(1)) {
										out.print("���");
									} else if (commie.getPost().equals(2)) {
										out.print("��ί");
									} else if (commie.getPost().equals(3)) {
										out.print("��ί");
									}
						%>
					</td>
					<td><%=commie.getAddtime()%></td>
					<td>
						<%
							if (commie.getSfzs() == null) {
										out.print("��");
									} else {
										out.print("��");
									}
						%>
					</td>
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
						ѡȡ���еĵ�Ա&nbsp;&nbsp;
						<input type="submit" name="Submit" value="ɾ����ѡ�ĵ�Ա"
							onclick="{if(confirm('ȷ��ɾ��ѡ�еĵ�Ա��')){return true;}return false;}">
					</td>
					<td align="right">
						<input type="button" name="Submit5" value="����EXCEL����"
							onClick="location.href='#'">
						&nbsp;&nbsp;
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
						<%@include file="../common/Pager.jsp"%>
					</td>
				</tr>
			</table>
		</form>