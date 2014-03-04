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
<%!
	News news;
 %>
<html>
	<head>
		<title>添加文章</title>
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
				alert("请填写文章标题");
				document.myform.title.focus();
				return false;
			}
			if (document.myform.part.value.length == 0) {
				alert("请填写发布部门");
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

		<%!String sAction, bigclass, smallclass;%>
		<%  Teacher user = (Teacher)session.getAttribute("USER");
		    String part = user.getPart();
		    String teacher = user.getTeacher();
		    int bigclassid;
		    int smallId = -1;
		    int smallclassid;
		    if(request.getParameter("smallclassid")!=null)
		        smallId = Integer.parseInt(request.getParameter("smallclassid"));
			String id = request.getParameter("newsid");
			int newsid = (id==null)?-1:Integer.parseInt(id);
			
		if (id == null) {	
		   Smallclass smallClass = (Smallclass)BasicDAO.queryById(Smallclass.class,smallId);
		   smallclass = smallClass.getSmallclass();
		   smallclassid = smallClass.getSmallclassid();
		   bigclassid = smallClass.getBigclass().getBigclassid();			
		%>
		<form name="myform" method="post" action="admin/news/NewsSave.jsp"
			onSubmit="return CheckForm();">
			<table width="730" border="0" align="left" cellpadding="5"
				cellspacing="0">
				<tr>
					<td width="80">
						文章类别：
					</td>
					<td>
						<%=smallclass%>
					</td>
				</tr>
				<tr>
					<td width="80">
						发布部门：
					</td>
					<td>
						<%=part %>
					</td>
				</tr>
				<tr>
					<td width="80">
						文章标题：
					</td>
					<td>
						<input name="title" type="text" id="title" size="70"
							maxlength="35">
						（不多于35个字）
					</td>
				</tr>
				<tr>
					<td width="80" valign="top">
						文章内容：
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
						粘贴附件：
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
						添加图片：
					</td>
					<td>
						<input type=hidden name="imageurl" value="">
						<iframe id=d_pic frameborder=0 src="upload/uploadpic.jsp"
							width="650" 　height="25" scrolling=no frameborder="0" border="0"
							onload="SetWinHeight(this)"></iframe>

					</td>
				</tr>
				<tr>
					<td width="80">
						文章属性：
					</td>
					<td>
						<input name="istop" type="checkbox" id="istop" value="1">
						置顶
						<input name="ispicnews" type="checkbox" id="ispicnews" value="1">
						首页图片新闻
					</td>
				</tr>
				<tr align="right">
					<td colspan="2">
						<input type="submit" name="Submit" value="提 交" class="button">
						&nbsp;
						<input type="reset" name="Submit2" value="重 置" class="button">	
						<input type="hidden" name="smallclassid" value="<%=smallclassid%>">	
						<input type="hidden" name="bigclassid" value="<%=bigclassid%>">	
						<input type="hidden" name="smallclass" value="<%=smallclass %>">	
						<input type="hidden" name="teacher" value="<%=teacher %>">
						<input type="hidden" name="part" value="<%=part %>">					
				</tr>
			</table>
		</form>
		<%
		} 
		else {
			news = (News)BasicDAO.queryById(News.class,newsid); 
			if(news!=null){		
			int big = news.getBigclassid();
			int small = news.getSmallclassid();
			String smallName = news.getSmallclass();
		%>
		<form name="myform" method="post" action="admin/news/NewsSave.jsp"
			onSubmit="return CheckForm();">
			<table width="730" border="0" align="left" cellpadding="5"
				cellspacing="0">
				<tr>
					<td width="80">
						文章类别：
					</td>
					<td>
						<%=smallName %>
					</td>
				</tr>
				<tr>
					<td width="80">
						发布部门：
					</td>
					<td>						
						<%=part %>
					</td>
				</tr>
				<tr>
					<td width="80">
						文章标题：
					</td>
					<td>
						<input name="title" type="text" id="title" size="70" value="<%=news.getTitle() %>"
							maxlength="35">
						（不多于35个字）
					</td>
				</tr>
				<tr>
					<td width="80" valign="top">
						文章内容：
					</td>
					<td valign="top">
						<INPUT type="hidden" name="content" value="<%=news.getContent()==null?"":HtmlEncode.htmlEncode(news.getContent())%>">
						<IFRAME ID="eWebEditor1"
							src="eWebEditor/eWebEditor.jsp?id=content&style=standard"
							frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
					</td>
				</tr>
				
				<%
					if(news.getFilename()==null){

 				%>				
 				<tr>
					<td width="80">
						粘贴附件：
					</td>
					<td>
						<input type=hidden name="filename" value="">
						<input type=hidden name="fileurl" value="">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp"
							width="650" height="25" scrolling=no frameborder="0" allowtransparency="yes"></iframe>
					</td>
				<%
					}else{
				%>				
 				<tr>
					<td width="80">
						粘贴附件：
					</td>
 					<td>
						<input type=hidden name="filename" value="<%=news.getFilename() %>">
						<input type=hidden name="fileurl" value="<%=news.getFileurl() %>">
						<iframe id=d_file frameborder=0 src="upload/uploadfile.jsp?action=show&filename=<%=news.getFilename() %>&fileurl=<%=news.getFileurl() %>"
							width="650" height="25" scrolling=no frameborder="0"></iframe>
					</td>
				</tr>
				<%
					}
					if(news.getImageurl()==null){
 				%>				
				<tr>
					<td width="80">
						添加图片：
					</td>
					<td>
						<input type=hidden name="imageurl" value="">
						<iframe id=d_pic frameborder=0 src="upload/uploadpic.jsp"
							width="650" 　height="25" scrolling=no frameborder="0" border="0"
							onload="SetWinHeight(this)"></iframe>

					</td>
				</tr>
				<%	
					}else{
				%>
				<tr>
					<td width="80">
						添加图片：
					</td>
					<td>
						<input type=hidden name="imageurl" value="<%=news.getImageurl() %>">
						<iframe id=d_pic frameborder=0 src="upload/uploadpic.jsp?action=show&picurl=<%=news.getImageurl() %>"
							width="650" 　height="25" scrolling=no frameborder="0" border="0"
							onload="SetWinHeight(this)"></iframe>

					</td>
				</tr>				
				<%
					}
				 %>
				<tr>
					<td width="80">
						文章属性：
					</td>
					<td>
						<input name="istop" type="checkbox" id="istop" value="<%=Byte.parseByte("1") %>" <%=news.getIstop()==null?"":"checked"%>>
						置顶
						<input name="ispicnews" type="checkbox" id="ispicnews" value="<%=Byte.parseByte("1") %>" <%=news.getIspicnews()==null?"":"checked"%>>
						首页图片新闻
					</td>
				</tr>
				<tr align="right">
					<td colspan="2">
						<input type="submit" name="Submit" value="提 交" class="button">
						<input type="reset" name="Submit2" value="重 置" class="button">		
						<input type="button" name="back" value="返 回" class="button" onClick="window.location.href='NewsList.jsp'">					
						<INPUT type="hidden" name="newsid" value="<%=newsid%>">
						<INPUT type="hidden" name="bigclassid" value="<%=big%>">
						<INPUT type="hidden" name="smallclassid" value="<%=small%>">
						<INPUT type="hidden" name="smallclass" value="<%=smallName%>">
						<INPUT type="hidden" name="part" value="<%=news.getPart() %>">
						<INPUT type="hidden" name="hits" value="<%=news.getHits() %>">
						<input type="hidden" name="teacher" value="<%=teacher %>">
						<input type="hidden" name="part" value="<%=part %>">	
				</tr>
			</table>
		</form>
		<%		
		}else{
		%>
				
				<script type="text/javascript">
					alert('出错啦！');
				</script>
		
		<% 		}
		}
		%>
	</body>
</html>
