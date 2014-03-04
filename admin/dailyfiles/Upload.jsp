<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
<script language = "JavaScript">
	function formCheck()
	{			
		if (document.myform.bigclassid.value == "")
		{
			alert("请选择发布版块!");
			return false;
		} 
		if (document.myform.filename.value == "")
		{
			alert("请先上传文件!");
			return false;
		} 			
	}
</script>
		
<title>上传常用资料</title>
</head>

<body>
<%!
	String sAction;
	Teacher user;
 %>
 <%
 	sAction = request.getParameter("action");
 	user = (Teacher)session.getAttribute("USER"); 	
 	
 	if(sAction==null){
  %>
<form name="myform" method="post" action="admin/dailyfiles/Upload.jsp?action=save" onSubmit="return formCheck()">
	<br>
	<table width="450" border="0" align="center" cellpadding="5" cellspacing="1" class="border">
      <tr align="center">
        <td colspan="2" class="titlebg">上传常用资料</td>
      </tr>
      <tr class="tdbg">
        <td width="80">发布版块：</td>
        <td>
		<select name="bigclassid" id="bigclassid">
          <option value="" selected>请选择发布版块</option>	
<%
		if(UserManage.HasRight(2,user)){ 
 %>	
          <option value="2">本科生工作</option>	
 <%		} 
 		if(UserManage.HasRight(3,user)){ 
 %>		
		  <option value="3">研究生工作</option>	
<%
		}
		if(UserManage.HasRight(4,user)){ 
%>
		  <option value="4">科学研究</option>
<%
		}
		if(UserManage.HasRight(6,user)){ 
 %>
		  <option value="6">就业专栏</option>		
<%
		}
%>	
        </select>
		</td>
      </tr>
      <tr class="tdbg">
        <td>添加文件：</td>
        <td>
        	<input type=hidden name="filename" value="">
			<input type=hidden name="fileurl" value="">
			<input type=hidden name="filesize" value="">
			<input type=hidden name="teacher" value="<%=user.getTeacher() %>">
			<input type=hidden name="part" value="<%=user.getPart() %>">
			<input type=hidden name="downnum" value="0">
        	<iframe src="upload/uploadfile.jsp" height="25" frameborder="0" width="100%" scrolling="no" allowtransparency="yes"> </iframe>
        </td>
      </tr> 
      <tr align="center" class="tdbg">
        <td colspan="2">
        <input type="submit" name="Submit" value="提&nbsp;交">&nbsp;&nbsp;
        <input type="button"  value="取&nbsp;消" onClick="javascript:location.href='FileList.jsp'">
        </td>
      </tr>
  </table>
</form>
<%
	}else{
%>
<jsp:useBean id="upfile" class="com.eaie.dbmanage.Upfile" >
	<jsp:setProperty name="upfile" property="*"/>
</jsp:useBean>
<%
		
		upfile.setUptime(new java.util.Date());	
		String sfilesize="";	
		int ifilesize = Integer.valueOf(upfile.getFilesize());
		//计算文件大小
		if(ifilesize>1048576){		
			ifilesize /=1024 ;
			ifilesize /=1024 ;
			sfilesize = String.valueOf(ifilesize) + "&nbsp;MB";
		
		}else if(ifilesize<=1024){	
			sfilesize = String.valueOf(ifilesize) + "&nbsp;Byte";
		}else{
			ifilesize /=1024 ;
			sfilesize = String.valueOf(ifilesize) + "&nbsp;KB";
		}
		
		upfile.setFilesize(sfilesize);
		try{
			BasicDAO.save(upfile);
			out.println(JavaScript.alertandRedirect("提交成功！","FileList.jsp"));
		}catch(Exception ex){
			ex.printStackTrace();
			out.println(JavaScript.alertandBack("提交失败，请检查数据！"));
		}
	
	}
 %>
</body>
</html>
