<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.eaie.dbmanage.Commie"%>
<%@page import="com.eaie.common.BasicDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ѧ����Ա��ϸ��Ϣ</title>
    <link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
    <link href="admin_style.css" rel="stylesheet" type="text/css">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 
   
   
  <% 
  String stuid=request.getParameter("stuid"); 
  //querry���ص���list�ͣ���Զ�ǣ�
  List list=BasicDAO.queryByHql("From Commie commie where commie.stuid='"+stuid+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }
  else if(list.size()>0){
  //��list��ĵ�һ����¼ת��Ϊcommie��
  Commie commie =(Commie)list.get(0);
  
    
   %>

  
<BR>
<table width="550" border="0" align="center" cellpadding="7" cellspacing="1" class="border" style="margin-top:20">
    <tr class="tdbg">
      <td colspan="3" align="center" class="titlebg">ѧ����Ա��Ϣ</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="2"><strong>������Ϣ</strong></td>
      <td>ѧ�ţ�<%=commie.getStuid()%></td>
      <td>������<%=(commie.getName()==null)?"":commie.getName()%></td>
    </tr>
    <tr class="tdbg">
      <td>�Ա�<%=(commie.getSex()==null)?"":commie.getSex()%></td>
      <td>�༶��<%=commie.getBanji()%></td>
    </tr>
    <tr class="tdbg">     
      <td width="30" rowspan="2"><strong>��Ա��Ϣ</strong></td>
      <td>֧�����ƣ�<%=commie.getBranch()%></td>
      
      
      <td>ְ��
      <%
      if(commie.getPost().equals(9)){
      out.print("��ͨ��Ա");
      }else if(commie.getPost().equals(1)){
      out.print("���");
      }else if(commie.getPost().equals(2)){
      out.print("��ί");
      }else if(commie.getPost().equals(3)){
      out.print("��ί");
      }
	%></td>
    </tr>
    <tr class="tdbg">
      <td>�뵳ʱ�䣺<%=commie.getAddtime()%></td>
      <td>�Ƿ���ʽ��<%if (!(commie.getSfzs()==null)) {
      out.print("��("+((commie.getZzsj()==null)?" ":commie.getZzsj())+")");
      }else{
      out.print("��");
      }%></td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="5"><strong>������Ϣ</strong></td>
      <td>�뵳�����飺
      <%
      if(!(commie.getRdsqs()==null)){
      out.print("<b>��</b>");
      }else{
      out.print("<font color=red><b>��</b></font>");
      }
      
       %>
       </td>
      
      <td>������
      <%
      if(!(commie.getHd()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
      </td>
    </tr>
    <tr class="tdbg">
      <td>�뵳־Ը�飺
      <%
      if(!(commie.getRdzys()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
       </td>
      <td>�Դ���  
      <%
      if(!(commie.getZz()==null)){
      out.print("<b>��</b>");
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
       </td>
    </tr>
    <tr class="tdbg">
      <td>���ν�ҵ֤��
      <%
      if(!(commie.getDkjyz()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
       </td>
      <td>�����ܽ᣺
      <%
      if(!(commie.getBnzj()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
       </td>
    </tr>
    <tr class="tdbg">
      <td>Ԥ����Ա�����
      <%
      if(!(commie.getYbdykcb()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
       </td>
      <td>ȫ���ܽ᣺
      <%
      if(!(commie.getQnzj()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
       </td>
    </tr>
 
    <tr class="tdbg">
      <td>ת�������飺
      <%
      if(!(commie.getZzsqs()==null)){
      out.print("<b>��</b>");
      
      }else{
       out.print("<font color=red><b>��</b></font>");
      }
       %>
      </td>
      
      
  
      <td>˼��㱨��<%=commie.getSxhb()%>&nbsp;ƪ</td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>��ע</strong></td>
      <td colspan="2"><%=commie.getBeizhu()%></td>
    </tr>
</table>
<BR>
<table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center">
       
        <input type="button" name="Submit1" value="�鿴��ϸ��Ϣ" onClick="location.href='../student/StudentInfo.jsp?stuid=<%=commie.getStuid()%>'">  
         &nbsp;&nbsp;&nbsp;   
      <input type="button" name="Submit2" value="�޸���Ϣ" onClick="location.href='CommieEdit.jsp?stuid=<%=commie.getStuid()%>'">  
	  &nbsp;&nbsp;&nbsp;<input type="button" name="Submit3" value="��ӵ�Ա" onClick="location.href='CommieAdd.jsp'"></td>
    </tr> 
</table>
<% 
 } %>
</body>
</html>
