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
		<title>�޸���ǰ������֪ͨ</title>
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
  System.out.print(id);
  List list=BasicDAO.queryByHql("From Tqgbnews tqgbnews where tqgbnews.id='"+id+"'");
  if(list.size()==0){
  out.print("û�м�¼");
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
						�޸���ǰ������֪ͨ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;�⣺
					</td>
					<td>
					    <input name="id" id="id" type="hidden" value="<%=id%>">
						<input name="title" type="text" id="subject" size="90" value="<%=tqgbnews.getTitle()%>">
					</td>
				</tr>

				<tr class="tdbg">
					<td>
						��&nbsp;�ݣ�
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
						��&nbsp;����
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
						<input type="submit" name="Submit" value="��&nbsp;��" onClick="check()">
						&nbsp;&nbsp;
						<input type="reset" name="Submit2" value="��&nbsp;��">
						&nbsp;&nbsp;
						<input type="button" name="back" value="��&nbsp;��"  onClick="window.location.href='TqgbnewsList.jsp'">
					</td>
				</tr>
			</table>
		</form>
		<%
 }
 %>
	</body>
</html>