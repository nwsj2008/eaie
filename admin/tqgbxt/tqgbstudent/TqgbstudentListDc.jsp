<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.commie.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.eaie.tqgbxt.tqgbstudent.*"%>
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
		<title>��ǰ��������Ϣ�б�</title>
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
  List list=BasicDAO.queryByHql("FROM Tqgb tqgb");

  
 // String hql="SELECT id FROM Tmstudent";
  if(list.size()==0){
  out.print("û�м�¼");
  }else{

			
			
			
		%>



		<form name="form2" method="post"
			action="admin/tqgbxt/tqgbstudent/TqgbstudentExcel.jsp">
			<table width="100%" border="0" align="center" cellpadding="2"
				cellspacing="1" class="border">

				<tr align="center" class="titlebg">
					<td width="35">
					<nobr>
						���
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
						��ϵ��ʽ</nobr>
					</td>
					<td>
					<nobr>
						��ע</nobr>
					</td>
					
					
					
				</tr>
				<%
					
						for (int i = 0; i < list.size(); i++) {
							Tqgb tqgb = (Tqgb) list.get(i);
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
					<input name="name" id="name" type="hidden" value="<%=(tqgb.getName()==null)?"":tqgb.getName()%>">
					    <%=(tqgb.getName()==null)?"":tqgb.getName()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="xuehao" id="xuehao" type="hidden" value="<%=(tqgb.getXuehao() == null) ? ""
							: tqgb.getXuehao()%>">
						<%=(tqgb.getXuehao()== null) ? ""
							: tqgb.getXuehao()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sex" id="sex" type="hidden" value="<%=(tqgb.getSex() == null) ? ""
							: tqgb.getSex()%>">
						<%=(tqgb.getSex() == null) ? ""
							:tqgb.getSex()%>
					</nobr></div></td>
					<td>
					<div style="width: 110px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sszy" id="sszy" type="hidden" value="<%=(tqgb.getSszy()==null)?"":tqgb.getSszy()%>">
						<%=(tqgb.getSszy()==null)?"":tqgb.getSszy()%>
					</nobr></div></td>
					<td>
					<div style="width: 100px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="nbzy" id="nbzy" type="hidden" value="<%=(tqgb.getNbzy()==null)?"":tqgb.getNbzy()%>">
						<%=(tqgb.getNbzy()==null)?"":tqgb.getNbzy()%>
					</nobr></div></td>
					<td>
					<div style="width: 80px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="sd" id="sd" type="hidden" value="<%=(tqgb.getSd()==null)?"":tqgb.getSd()%>">
						<%=(tqgb.getSd()==null)?"":tqgb.getSd()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="nbbd" id="nbbd" type="hidden" value="<%=(tqgb.getNbbd()==null)?"":tqgb.getNbbd()%>">
						<%=(tqgb.getNbbd()==null)?"":tqgb.getNbbd()%>
					</nobr></div></td>
					
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="cjpm" id="cjpm" type="hidden" value="<%=(tqgb.getCjpm()==null)?"":tqgb.getCjpm()%>">
						<%=(tqgb.getCjpm()==null)?"":tqgb.getCjpm()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="tel" id="tel" type="hidden" value="<%=(tqgb.getTel()==null)?"":tqgb.getTel()%>">
						<%=(tqgb.getTel()==null)?"":tqgb.getTel()%>
					</nobr></div></td>
					<td>
					<div style="width: 50px; overflow: hidden;text-overflow:ellipsis;">
					<nobr>
					<input name="beizhu" id="beizhu" type="hidden" value="<%=(tqgb.getBeizhu()==null)?"":tqgb.getBeizhu()%>">
						<%=(tqgb.getBeizhu()==null)?"":tqgb.getBeizhu()%>
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
					<input type="submit" name="Submit" value="����Excel�б�">
				&nbsp;&nbsp;				
				</td>
				</tr>
			</table>
		</form>

		