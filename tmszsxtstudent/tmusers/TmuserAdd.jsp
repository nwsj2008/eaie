<%@ page contentType="text/html;charset=GB2312" pageEncoding="GB2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.tmusers.*" %>
<html>
	<head>
		<title>�û�ע��</title>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		%>				
		<base href="<%=basePath%>">
		<link href="tmszsxtstudent/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="javascript" src="js/basicJS.js"></script>
		<script type="text/javascript">   	
		function CheckForm(){	
		     
			 if(!isNull("tmusername","�û���"))
			 {
			 	return false;
			 }			
			 if(!isNull("pwd","����"))
			 {
			 	return false;
			 }
			 if(!isNull("pwd2","�ظ�����"))
			 {
			 	return false;
			 }
			 if(!isEqual("pwd","pwd2","�����������벻һ�£�"))
			 {
			 	return false;
			 }	
			 var num; 
			 var flag = false;    
   			 num=document.userform.elements.length
			 for(var i=0;i<num;i++){     
				if(document.userform.elements[i].type=="checkbox"&&document.userform.elements[i].name!="isadmin"){     
				   if(document.userform.elements[i].checked ==true){
				   	 flag = true;
				   }
				}  		
			 }
			
		    
			
		} 
		function checkall()     
		{  	
			var num;     
   			num=document.userform.elements.length;     
        
  			if(document.userform.isadmin.checked)     
   			{  var i;     
			   for(i=0;i<num;i++)     
				if(document.userform.elements[i].type=="checkbox"&&document.userform.elements[i].name!="isadmin")     
				   document.userform.elements[i].checked = true;  		
				document.userform.isadmin.value = 1 ;		
			   return true;     
		    }     
		    else   
		    { var i;     
			  for(i=0;i<num;i++)     
				if(document.userform.elements[i].type == "checkbox"&&document.userform.elements[i].name!="isadmin")     
					document.userform.elements[i].checked = !(document.userform.elements[i].checked);  
				document.userform.isadmin.value = 0 ;  			 
			  return true;     
		    }     
     
		}  
	</script>
	</head>
	<body>

		<form name="userform" method="post" action="tmszsxtstudent/tmusers/TmuserSave.jsp"
			onSubmit="return CheckForm()">
			<table width="90%" border="0" align="center" cellpadding="4"
				cellspacing="1" class="border">
				<tr align="center">
					<td colspan="2" class="titlebg">
						�û�ע��
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�û�������
					</td>
					<td>
						<input name="tmusername" type="text" id="tmusername" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��ʼ���룺
					</td>
					<td>
						<input name="pwd" type="password" id="pwd" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�ظ����룺
					</td>
					<td>
						<input name="pwd2" type="password" id="pwd2" size="20">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�û�Ȩ�ޣ�
					</td>
					<td>						
						ѧ��
					</td>
				</tr>	
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="ȷ �� ">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="�� ��">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
