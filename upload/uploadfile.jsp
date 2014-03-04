<%@ page contentType="text/html;charset=GB2312" language="java"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="date" scope="page" class="net.fiyu.edit.TimeStamp" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";   
%>
<%!String sFileName, sFileUrl,sFileSize, sAction;%>
<%    
	sFileName =request.getParameter("filename");
	if(sFileName!=null){
		sFileName = new String(sFileName.getBytes("iso-8859-1"));
	}
	sFileUrl = request.getParameter("fileurl");
	sFileSize = request.getParameter("filesize");
	sAction = request.getParameter("action");
	
%>
<html>   
	<head>
		<TITLE>文件上传</TITLE>
		<base href="<%=basePath%>">     
		<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
		<style type="text/css">");
		 body, a, table, div, span, td, th, input, select,legend{font:9pt;font-family: "宋体", Verdana, Arial, Helvetica, sans-serif;}
		 body {padding:0px;margin:0px;background-color:transparent;}");
		</style>
		<script type="text/javascript">
		 
		  function CheckUpForm(){		  	
		   	var upform = document.upfile;	  
		   	var IsSelectFile = upform.originalfile.value;
		   	var name= IsSelectFile.substring(IsSelectFile.lastIndexOf("."),IsSelectFile.length);		   
		  	if(IsSelectFile==""){	  	  
		   		alert("请选择文件!");	
		   		return false;	
		   	}
		   	if (name==".asp"||name==".aspx"||name==".exe"||name==".ASP"||name==""||name==".ASPX"||name== ".EXE"||name== ".jsp"||name==".JSP")   
			{   
				alert("限制上传的文件类型！");   
				return false;   
			}   
		   	
		  }
		
		</script>
	</head>
<body>
	<%
	if (sAction == null) {
	
		//清空父窗口表单中的值
		out.print("<script>parent.document.myform.filename.value ='';</script>");	
		out.print("<script>parent.document.myform.fileurl.value ='';</script>");	
		out.print("<script> if(parent.document.myform.filesize!=null){ parent.document.myform.filesize.value ='';}</script>");	
	%>
	<form name=upfile type=file method=post action="upload/uploadfile.jsp?action=save"
		enctype="multipart/form-data">
		<table border=0 cellpadding=0 cellspacing=0 align=left width=100%>
			<tr >
				<td>	
					<input name="upfile" type="file" onchange="originalfile.value=this.value"%>									
					<input name="ok" type="submit" 	value="上传"" onclick="return CheckUpForm()">
					<input name="originalfile" type="hidden" value="">									
			    </td>
							
			</tr>
		</table>
	</form>
	<%
				 
	} else {
			
		if (sAction.equalsIgnoreCase("save")) {
			SmartUpload su = new SmartUpload();
			su.initialize(pageContext);
			su.upload();			
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			boolean IsMissing = file.isMissing();
			if (!IsMissing) {
			
				String FileName = (String) date.Time_Stamp() + "." + file.getFileExt();		
				String OriginalFileName = file.getFileName();
				String FileUrl = "/UploadFiles/upfile/" + FileName;
				String FileSize = String.valueOf(file.getSize());
				file.saveAs(FileUrl);	
				//sendRedirect,URL传中文乱码，采用js方法					
				String ShowFilePage ="uploadfile.jsp?action=show&filename=" + OriginalFileName + "&fileurl=" + FileName+"&filesize="+FileSize;		
	%>
			<script> 				
				window.location.href='<%=ShowFilePage %>';			
			</script>
	<% 
					
			}else{				
				out.println("上传失败！请重新上传。&nbsp;<A href=\"upload/uploadfile.jsp\">上传</A>");	
			}	
		}
		if (sAction.equalsIgnoreCase("show")) {		
		
		 	if(sFileName==null||sFileUrl==null){	
		 	
		 		out.print("<script> window.location.href='uploadfile.jsp'</script>");		 	
		
			}else if(sFileName.equalsIgnoreCase("")||sFileUrl.equalsIgnoreCase("")){			
				out.print("<script> window.location.href='uploadfile.jsp'</script>");		 	
		
			}else{			
				out.print("<script> parent.document.myform.fileurl.value ='" + sFileUrl + "';</script>");
				out.print("<script> parent.document.myform.filename.value ='" + sFileName +"';</script>");	
				out.print("<script> if(parent.document.myform.filesize!=null){ parent.document.myform.filesize.value ='" + sFileSize +"';}</script>");				
	%>

	<form name=showfile type=file method=post action="upload/uploadfile.jsp?action=delete">	    
		<table border=0 cellpadding=0 cellspacing=0 align=left width="100%">
			<tr>				
				<td>
				 	<%= sFileName %><input name="deletefile" type="submit" value="删除" onclick="return confirm('确定删除吗？')">
				</td>						
			</tr>
			<tr>				
				<td>
				 	<input name="fileurl" type="hidden" value="<%=sFileUrl %>"> 
				</td>						
			</tr>
		</table>		
	</form>
	<%
			}
		}
		if(sAction.equalsIgnoreCase("delete")){			
					
			if(sFileUrl!=null){
			
				String filepath = config.getServletContext().getRealPath("/UploadFiles/upfile/"+sFileUrl);					
				java.io.File filetodel = new java.io.File(filepath);
				System.out.println("删除文件：" + filetodel.toString());
				if(filetodel.exists()){
				
					boolean delok = filetodel.delete();					
					if(delok){	
					
						out.println(JavaScript.alertandRedirect("删除成功！","uploadfile.jsp"));	
					}else{						
						out.println(JavaScript.alertandBack("删除失败！"));	
					}										
				}				
			}else{				
				out.println(JavaScript.alertandBack("文件不存在！"));		
			}					
		}	

	}
	%>	
</body>
</html>
