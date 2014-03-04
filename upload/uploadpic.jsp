<%@ page contentType="text/html;charset=GB2312" language="java"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="com.eaie.tools.*" %>
<jsp:directive.page import="java.io.File"/>
<jsp:useBean id="date" scope="page" class="net.fiyu.edit.TimeStamp" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";   
%>
<%!
	 String  sPicUrl, sAction;	    
     String[] sPics;
%>
<%    		
	sPicUrl = request.getParameter("picurl");
	sAction = request.getParameter("action");	
%>
<html>
<head>
<title>上传图片</title>
	<base href="<%=basePath%>">     
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	<style type="text/css">");
		 body, a, table, div, span, td, th, input, select,legend{font:9pt;font-family: "宋体", Verdana, Arial, Helvetica, sans-serif;}
		 body {padding:0px;margin:0px;background-color: #FEFFED;}");	
	</style>	
 	<script type="text/javascript"> 
	    function PicCheck(){
	         
	      var picnum = document.uppic.upcount.value;     
	      for(i=1;i<=picnum;i++){     
	       
	          var picid = "pic" + i;
	          var picname = document.getElementById(picid).value;         
		      if (picname== ""){
			   	alert("请选择要上传的图片!");
			  	return false;
			  }
		  	  var name=picname.substring(picname.lastIndexOf("."),picname.length);   
			  if (name!=".gif" && name!=".jpg"&&name!=".jpeg"&&name!=".JPEG"&&name!=""&&name!=".JPG"&&name!= ".GIF"&&name !=".bmp"&&name!=".BMP")   
			  {   
			    alert("请上传图片文件（gif/jpg/jpeg/bmp）！");   
			    return false;   
			  }   
		  }
	    }
	    function SetUpload(){       　
	      var picnum = document.uppic.upcount.value;
	      if(picnum<1){
	       	alert('请输入大于0的整数'); 
	       	return false;     
	      }
	      else{      	
	      	str='';		
			for(i=1;i<=picnum;i++){
			
				str+='图片'+i+'：<input type="file" name="pic' + i +'" id ="pic'+ i + '" style="width:250"><br>';
				window.upid.innerHTML=str;//+'<br>';
			}      
	      }
	      parent.AutoIframe();
	    }
 
 	</script>
 	
</head>
<body>
<% 
  	if(sAction==null){
  		
  		//清空父窗口表单中的值
		out.print("<script>parent.document.myform.imageurl.value ='';</script>");	
%>
<form action="upload/uploadpic.jsp?action=save" method="post" name="uppic" enctype="multipart/form-data">
  <table width="100%" border="0" cellspacing="0" cellpadding="5" align="left">
    <tr bgcolor="#9EBEF5"> 
      <td align="center">添加新闻图片</td>
    </tr>
    <tr align="left" bgcolor="#eeecee"> 
      <td align="left"> 需要上传的个数 ：
          <input type="text" name="upcount" value="1" size=5 onchange="SetUpload();" onKeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;">        
      </td>
    </tr>
    <tr> 
      <td id="upid" align="left"> 图片1：
        <input type="file" name ="pic1" id="pic1" width=120>
      </td>
    </tr>
    <tr align="center" bgcolor="#9EBEF5"> 
      <td> 
        <input type="submit" value="上传" onClick="return PicCheck()">      
      </td>
    </tr>
  </table> 
</form>
<%
   }else{  
   		if(sAction.equalsIgnoreCase("save")){
        
	     	SmartUpload su = new SmartUpload();
			su.initialize(pageContext);
			su.upload();
			
			int piccount = su.getFiles().getCount();
			//System.out.println(piccount);		
			sPicUrl = "";
			for(int i=0;i<piccount;i++){
				com.jspsmart.upload.File file = su.getFiles().getFile(i);
	    		boolean IsMissing = file.isMissing();
				if (!IsMissing) {	
		
					//生成随机文件名
					String FileName = (String) date.Time_Stamp().substring(0,date.Time_Stamp().length()-1)+ i + "." + file.getFileExt();			
		    		String FileUrl = "/UploadFiles/uppic/" + FileName;	    		
					file.saveAs(FileUrl);
					if(!sPicUrl.equals("")){					
						sPicUrl += "|" +FileName;
					}else{				
						sPicUrl = FileName;
					}
					//
				
				
				}else{
					out.println(JavaScript.alertandBack("上传失败！"));
				}
			}			
			response.sendRedirect("uploadpic.jsp?action=show&picurl=" + sPicUrl);	
		}
%>

<%
	    if(sAction.equalsIgnoreCase("delete")){    
	    
	       for(int i = 0; i<sPics.length; i++){  
	       	       	 
	       	String picpate = config.getServletContext().getRealPath("/UploadFiles/uppic/"+sPics[i]);
	       	File pic = new File(picpate);
	       	if(pic.exists()){ 
				boolean delok = pic.delete();					
				if(delok){		
					
					out.println(JavaScript.alertandRedirect("删除成功！","uploadpic.jsp"));	
					
				}else{
					
					out.println(JavaScript.alertandBack("删除失败！"));
	       	   	}
	       	}      
	      }
	    }
	 	if(sAction.equalsIgnoreCase("show")){
 %>
 <form action="upload/uploadpic.jsp?action=delete" method="post" name="uppic">
    <table width="100%" border="0" cellspacing="0" cellpadding="5" align="left">
     <tr bgcolor="#9EBEF5"> 
        <td align="center" colspan=2>已添加新闻图片</td>
     </tr>    
<%  
	  		if(sPicUrl==null){ 
	  			out.print("<script> window.location.href='uploadpic.jsp'</script>");	
	  		}else if(sPicUrl.equalsIgnoreCase("")){ 
	  			out.print("<script> window.location.href='uploadpic.jsp'</script>");
	  		
    		}else{
	  			sPics = sPicUrl.split("\\|");
	  			out.print("<script> parent.document.myform.imageurl.value ='" + sPicUrl + "'</script>");	  				
	 			for(int i = 0; i<sPics.length; i++){  
%>    
    <tr> 
      <td align="right" width="100"> 图片<%=i+1 %>:</td>
      <td align="left" width="200"><%=sPics[i] %></td>         
    </tr> 
    
<% 				}
%>
	<tr bgcolor="#9EBEF5"> 
      <td align="center" colspan=2><input type=submit value=" 删除 "　name="deletepic" onclick="return confirm('确定删除吗？')"></td>
    </tr>  
<% 
    			
    		}
    	}	
%>
  </table> 
</form>
<% 		
	}	
%>  

</body>
</html>