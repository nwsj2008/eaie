<%@ page contentType="text/html;charset=GBK" pageEncoding="GB2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.message.*" %>
<html>
	<head>
		<title>�ظ�����</title>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		%>				
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="javascript" src="js/basicJS.js"></script>
		<script type="text/javascript">   	
		function CheckForm(){	
		     
			 if(!isNull("teacher","�û���"))
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
			 if(flag==false){
			 	
			 	alert("��ѡ���û�Ȩ��");
			 	return false;
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
	<%
		String id = request.getParameter("id");
		List list =	BasicDAO.queryByHql("from Bigclass");	
		
		if(id == null){

		}else{
		
			Message message = (Message) BasicDAO.queryById(Message.class,Integer.parseInt(id));				
			if(message!=null){
%>
		<form name="userform" method="post" action="admin/message/Msg_save.jsp">
			 <table width="500"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
                <tr>
                   <td colspan="2" align="center" class="titlebg">�ظ�����</td>
                </tr>
                <tr class="tdbg">
                   <td width="50%">��Դ��<%=message.getName()==null?"":message.getName()%></td>
                   <td>����<%=message.getPart()==null?"--":message.getPart()%></td>
                </tr>
				 <tr class="tdbg">
     				<td>ʱ�䣺<%=message.getGivetime()==null?"":message.getGivetime()%></td>
     				 <td>�ص㣺<%=message.getIp()==null?"":message.getIp()%></td>
  				  </tr>
   				 <tr class="tdbg">
    				  <td colspan="2">���ݣ�<%=message.getContent()==null?"":message.getContent()%></td>
   				 </tr>
    				<tr class="tdbg">
     				 <td colspan="2">�ظ���
     				 <textarea name="reply" cols="60" rows="12" id="reply"><%=message.getReply()==null?"":message.getReply()%></textarea></td>
   				 </tr>
                  <%if (message.getReply()!=null) 
                    {%>
					<tr class="tdbg">
     				 <td>�ظ��ˣ�<%=message.getTeacher()==null?"":message.getTeacher()%></td>
    				  <td>�ظ�ʱ�䣺<%=message.getReplytime()==null?"":message.getReplytime()%></td>
   				 </tr>
   				 <%
   				    } 
   				 %>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="�ء���">
						&nbsp;&nbsp;
						<input type="button" name="Submit2" value="ȡ ��" onclick="javascript:window.location.href='Msg_list.jsp'">
						<input type="hidden" name="id" value="<%=message.getId().toString() %>">
						<input type="hidden" name="teacher" value="<%=message.getTeacher() %>">
					</td>
				</tr>
			</table>				
		</form>
		
  
<%		}
	}
%>

	</body>
</html>
