<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.BasicDAO" %>
<%@ page import="com.eaie.tools.*" %>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<title>�������</title>
		<style type="text/css">
	<!--
	body {
		background-color: #FEFFED;
	}
	-->
	</style>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript">
		function CheckForm()
		{		  
		
			if (document.myform.title.value.length == 0) {
				alert("����д���±���");
				document.myform.title.focus();
				return false;
			}
			if (document.myform.part.value.length == 0) {
				alert("����д��������");
				document.myform.part.focus();
				return false;
			}
		}
 		function AutoIframe()
	    {  
	        if(document.readyState!='complete')
	        {
	            setTimeout( function(){AutoIframe();},25 );
	            return;
	        }
	        else
	        {
	           var ifobj=document.getElementById("d_pic");
	           ifobj.height= ifobj.contentWindow.document.body.scrollHeight;
	        }
	    }
	    function SetWinHeight(obj)
		{			     
			 var win=obj;
			 if (document.getElementById)
			 {
			    if (win && !window.opera)
			    {
				  if (win.contentDocument && win.contentDocument.body.offsetHeight)
				    win.height = win.contentDocument.body.offsetHeight;
				  else if(win.Document && win.Document.body.scrollHeight)
				    win.height = win.Document.body.scrollHeight;	
			
			    }
			 }
		}
	</script>

	</head>
	<body>
		<form name="myform" method="post" action="admin/kxfzg/NewsSave.jsp"
			onSubmit="return CheckForm();">
			<table width="730" border="0" align="left" cellpadding="5"
				cellspacing="0">
				<tr>
					<td width="80">
						�������ţ�
					</td>
					<td>
						<%="��ί"%>
					</td>
				</tr>
				<tr>
					<td width="80">
						���±��⣺
					</td>
					<td>
						<input name="title" type="text" id="title" size="70"
							maxlength="35">
						��������35���֣�
					</td>
				</tr>
				<tr>
					<td width="80" valign="top">
						�������ݣ�
					</td>
					<td valign="top">
						<INPUT type="hidden" name="content" value="">
						<IFRAME ID="eWebEditor1"
							src="eWebEditor/eWebEditor.jsp?id=content&style=standard"
							frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
					</td>
				</tr>
				<tr>
					<td width="80">
						ճ��������
					</td>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp"
							width="650" height="25" scrolling=no frameborder="0" allowtransparency="yes"></iframe>
					</td>
				</tr>
				<tr>
					<td width="80">
						���ͼƬ��
					</td>
					<td>
						<input type=hidden name="imageurl" value="">
						<iframe id=d_pic frameborder=0 src="upload/uploadpic.jsp"
							width="650" ��height="25" scrolling=no frameborder="0" border="0"
							onload="SetWinHeight(this)"></iframe>

					</td>
				</tr>
				<tr>
					<td width="80">
						�������ԣ�
					</td>
					<td>
						<blockquote><input type="checkbox" name="istop" id="istop" value="1"> 
						�ö� 
						<%--<input type="checkbox" name="ispicnews" id="ispicnews" value="1"> 
						��ҳͼƬ���� 
					--%></blockquote></td>
				</tr>
				<tr align="right">
					<td colspan="2">
						<input type="submit" name="Submit" value="�� ��" class="button">
						&nbsp;
						<input type="reset" name="Submit2" value="�� ��" class="button">		
						<input type="hidden" name="part" value="��ί">					
				</tr>
			</table>
		</form>
	</body>
</html>
