<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.eaie.sbldxt.sbldstudent.SbldstudentList"%>
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
		<title>硕博连读生信息列表</title>
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
		<%!//List list;
	//String cKeyWords, csearchpart;%>
		<%
			//int curPage = (request.getParameter("curPage") == null ? 1
			//		: Integer.parseInt(request.getParameter("curPage")));
			//cKeyWords = request.getParameter("keyword");
			//csearchpart = request.getParameter("searchpart");
			//TmstudentList tmstudentList = new TmstudentList();
			//list = tmstudentList.getTmstudentList(curPage, csearchpart,
			//		cKeyWords);

			//Page pager = tmstudentList.getCurrentPage();
			//Iterator it = list.iterator();
			//  String idString=request.getParameter("id");
  //int id=Integer.parseInt(idString);
  //List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id is not='"+id+"'");
  List list=BasicDAO.queryByHql("FROM Sbld sbld");

  
 // String hql="SELECT id FROM Tmstudent";
  if(list.size()==0){
  out.print("没有记录");
  }else{

			
			
			
		%>



		<form name="form2" method="post"
			action="admin/sbldxt/sbldstudent/SbstudentExcel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
					<nobr>
						序号
						</nobr>
					</td>
					<td width="80">
					<nobr>
						姓名
						</nobr>
					</td>
					<td>
					<nobr>
						学号
						</nobr>
					</td>
					<td>
					<nobr>
						性别</nobr>
					</td>
					<td>
					<nobr>
						硕士专业</nobr>
					</td>
					<td>
					<nobr>
						拟报博士专业</nobr>
					</td>
					<td>
					<nobr>
						原硕导</nobr>
					</td>
					<td>
					<nobr>
						拟报博导</nobr>
					</td>
					<td>
					<nobr>
					   入学成绩</nobr>
					</td>
					<td>
					<nobr>
						学位课加权成绩排名</nobr>
					</td>
					<td>
					<nobr>
						联系方式</nobr>
					</td>
					<td>
					<nobr>
						备注</nobr>
					</td>
					
					
					
				</tr>
				<%
					
						for (int i = 0; i < list.size(); i++) {
							Sbld sbld = (Sbld) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td>
					<input name="id" id="id" type="hidden" value="<%=i+1%>">
						<%=i+1%>
					</td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="name" id="name" type="hidden" value="<%=(sbld.getName()==null)?"":sbld.getName()%>">
					    <%=(sbld.getName()==null)?"":sbld.getName()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="xuehao" id="xuehao" type="hidden" value="<%=(sbld.getXuehao() == null) ? ""
							: sbld.getXuehao()%>">
						<%=(sbld.getXuehao()== null) ? ""
							: sbld.getXuehao()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sex" id="sex" type="hidden" value="<%=(sbld.getSex() == null) ? ""
							: sbld.getSex()%>">
						<%=(sbld.getSex() == null) ? ""
							:sbld.getSex()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sszy" id="sszy" type="hidden" value="<%=(sbld.getSszy()==null)?"":sbld.getSszy()%>">
						<%=(sbld.getSszy()==null)?"":sbld.getSszy()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="bkzy" id="bkzy" type="hidden" value="<%=(sbld.getBbzy()==null)?"":sbld.getBbzy()%>">
						<%=(sbld.getBbzy()==null)?"":sbld.getBbzy()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sd" id="sd" type="hidden" value="<%=(sbld.getSd()==null)?"":sbld.getSd()%>">
						<%=(sbld.getSd()==null)?"":sbld.getSd()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="nbbd" id="nbbd" type="hidden" value="<%=(sbld.getNbbd()==null)?"":sbld.getNbbd()%>">
						<%=(sbld.getNbbd()==null)?"":sbld.getNbbd()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="rxcj" id="rxcj" type="hidden" value="<%=(sbld.getRxcj()==null)?"":sbld.getRxcj()%>">
						<%=(sbld.getRxcj()==null)?"":sbld.getRxcj()%>
					</nobr></div></td>
					<td>
					<div style="width:50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="cjpm" id="cjpm" type="hidden" value="<%=(sbld.getCjpm()==null)?"":sbld.getCjpm()%>">
						<%=(sbld.getCjpm()==null)?"":sbld.getCjpm()%>
					</nobr></div></td>
					
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="tel" id="tel" type="hidden" value="<%=(sbld.getTel()==null)?"":sbld.getTel()%>">
						<%=(sbld.getTel()==null)?"":sbld.getTel()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="beizhu" id="beizhu" type="hidden" value="<%=(sbld.getBeizhu()==null)?"":sbld.getBeizhu()%>">
						<%=(sbld.getBeizhu()==null)?"":sbld.getBeizhu()%>
					</nobr></div></td>
				
				</tr>
				<%
					}
					}
					
				%>

			</table>
		
			
			<table width="100%" border="0" align="center" cellpadding="6"
				cellspacing="0">
				<tr>
					<td align="left">
					<input type="submit" name="Submit" value="导出Excel列表">
				&nbsp;&nbsp;				
				</td>
				</tr>
			</table>
		</form>

		