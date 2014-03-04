<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.eaie.tmszsxt.tmstudent.TmstudentList"%>
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
		<title>推免生信息列表</title>
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
  List list=BasicDAO.queryByHql("FROM Tmstudent tmstudent");

  
 // String hql="SELECT id FROM Tmstudent";
  if(list.size()==0){
  out.print("没有记录");
  }else{

			
			
			
		%>
		<form name="form1" method="post" action="admin/commie/CommieList.jsp">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">

			</table>
		</form>


		<form name="form2" method="post"
			action="admin/tmszsxt/tmstudent/TmstudentExcel.jsp">
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
						毕业学校
						</nobr>
					</td>
					<td>
					<nobr>
						毕业专业</nobr>
					</td>
					<td>
					<nobr>
						接收学院</nobr>
					</td>
					<td>
					<nobr>
						接收专业</nobr>
					</td>
					<td>
					<nobr>
						联系电话</nobr>
					</td>
					<td>
					<nobr>
						四级成绩</nobr>
					</td>
					<td>
					<nobr>
						六级成绩</nobr>
					</td>
					<td>
					<nobr>
						专业排名</nobr>
					</td>
					<td>
					<nobr>
						专业人数</nobr>
					</td>
					<td>
					<nobr>
						获奖情况</nobr>
					</td>
					<td>
					<nobr>
						复试成绩</nobr>
					</td>
					<td>
					<nobr>
						考核通知</nobr>
					</td>
					<td>
					<nobr>
						录取通知</nobr>
					</td>
					<td>
					<nobr>
						导师信息</nobr>
					</td>
					
				</tr>
				<%
					
						for (int i = 0; i < list.size(); i++) {
							Tmstudent tmstudent = (Tmstudent) list.get(i);
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
					<input name="name" id="name" type="hidden" value="<%=(tmstudent.getName()==null)?"":tmstudent.getName()%>">
					    <%=(tmstudent.getName()==null)?"":tmstudent.getName()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="byschool" id="byschool" type="hidden" value="<%=(tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool()%>">
						<%=(tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="byspeciality" id="byspeciality" type="hidden" value="<%=(tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality()%>">
						<%=(tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="jsacademe" id="jsacademe" type="hidden" value="<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>">
						<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="jsspeciality" id="jsspeciality" type="hidden" value="<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>">
						<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="tel" id="tel" type="hidden" value="<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>">
						<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="siji" id="siji" type="hidden" value="<%=(tmstudent.getSiji()==null)?"":tmstudent.getSiji()%>">
						<%=(tmstudent.getSiji()==null)?"":tmstudent.getSiji()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="liuji" id="liuji" type="hidden" value="<%=(tmstudent.getLiuji()==null)?"":tmstudent.getLiuji()%>">
						<%=(tmstudent.getLiuji()==null)?"":tmstudent.getLiuji()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="zypm" id="zypm" type="hidden" value="<%=(tmstudent.getZypm()==null)?"":tmstudent.getZypm()%>">
						<%=(tmstudent.getZypm()==null)?"":tmstudent.getZypm()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="zyrs" id="zyrs" type="hidden" value="<%=(tmstudent.getZyrs()==null)?"":tmstudent.getZyrs()%>">
						<%=(tmstudent.getZyrs()==null)?"":tmstudent.getZyrs()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="huoj" id="huoj" type="hidden" value="<%=(tmstudent.getHuoj()==null)?"":tmstudent.getHuoj()%>">
						<%=(tmstudent.getHuoj()==null)?"":tmstudent.getHuoj()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="fushiresult" id="fushiresult" type="hidden" value="<%=(tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult()%>">
						<%=(tmstudent.getFushiresult()==null)?"":tmstudent.getFushiresult()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="shenheresult" id="shenheresult" type="hidden" value="<%=(tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult()%>">
						<%=(tmstudent.getShenheresult()==null)?"":tmstudent.getShenheresult()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sflq" id="sflq" type="hidden" value="<%=(tmstudent.getSflq()==null)?"":tmstudent.getSflq()%>">
						<%=(tmstudent.getSflq()==null)?"":tmstudent.getSflq()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="teacher" id="teacher" type="hidden" value="<%=(tmstudent.getTeacher()==null)?"":tmstudent.getTeacher()%>">
						<%=(tmstudent.getTeacher()==null)?"":tmstudent.getTeacher()%>
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

		