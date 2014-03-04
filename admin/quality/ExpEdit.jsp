<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
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
<base href="<%=basePath%>">
<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/basicJS.js"></script>
	<script language = "JavaScript">
		function formCheck(){	
			
			if(!isNull("name","实验名称")){
				
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
</head>
<body>
<br>
<table width="80%"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong class="main_title">修改创新实验课题</strong></td>   
  </tr>
</table>
<%
	String id = request.getParameter("id");
	if(id==null){return;}
	Innovativelexp exp = ExpManage.getExp(Integer.valueOf(id));	
	if(exp==null){return;}
	
 %>
<form name="form1" method="post" action="admin/quality/ExpSave.jsp" onSubmit="return formCheck()">
  <table width="640" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
    <tr class="tdbg">
      <td width="100">名称：</td>
      <td><input name="name" type="text" class="sqinput" id="subject" size="50" maxlength="50" value="<%=exp.getName() %>"></td>
    </tr>
    <tr class="tdbg">
      <td width="100"> 申请人（教师）： </td>
      <td><input name="teacher" type="text" class="sqinput" id="unit" size="50" maxlength="4" value="<%=exp.getTeacher()==null?"":exp.getTeacher() %>"></td>
    </tr>
      <tr class="tdbg">
      <td width="100"> 申请人（学生）： </td>
      <td><input name="student" type="text" class="sqinput" id="unit" size="50" maxlength="40" value="<%=exp.getStudent()==null?"":exp.getStudent() %>">&nbsp;&nbsp;(请添写姓名、学号、班级)</td>
    </tr>
     <tr class="tdbg">
      <td width="100"> 申请人联系方式： </td>
      <td><input name="contact" type="text" class="sqinput" id="unit" size="50" maxlength="40" value="<%=exp.getContact() %>">&nbsp;&nbsp;(请添写电话、邮箱)</td>
    </tr>
    <tr class="tdbg">
      <td width="100"> 指导老师： </td>
      <td><input name="tutor" type="text" class="sqinput" id="unit" size="50" maxlength="4" value="<%=exp.getTutor()==null?"":exp.getTutor() %>"></td>
    </tr>
    
     <tr class="tdbg">
      <td width="100">课程简介： </td>
      <td><textarea name="introduce" cols="60" rows="8" id="field" maxlength="10"><%=exp.getIntroduce()==null?"":HtmlEncode.inHtml(exp.getIntroduce()) %></textarea></td>
    </tr>
    <tr class="tdbg">
     <td width="100"> 合作者要求： </td>
      <td>	<textarea name="team" cols="60" rows="4" id="field"><%=exp.getTeam()==null?"":HtmlEncode.inHtml(exp.getTeam()) %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="100"> 特色与创新： </td>
      <td><textarea name="feature" cols="60" rows="4" id="field"><%=exp.getFeature()==null?"":HtmlEncode.inHtml(exp.getFeature()) %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="100">项目目标与实施： </td>
      <td><textarea name="intention" cols="60" rows="4" id="field"><%=exp.getIntention()==null?"":HtmlEncode.inHtml(exp.getIntention()) %></textarea></td>
    </tr>        
    <tr class="tdbg">
      <td width="100"> 经费及使用： </td>
      <td><textarea name="money" cols="60" rows="3" id="field"><%=exp.getMoney()==null?"":HtmlEncode.inHtml(exp.getMoney()) %></textarea></td>
    </tr>    
    <tr align="center" class="tdbg">
      <td colspan="2"><input name="Submit" type="submit" value="提&nbsp;交">
      &nbsp;&nbsp;&nbsp;
      <input type="reset" value="重&nbsp;置">
      &nbsp;&nbsp;&nbsp;
      <input type="button" value="返&nbsp;&nbsp;回" onClick="history.back()">
      <input type="hidden" name="expid" value="<%=exp.getExpid() %>">
      
      </td>
    </tr>    
  </table> 
</form>
</body>
</html>