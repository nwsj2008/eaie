<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@page import="com.eaie.gcxkxt.course.*"%>
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
		<title>课程信息查询</title>
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
		<%
	    String nian="";
		int Nian = Integer.parseInt(request.getParameter("term"));
		switch(Nian){
		case 1: 
		     nian = "2009上";
		     break;
		case 2: 
		    nian = "2009下";
		     break;
		case 3: 
		    nian = "2010上";
		     break;
		case 4: 
		    nian = "2010下";
		     break;
		case 5: 
		     nian = "2011上";
		     break;
		case 6: 
		     nian = "2011下";
		     break;
		case 7: 
		     nian = "2012上";
		     break;
		case 8: 
		     nian = "2012下";
		     break;
		case 9: 
		     nian = "2013上";
		     break;
		case 10: 
		     nian = "2013下";
		     break;                                        
		}
		
		 %>
		<form name="form2" method="post"
			action="admin/gcxkxt/gcxkcourse/GccourseDel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
					<nobr>
						选中
						</nobr>
					</td>		
					<td width="80">
					<nobr>
						课程名称
						</nobr>
					</td>	
					<td>
					<nobr>
					任课老师</nobr>
					</td>		
					<td>
					<nobr>
					学分</nobr>
					</td>
					<td>
					<nobr>
						教材</nobr>
					</td>
					<td>
					<nobr>
						年度</nobr>
					</td>
					<td>
					<nobr>
						上课时间</nobr>
					</td>
					<td>
					<nobr>
						 上课地点</nobr>
					</td>
				
					<td>
					<nobr>
						考试信息</nobr>
					</td>	
					<td>
					<nobr>
						备注</nobr>
					</td>		
								
					<td>
					<nobr>
						操作</nobr>
					</td>
				</tr>
				<%
				List list = BasicDAO.queryByHql("From Gccourse gk where gk.nian='"+nian+"'");
					if (list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							Gccourse gccourse = (Gccourse) list.get(i);
				%>


				<tr align="center" class="tdbg"
					onmouseout="this.style.backgroundColor=''"
					onmouseover="this.style.backgroundColor='#BFDFFF'">
					<td width="35">
						<input name="id" type="checkbox" id="id"
							value="<%=gccourse.getId()%>">
					</td>
					
					
					<td width="80">
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<a
							href="admin/gcxkxt/gcxkcourse/GccourseEdit.jsp?id=<%=gccourse.getId()%>"><%=(gccourse.getTitle()==null)?"":gccourse.getTitle()%></a>
					</nobr>
					</div>
					</td>	
					<td>
					<div style="width: 120px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getTeacher()==null)?"":gccourse.getTeacher()%>					
					</nobr></div>
					</td>		
					<td><div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getCredit()==null)?"":gccourse.getCredit()%>
						</nobr></div>
					</td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getBook()==null)?"":gccourse.getBook()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getNian()==null)?"":gccourse.getNian()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getShijian()==null)?"":gccourse.getShijian()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getPlace()==null)?"":gccourse.getPlace()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 70px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getTest()==null)?"":gccourse.getTest()%>					
					</nobr></div>
					</td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
						<%=(gccourse.getBeizhu()== null) ? ""
							: gccourse.getBeizhu()%>
							</nobr></div>
					</td>
					
					
					<td align="center">
						<a
							href="admin/gcxkxt/gcxkcourse/GccourseEdit.jsp?id=<%=gccourse.getId()%>">编辑</a>
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
						选取所有的课程&nbsp;&nbsp;
						<input type="submit" name="Submit" value="删除所选的课程"
							onclick="{if(confirm('确定删除选中的课程吗？')){return true;}return false;}">
					</td>
					<td align="right">
						<input type="button" name="Submit2" value="返回"
							onClick="location.href='Gcchoose.jsp'">
						&nbsp; &nbsp;
					</td>
					<td align="right">
						<input type="button" name="Submit2" value="添加课程信息"
							onClick="location.href='Newcourse.jsp'">
						&nbsp; &nbsp;
					</td>
				</tr>
			</table>
		</form>

		