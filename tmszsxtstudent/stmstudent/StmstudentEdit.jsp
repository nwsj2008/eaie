<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
	
		
		
		<title>�޸ĸ���������Ϣ</title>
		<base href="<%=basePath%>">
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>
	<link href="tm_style.css" rel="stylesheet" type="text/css">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		  
    <script language="JavaScript" src="js/basicJS.js"></script>
		<script language = "JavaScript">
		function formCheck(){
			if(!isNull("name","����")){			
				return false;
			}	
			if(!isNull("tel","�绰")){			
				return false;
			}				
			if(!isNull("byschool","��ҵѧУ")){			
				return false;
			}	
			if(!isNull("byspeciality","��ҵרҵ")){			
				return false;
			}	
			if(!isNull("jsacademe","����ѧԺ")){			
				return false;
			}	
			if(!isNull("byschool","��ҵѧУ")){			
				return false;
			}	
			if(!isNull("jsspeciality","����רҵ")){			
				return false;
			}	
		}		
		</script>

<%
  //String idString=request.getParameter("id");
  //int id=Integer.parseInt(idString);
  //List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  //if(list.size()==0){
  //out.print("û�м�¼");
  //}else{
  //Tmstudent tmstudent=(Tmstudent)list.get(0);
  
  String idString=session.getAttribute("id").toString();
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tmstudent tmstudent where tmstudent.id='"+id+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }else{
  Tmstudent tmstudent=(Tmstudent)list.get(0);

  
  
 %>
<body>
		<BR>
		<form name="form1" method="post" action="tmszsxtstudent/stmstudent/StmstudentUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						�޸ĸ���������Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="3">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						
						<input name="name" type="text" id="name" size="20" value="<%=(tmstudent.getName()==null)?"":tmstudent.getName()%>">
					</td>
					<td>
						��ϵ�绰��
						<input name="tel" type="text" id="tel" size="20" value="<%=(tmstudent.getTel()==null)?"":tmstudent.getTel()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ҵѧУ��
						<input name="byschool" type="text" id="byschool" size="20" value="<%=(tmstudent.getByschool() == null) ? ""
							: tmstudent.getByschool()%>">
					</td>
					<td>
						��ҵרҵ��
						<input name="byspeciality" type="text" id="byspeciality" size="20" value="<%=(tmstudent.getByspeciality() == null) ? ""
							: tmstudent.getByspeciality()%>">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						����ѧԺ��
						<input name="jsacademe" type="text" id="jsacademe" size="20" value="<%=(tmstudent.getJsacademe()==null)?"":tmstudent.getJsacademe()%>">
					</td>
					<td>
						����רҵ��
						<input name="jsspeciality" type="text" id="jsspeciality" size="20" value="<%=(tmstudent.getJsspeciality()==null)?"":tmstudent.getJsspeciality()%>">
					</td>
				</tr>				
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���޸�" onclick="return formCheck()">&nbsp;&nbsp;&nbsp;
				<input name="Submit2" type="reset" class="submitinput" value="��&nbsp;&nbsp;&nbsp;&nbsp;��">
			</center>
		</form>
	</body>
  

	
		<%
 }
 %>

</html>