<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.bszsxt.bsstudent.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
		
			function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"不能为空!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  	
		function formCheck(){
			//return false;
			if(!isNull("name","姓名")){			
				return false;
			}	
			if(!isNull("pwd","身份证号")){			
				return false;
			}		
			}	
</script>
		
		
		<title>修改博士生信息</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  Bsstudent bsstudent = (Bsstudent)BasicDAO.queryById(Bsstudent.class, id);
 
 %>
 <body>
		<BR>
		<form name="form1" method="post" action="admin/bszsxt/bsstudent/BsstudentSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						编辑博士生信息
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>基本信息</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						姓&nbsp;&nbsp;&nbsp;&nbsp;名：
						
						<input name="name" type="text" id="name"  size="20" value="<%=(bsstudent.getName()==null)?"":bsstudent.getName()%>">
					</td>
					<td>
						身份证号：
						<input name="pwd" type="text" id="pwd"   value="<%=(bsstudent.getPwd()==null)?"":bsstudent.getPwd()%>">
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					报考专业：
					<input name="bkzy"  cols="62" value="<%=(bsstudent.getBkzy() == null) ? ""
						: bsstudent.getBkzy()%>">	
						</td>	
				
					<td >
				报考导师：
					<input name="bkds" value="<%=(bsstudent.getBkds()== null) ? ""
						: bsstudent.getBkds()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				总&nbsp;&nbsp;&nbsp; 分： 
				<input name="zongfen" type="text"  value="<%=(bsstudent.getZongfen() == null) ? ""
						: bsstudent.getZongfen()%>">	
						</td >
						<td>
						外语成绩：
					<input name="waiyu" type="text"  value="<%=(bsstudent.getWaiyu() == null) ? ""
						: bsstudent.getWaiyu()%>">
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						业务课1：&nbsp; 
			<input name="yewu1" type="text"  value="<%=(bsstudent.getYewu1() == null) ? ""
						: bsstudent.getYewu1()%>">
						</td>	
				<td> 
                     业务课2：&nbsp; 
					<input name="yewu2" type="text"  value="<%=(bsstudent.getYewu2() == null) ? ""
						: bsstudent.getYewu2()%>">
				</td>	
			</tr>		
			     <tr class="tdbg">
					<td >
						录取导师：
				<input name="lqds" value="<%=(bsstudent.getLqds() == null) ? ""
						: bsstudent.getLqds()%>">	
						</td>	
				
					<td >
                     录取类别：
                  <input name="lqlb" value="<%=(bsstudent.getLqlb()== null) ? ""
						: bsstudent.getLqlb()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
						<td colspan="2" align=left>
					录取专业： 
						<input name="lqzy" value="<%=(bsstudent.getLqzy() == null) ? ""
						: bsstudent.getLqzy()%>">	
						</td>
						</tr>	
					<tr class="tdbg">
					<td colspan="2">
					<div style="float:middle">
						面试通知：
						</div>
						<textarea name="mstz" rows="4" cols="62" ><%=(bsstudent.getMstz() == null) ? ""
						: bsstudent.getMstz()%>
						</textarea>	
						
				</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="确定修改" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="返&nbsp;&nbsp;&nbsp;&nbsp;回" onClick="window.location.href='BsstudentListbj.jsp'">
			</center>
		</form>
	</body>
	//<%
 //}
 //%>
</html>