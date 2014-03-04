<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmnews.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("title","请输入标题")){
				
				return false;
			}
			if(!isNull("content","请输入内容")){
				
				return false;
			}	
		}
</script>
		
		
		<title>修改推免生通知</title>
		<base href="<%=basePath%>">
		<link href="tmszsxt/tm_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Tmnews tmnews where tmnews.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Tmnews tmnews=(Tmnews)list.get(0);
 %>

 
  

	<body>
		<form name="myform" id="myform" method="post"
			action="tmszsxt/tmnews/TmnewsUpate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						修改推免生通知
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						标&nbsp;题：
					</td>
					<td>
					    <input name="id" id="id" type="hidden" value="<%=id%>">
						<input name="title" type="text" id="subject" size="90" value="<%=tmnews.getTitle()%>">
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						内&nbsp;容：
					</td>
			
					
						<td valign="top">
						<INPUT type="hidden" name="content" value="<%=tmnews.getContent()==null?"":HtmlEncode.htmlEncode(tmnews.getContent())%>">
						<IFRAME ID="eWebEditor1"
							src="eWebEditor/eWebEditor.jsp?id=content&style=standard"
							frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
					</td>
				</tr>


				
				<tr class="tdbg">
					<td>
						附&nbsp;件：
					</td>
					
					
					<td>
						<input type=hidden name="filename" value="<%=tmnews.getFilename() %>">
						<input type=hidden name="fileurl" value="<%=tmnews.getFileurl() %>">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp?action=show&filename=<%=tmnews.getFilename() %>&fileurl=<%=tmnews.getFileurl() %>"
							width="650" height="25" scrolling=no frameborder="0"></iframe>
					</td>
					
					
					
				</tr>

				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="修&nbsp;改" onClick="check()">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="重&nbsp;置">
						&nbsp;&nbsp;
						<input type="button" name="back" value="返&nbsp;回"  onClick="window.location.href='TmnewsList.jsp'">	
						<input name="filename" type="hidden" id="filename" value="">
						<input name="fileurl" type="hidden" id="fileurl" value="">
					</td>
				</tr>
			</table>
		</form>
		<%
 }
 %>
	</body>
</html>