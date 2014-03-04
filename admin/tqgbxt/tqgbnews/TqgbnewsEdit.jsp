<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tqgbxt.tqgbnews.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>修改提前攻博生通知</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language = "JavaScript">
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
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  System.out.print(id);
  List list=BasicDAO.queryByHql("From Tqgbnews tqgbnews where tqgbnews.id='"+id+"'");
  if(list.size()==0){
  out.print("没有记录");
  }else{
  Tqgbnews tqgbnews=(Tqgbnews)list.get(0);
 %>

 
  

	<body>
		<form name="myform" id="myform" method="post"
			action="admin/tqgbxt/tqgbnews/TqgbnewsUpate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						修改提前攻博生通知
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						标&nbsp;题：
					</td>
					<td>
					    <input name="id" id="id" type="hidden" value="<%=id%>">
						<input name="title" type="text" id="subject" size="90" value="<%=tqgbnews.getTitle()%>">
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						内&nbsp;容：
					</td>
			
					
						<td valign="top">
						<INPUT type="hidden" name="content" value="<%=tqgbnews.getContent()==null?"":HtmlEncode.htmlEncode(tqgbnews.getContent())%>">
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
						<input type=hidden name="filename" value="<%=tqgbnews.getFilename() %>">
						<input type=hidden name="fileurl" value="<%=tqgbnews.getFileurl() %>">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp?action=show&filename=<%=(tqgbnews.getFilename()==null)?"":tqgbnews.getFilename() %>&fileurl=<%=(tqgbnews.getFileurl()==null)?"":tqgbnews.getFileurl() %>"
							width="650" height="25" scrolling=no frameborder="0"></iframe>
					</td>
					
		
				</tr>

				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="修&nbsp;改" onClick="check()">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="重&nbsp;置">
						&nbsp;&nbsp;
						<input type="button" name="back" value="返&nbsp;回"  onClick="window.location.href='TqgbnewsList.jsp'">
					</td>
				</tr>
			</table>
		</form>
		<%
 }
 %>
	</body>
</html>