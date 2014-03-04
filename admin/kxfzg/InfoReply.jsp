<%@ page contentType="text/html;charset=GBK" pageEncoding="GB2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
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
		int temp = Integer.parseInt(id);	
		Leaveinfo info = (Leaveinfo) BasicDAO.queryById(Leaveinfo.class,Integer.parseInt(id));				
			if(info!=null){
%>
		<form name="userform" method="post" action="admin/kxfzg/InfoReplySave.jsp">
			 <table width="500"  border="0" align="center" cellpadding="5" cellspacing="1" class="border">
                <tr>
                   <td colspan="2" align="center" class="titlebg">回复留言</td>
                </tr>
                <tr class="tdbg">
                   <td width="50%">题目：<%=info.getTitle()==null?"":info.getTitle()%></td>
                   <td>留言人IP： </td>
                </tr>
				 <tr class="tdbg">
     				<td>时间：<%=info.getPubtime()==null?"":info.getPubtime()%></td>
     				 <td>留言人：<%=info.getWriter()==null?"":info.getWriter()%></td>
  				  </tr>
   				 <tr class="tdbg">
    				  <td colspan="2">内容：<%=info.getContent()==null?"":info.getContent()%></td>
   				 </tr>
    				<tr class="tdbg">
     				 <td colspan="2">回复：
     				 <textarea name="reply" id="reply" cols="60" rows="12" ><%=info.getAnswer()==null?"":info.getAnswer()%></textarea></td>
   				 </tr>
 <%} %>
				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="回　复">
						&nbsp;&nbsp;
						<input type="button" name="Submit2" value="取 消" onclick="javascript:window.location.href='LookInfo.jsp'">
					</td>
				</tr>
			</table>				
		</form>
	</body>
</html>
