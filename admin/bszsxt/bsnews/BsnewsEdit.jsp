<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.bszsxt.bsnews.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�޸Ĳ�ʿ��֪ͨ</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language = "JavaScript">
		<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("title","���������")){
				
				return false;
			}
			if(!isNull("content","����������")){
				
				return false;
			}	
		}
</script>
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  List list=BasicDAO.queryByHql("From Bsnews bsnews where bsnews.id='"+id+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }else{
  Bsnews bsnews=(Bsnews)list.get(0);
 %>

 
  

	<body>
		<form name="myform" id="myform" method="post"
			action="admin/bszsxt/bsnews/BsnewsUpate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr align="center" class="titlebg">
					<td colspan="2">
						�޸Ĳ�ʿ��֪ͨ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;�⣺
					</td>
					<td>
					    <input name="id" id="id" type="hidden" value="<%=id%>">
						<input name="title" type="text" id="subject" size="90" value="<%=bsnews.getTitle()%>">
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						��&nbsp;�ݣ�
					</td>
			
					
						<td valign="top">
						<INPUT type="hidden" name="content" value="<%=bsnews.getContent()==null?"":HtmlEncode.htmlEncode(bsnews.getContent())%>">
						<IFRAME ID="eWebEditor1"
							src="eWebEditor/eWebEditor.jsp?id=content&style=standard"
							frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
					</td>
				</tr>


				
				<tr class="tdbg">
					<td>
						��&nbsp;����
					</td>
	
					
					<td>
						<input type=hidden name="filename" value="<%=bsnews.getFilename() %>">
						<input type=hidden name="fileurl" value="<%=bsnews.getFileurl() %>">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp?action=show&filename=<%=(bsnews.getFilename()==null)?"":bsnews.getFilename() %>&fileurl=<%=(bsnews.getFileurl()==null)?"":bsnews.getFileurl() %>"
							width="650" height="25" scrolling=no frameborder="0"></iframe>
					</td>
					
		
				</tr>

				<tr align="center" class="tdbg">
					<td colspan="2">
						<input type="submit" name="Submit" value="��&nbsp;��" onClick="check()">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="��&nbsp;��">
						&nbsp;&nbsp;
						<input type="button" name="back" value="��&nbsp;��"  onClick="window.location.href='BsnewsList.jsp'">
					</td>
				</tr>
			</table>
		</form>
		<%
 }
 %>
	</body>
</html>