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
            alert(paraName+"����Ϊ��!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  	
		function formCheck(){
			//return false;
			if(!isNull("name","����")){			
				return false;
			}	
			if(!isNull("pwd","���֤��")){			
				return false;
			}		
			}	
</script>
		
		
		<title>�޸Ĳ�ʿ����Ϣ</title>
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
						�༭��ʿ����Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=id%>">
					</td>
					
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						
						<input name="name" type="text" id="name"  size="20" value="<%=(bsstudent.getName()==null)?"":bsstudent.getName()%>">
					</td>
					<td>
						���֤�ţ�
						<input name="pwd" type="text" id="pwd"   value="<%=(bsstudent.getPwd()==null)?"":bsstudent.getPwd()%>">
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					����רҵ��
					<input name="bkzy"  cols="62" value="<%=(bsstudent.getBkzy() == null) ? ""
						: bsstudent.getBkzy()%>">	
						</td>	
				
					<td >
				������ʦ��
					<input name="bkds" value="<%=(bsstudent.getBkds()== null) ? ""
						: bsstudent.getBkds()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				��&nbsp;&nbsp;&nbsp; �֣� 
				<input name="zongfen" type="text"  value="<%=(bsstudent.getZongfen() == null) ? ""
						: bsstudent.getZongfen()%>">	
						</td >
						<td>
						����ɼ���
					<input name="waiyu" type="text"  value="<%=(bsstudent.getWaiyu() == null) ? ""
						: bsstudent.getWaiyu()%>">
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						ҵ���1��&nbsp; 
			<input name="yewu1" type="text"  value="<%=(bsstudent.getYewu1() == null) ? ""
						: bsstudent.getYewu1()%>">
						</td>	
				<td> 
                     ҵ���2��&nbsp; 
					<input name="yewu2" type="text"  value="<%=(bsstudent.getYewu2() == null) ? ""
						: bsstudent.getYewu2()%>">
				</td>	
			</tr>		
			     <tr class="tdbg">
					<td >
						¼ȡ��ʦ��
				<input name="lqds" value="<%=(bsstudent.getLqds() == null) ? ""
						: bsstudent.getLqds()%>">	
						</td>	
				
					<td >
                     ¼ȡ���
                  <input name="lqlb" value="<%=(bsstudent.getLqlb()== null) ? ""
						: bsstudent.getLqlb()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
						<td colspan="2" align=left>
					¼ȡרҵ�� 
						<input name="lqzy" value="<%=(bsstudent.getLqzy() == null) ? ""
						: bsstudent.getLqzy()%>">	
						</td>
						</tr>	
					<tr class="tdbg">
					<td colspan="2">
					<div style="float:middle">
						����֪ͨ��
						</div>
						<textarea name="mstz" rows="4" cols="62" ><%=(bsstudent.getMstz() == null) ? ""
						: bsstudent.getMstz()%>
						</textarea>	
						
				</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���޸�" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='BsstudentListbj.jsp'">
			</center>
		</form>
	</body>
	//<%
 //}
 //%>
</html>