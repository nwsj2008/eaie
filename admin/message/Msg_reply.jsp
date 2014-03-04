<%@ page contentType="text/html;charset=GBK" pageEncoding="GB2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.admin.message.*" %>
<html>
	<head>
		<title>回复留言</title>
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
		     
			 if(!isNull("teacher","用户名"))
			 {
			 	return false;
			 }			
			 if(!isNull("pwd","密码"))
			 {
			 	return false;
			 }
			 if(!isNull("pwd2","重复密码"))
			 {
			 	return false;
			 }
			 if(!isEqual("pwd","pwd2","两次输入密码不一致！"))
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
			 	
			 	alert("请选择用户权限");
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
                   <td colspan="2" align="center" class="titlebg">回复留言</td>
                </tr>
                <tr class="tdbg">
                   <td width="50%">来源：<%=message.getName()==null?"":message.getName()%></td>
                   <td>对象：<%=message.getPart()==null?"--":message.getPart()%></td>
                </tr>
				 <tr class="tdbg">
     				<td>时间：<%=message.getGivetime()==null?"":message.getGivetime()%></td>
     				 <td>地点：<%=message.getIp()==null?"":message.getIp()%></td>
  				  </tr>
   				 <tr class="tdbg">
    				  <td colspan="2">内容：<%=message.getContent()==null?"":message.getContent()%></td>
   				 </tr>
    				<tr class="tdbg">
     				 <td colspan="2">回复：
     				 <textarea name="reply" cols="60" rows="12" id="reply"><%=message.getReply()==null?"":message.getReply()%></textarea></td>
   				 </tr>
                  <%if (message.getReply()!=null) 
                    {%>
					<tr class="tdbg">
     				 <td>回复人：<%=message.getTeacher()==null?"":message.getTeacher()%></td>
    				  <td>回复时间：<%=message.getReplytime()==null?"":message.getReplytime()%></td>
   				 </tr>
   				 <%
   				    } 
   				 %>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="回　复">
						&nbsp;&nbsp;
						<input type="button" name="Submit2" value="取 消" onclick="javascript:window.location.href='Msg_list.jsp'">
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
