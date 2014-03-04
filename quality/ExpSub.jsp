<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
    request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/basicJS.js"></script>
	<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("name","实验名称不可为空")){
				
				return false;
			}
			if(!isNull("contact","申请人联系方式")){
				
				return false;
			}
			if(!isTooLong("team",200,"合作者要求")){
				
				return false;
			}
			if(!isTooLong("feature",300,"特色与创新")){
				
				return false;
			}
			if(!isTooLong("intention",200,"项目目标与实施")){
				
				return false;
			}
			if(!isTooLong("money",300,"经费及使用")){
				
				return false;
			}			
		
		}
</script>
<style type="text/css">
<!--
.sqinput {
	border: 1px solid #333333;
	font-size: 12px;
	height: 20px;
	padding-top: 2px;
	padding-right: 2px;
	padding-left: 2px;
}
.sbinput {
	font-size: 12px;
	height: 20px;
	width: 60px;
	padding-top: 2px;
	padding-right: 2px;
	padding-left: 2px;
	border: 1px solid #333333;
}
.cklink {
	font-size: 12px;
	color: #0000FF;
	text-decoration: underline;
}
-->
</style>
</head>
<body>

<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valign=top align=left>
		
		
<table width="80%"  border="0" align="center" cellpadding="4" cellspacing="0">
 <br> <tr>
    <td align="center"><strong class="main_title">创新实验课题申请</strong></td>
    <td width="110" align="right"><a href="quality/ExpList.jsp?type=2"><font color="#0000FF">查看已申请课题</font></a></td>
  </tr>
</table>
<form name="form1" method="post" action="quality/ExpSave.jsp" onSubmit="return formCheck()">
  <table width="600"  border="0" align="center" cellpadding="4" cellspacing="0" class="maintext">
    <tr>
      <td width="100">名称：</td>
      <td><input name="name" type="text" class="sqinput" id="subject" size="50" maxlength="50"></td>
    </tr>
    <tr>
      <td width="100"> 申请人（教师）： </td>
      <td><input name="teacher" type="text" class="sqinput" id="unit" size="50" maxlength="4"></td>
    </tr>
      <tr>
      <td width="100"> 申请人（学生）： </td>
      <td><input name="student" type="text" class="sqinput" id="unit" size="50" maxlength="40">&nbsp;&nbsp;(请添写姓名、学号、班级)</td>
    </tr>
     <tr>
      <td width="100"> 申请人联系方式： </td>
      <td><input name="contact" type="text" class="sqinput" id="unit" size="50" maxlength="40">&nbsp;&nbsp;(请添写电话、邮箱)</td>
    </tr>
    <tr>
      <td width="100"> 指导老师： </td>
      <td><input name="tutor" type="text" class="sqinput" id="unit" size="50" maxlength="4"></td>
    </tr>
    
     <tr>
      <td width="100">课程简介： </td>
      <td><textarea name="introduce" cols="60" rows="8" id="field" maxlength="10"></textarea></td>
    </tr>
    <tr>
     <td width="100"> 合作者要求： </td>
      <td>	<textarea name="team" cols="60" rows="4" id="field"></textarea></td>
    </tr>
    <tr>
      <td width="100"> 特色与创新： </td>
      <td><textarea name="feature" cols="60" rows="4" id="field"></textarea></td>
    </tr>
    <tr>
      <td width="100">项目目标与实施： </td>
      <td><textarea name="intention" cols="60" rows="4" id="field"></textarea></td>
    </tr>        
    <tr>
      <td width="100"> 经费及使用： </td>
      <td><textarea name="money" cols="60" rows="3" id="field"></textarea></td>
    </tr>    
    <tr align="center">
      <td colspan="2"><input name="Submit" type="submit" class="sbinput" value="提&nbsp;交">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" class="sbinput" value="重&nbsp;置"></td>
    </tr>    
  </table> 
  
</form>

 <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>

</table>
  
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
