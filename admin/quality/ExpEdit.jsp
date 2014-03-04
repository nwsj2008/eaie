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
			
			if(!isNull("name","ʵ������")){
				
				return false;
			}
			if(!isNull("contact","��������ϵ��ʽ")){
				
				return false;
			}
			if(!isTooLong("team",200,"������Ҫ��")){
				
				return false;
			}
			if(!isTooLong("feature",300,"��ɫ�봴��")){
				
				return false;
			}
			if(!isTooLong("intention",200,"��ĿĿ����ʵʩ")){
				
				return false;
			}
			if(!isTooLong("money",300,"���Ѽ�ʹ��")){
				
				return false;
			}			
		
		}
</script>
</head>
<body>
<br>
<table width="80%"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center"><strong class="main_title">�޸Ĵ���ʵ�����</strong></td>   
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
      <td width="100">���ƣ�</td>
      <td><input name="name" type="text" class="sqinput" id="subject" size="50" maxlength="50" value="<%=exp.getName() %>"></td>
    </tr>
    <tr class="tdbg">
      <td width="100"> �����ˣ���ʦ���� </td>
      <td><input name="teacher" type="text" class="sqinput" id="unit" size="50" maxlength="4" value="<%=exp.getTeacher()==null?"":exp.getTeacher() %>"></td>
    </tr>
      <tr class="tdbg">
      <td width="100"> �����ˣ�ѧ������ </td>
      <td><input name="student" type="text" class="sqinput" id="unit" size="50" maxlength="40" value="<%=exp.getStudent()==null?"":exp.getStudent() %>">&nbsp;&nbsp;(����д������ѧ�š��༶)</td>
    </tr>
     <tr class="tdbg">
      <td width="100"> ��������ϵ��ʽ�� </td>
      <td><input name="contact" type="text" class="sqinput" id="unit" size="50" maxlength="40" value="<%=exp.getContact() %>">&nbsp;&nbsp;(����д�绰������)</td>
    </tr>
    <tr class="tdbg">
      <td width="100"> ָ����ʦ�� </td>
      <td><input name="tutor" type="text" class="sqinput" id="unit" size="50" maxlength="4" value="<%=exp.getTutor()==null?"":exp.getTutor() %>"></td>
    </tr>
    
     <tr class="tdbg">
      <td width="100">�γ̼�飺 </td>
      <td><textarea name="introduce" cols="60" rows="8" id="field" maxlength="10"><%=exp.getIntroduce()==null?"":HtmlEncode.inHtml(exp.getIntroduce()) %></textarea></td>
    </tr>
    <tr class="tdbg">
     <td width="100"> ������Ҫ�� </td>
      <td>	<textarea name="team" cols="60" rows="4" id="field"><%=exp.getTeam()==null?"":HtmlEncode.inHtml(exp.getTeam()) %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="100"> ��ɫ�봴�£� </td>
      <td><textarea name="feature" cols="60" rows="4" id="field"><%=exp.getFeature()==null?"":HtmlEncode.inHtml(exp.getFeature()) %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td width="100">��ĿĿ����ʵʩ�� </td>
      <td><textarea name="intention" cols="60" rows="4" id="field"><%=exp.getIntention()==null?"":HtmlEncode.inHtml(exp.getIntention()) %></textarea></td>
    </tr>        
    <tr class="tdbg">
      <td width="100"> ���Ѽ�ʹ�ã� </td>
      <td><textarea name="money" cols="60" rows="3" id="field"><%=exp.getMoney()==null?"":HtmlEncode.inHtml(exp.getMoney()) %></textarea></td>
    </tr>    
    <tr align="center" class="tdbg">
      <td colspan="2"><input name="Submit" type="submit" value="��&nbsp;��">
      &nbsp;&nbsp;&nbsp;
      <input type="reset" value="��&nbsp;��">
      &nbsp;&nbsp;&nbsp;
      <input type="button" value="��&nbsp;&nbsp;��" onClick="history.back()">
      <input type="hidden" name="expid" value="<%=exp.getExpid() %>">
      
      </td>
    </tr>    
  </table> 
</form>
</body>
</html>