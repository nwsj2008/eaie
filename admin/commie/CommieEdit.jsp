<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.eaie.common.BasicDAO"%>
<%@page import="com.eaie.dbmanage.Commie"%>
<%@page import="java.awt.Checkbox"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸�ѧ����Ա��Ϣ</title>
     <link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript" src="js/basicJS.js"></script>
		<script language="javascript">
    function checkForm()
    {
        if(!isNull("name","����"))
            return false;
        if(!isNull("branch","��֧��"))
            return false;        
        if(!isNull("stuid","ѧ��"))
            return false;
        return true;
    }
    </script>

  </head>
  
  <body>
  <% 
  String stuid=request.getParameter("stuid"); 
  List list=BasicDAO.queryByHql("From Commie commie where commie.stuid='"+stuid+"'");
  if(list.size()==0){
  out.print("û�м�¼");
  }else{
  Commie commie=(Commie)list.get(0);
 
   %>
<BR>
<form name="form1" method="post" action="servlet/EditCommie">
  <table width="550" border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr class="tdbg">
      <td colspan="3" align="center" class="titlebg">�޸ĵ�Ա��Ϣ</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="3"><strong>������Ϣ</strong></td>
      <td>ѧ�ţ�<%=commie.getStuid()%></td>
      <td>������
      <input name="name" type="text" id="name" value="<%=commie.getName()%>" size="20"></td>
    </tr>
    <tr class="tdbg">
      <td>�Ա�
      <input name="sex" type="text" id="sex" value="<%=(commie.getSex()==null)?"":commie.getSex()%>" size="10"></td>
      <td>�༶��
      <input name="banji" type="text" id="banji" value="<%=commie.getBanji()%>" size="20"></td>
    </tr>
    <tr class="tdbg">
      <td colspan="2">��ʼ���룺
      <input name="pwd" type="text" id="pwd" size="20">�������������䣩</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="2"><strong>��Ա��Ϣ</strong></td>
      <td>֧�����ƣ�
      <input name="branch" type="text" id="branch" value="<%=commie.getBranch()%>" size="20"></td>
      <td>ְ��      
       <select name="post" id="post">
          <option value="9" <%if(commie.getPost().equals(9)){out.print("selected");}%>>��ͨ��Ա</option>
          <option value="1" <%if(commie.getPost().equals(1)){out.print("selected");}%>>���</option>
          <option value="2" <%if(commie.getPost().equals(2)){out.print("selected");}%>>��ί</option>
          <option value="3" <%if(commie.getPost().equals(3)){out.print("selected");}%>>��ί</option>
          </select></td>
    </tr>
    <tr class="tdbg">
      <td>�뵳ʱ�䣺
      <input name="addtime" type="text" id="addtime" value="<%=commie.getAddtime()%>" size="20"></td>
      <td>�Ƿ���ʽ��<input name="sfzs" type="checkbox" id="sfzs" value="1" <%if (!(commie.getSfzs()==null)){out.print("checked");} %>>
      <input name="zzsj" type="text" id="zzsj" value="<%=(commie.getZzsj()==null)?"":commie.getZzsj()%>" size="14">��ת��ʱ�䣩</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="5"><strong>������Ϣ</strong></td>
      <td>�뵳�����飺 
        <input name="rdsqs" type="checkbox" id="rdsqs" value="1"  <%if(!(commie.getRdsqs()==null)){out.print("checked");}%>></td>
      <td>������ 
        <input name="hd" type="checkbox" id="hd" value="1" <%if(!(commie.getHd()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>�뵳־Ը�飺 
        <input name="rdzys" type="checkbox" id="rdzys" value="1" <%if(!(commie.getRdzys()==null)){out.print("checked");}%>></td>
      <td>�Դ��� 
        <input name="zz" type="checkbox" id="zz" value="1" <%if(!(commie.getZz()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>���ν�ҵ֤�� 
        <input name="dkjyz" type="checkbox" id="dkjyz" value="1" <%if(!(commie.getDkjyz()==null)){out.print("checked");}%>></td>
      <td>�����ܽ᣺ <input name="bnzj" type="checkbox" id="bnzj" value="1" <%if(!(commie.getBnzj()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>Ԥ����Ա����� 
        <input name="ybdykcb" type="checkbox" id="ybdykcb" value="1" <%if(!(commie.getYbdykcb()==null)){out.print("checked");}%>></td>
      <td>ȫ���ܽ᣺ 
        <input name="qnzj" type="checkbox" id="qnzj" value="1" <%if(!(commie.getQnzj()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>ת�������飺
      <input name="zzsqs" type="checkbox" id="zzsqs" value="1" <%if(!(commie.getZzsqs()==null)){out.print("checked");}%>></td>
      <td>˼��㱨��
      <input name="sxhb" type="text" id="sxhb" value="<%=commie.getSxhb()%>" size="15">
      ƪ</td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>��ע</strong></td>
      <td colspan="2">
      <textarea name="beizhu" cols="40" rows="4" id="beizhu"><%=commie.getBeizhu()%></textarea></td>
    </tr>
  </table>
  <BR>
<center><input type="submit" name="Submit" value="������Ϣ">
<input name="stuid" type="hidden" id="stuid" value="<%=commie.getStuid()%>">
</center>
</form>
<%
 }
 %>
</body>
</html>
