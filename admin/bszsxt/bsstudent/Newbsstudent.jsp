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
<%Bsstudent bsstudent; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
	
</script>
		
		
		<title>��ʿ����Ϣ</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
		<script language=javascript> 
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
	</head>

    <body>
		<BR>
		<form name="form1" method="post" action="admin/bszsxt/bsstudent/BsstudentSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
					�ϴ���ʿ����Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						<input name="name" type="text" id="name" size="20" >
					</td>
					<td>
						���֤�ţ�
						<input name="pwd" type="text" id="pwd" size="20" >
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >
					����רҵ��
						<input name="bkzy" type="text">	
						</td>	
				
					<td >
				������ʦ��
					<input name="bkds" type="text">	
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				��&nbsp;&nbsp;&nbsp; �֣� 
				<input name="zongfen" type="text">	
						</td >
						<td>
						����ɼ���
					<input name="waiyu" type="text">
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						ҵ���1��&nbsp; 
			<input name="yewu1" type="text" >
						</td>	
				<td> 
                     ҵ���2��&nbsp; 
					<input name="yewu2" type="text">
				</td>	
			</tr>		
			     <tr class="tdbg">
					<td >
						¼ȡ��ʦ��
				<input name="lqds" type="text">	
						</td>	
				
					<td >
                     ¼ȡ���
                  <input name="lqlb" type="text">	
						</td>			
				</tr>
					<tr class="tdbg">
					<td colspan="2">
					<div style="float:middle">
						����֪ͨ��
						</div>
						<textarea name="mstz" rows="4" cols="62"> </textarea>			
				</tr>
				
				 
			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���ϴ�" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='BsstudentListbj.jsp'">
			</center>
		</form>
	</body>
  

	


</html>