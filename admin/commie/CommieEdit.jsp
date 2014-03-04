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
    
    <title>修改学生党员信息</title>
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
        if(!isNull("name","姓名"))
            return false;
        if(!isNull("branch","党支部"))
            return false;        
        if(!isNull("stuid","学号"))
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
  out.print("没有记录");
  }else{
  Commie commie=(Commie)list.get(0);
 
   %>
<BR>
<form name="form1" method="post" action="servlet/EditCommie">
  <table width="550" border="0" align="center" cellpadding="5" cellspacing="1" class="border">
    <tr class="tdbg">
      <td colspan="3" align="center" class="titlebg">修改党员信息</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="3"><strong>基本信息</strong></td>
      <td>学号：<%=commie.getStuid()%></td>
      <td>姓名：
      <input name="name" type="text" id="name" value="<%=commie.getName()%>" size="20"></td>
    </tr>
    <tr class="tdbg">
      <td>性别：
      <input name="sex" type="text" id="sex" value="<%=(commie.getSex()==null)?"":commie.getSex()%>" size="10"></td>
      <td>班级：
      <input name="banji" type="text" id="banji" value="<%=commie.getBanji()%>" size="20"></td>
    </tr>
    <tr class="tdbg">
      <td colspan="2">初始密码：
      <input name="pwd" type="text" id="pwd" size="20">（留空则保留不变）</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="2"><strong>党员信息</strong></td>
      <td>支部名称：
      <input name="branch" type="text" id="branch" value="<%=commie.getBranch()%>" size="20"></td>
      <td>职务：      
       <select name="post" id="post">
          <option value="9" <%if(commie.getPost().equals(9)){out.print("selected");}%>>普通党员</option>
          <option value="1" <%if(commie.getPost().equals(1)){out.print("selected");}%>>书记</option>
          <option value="2" <%if(commie.getPost().equals(2)){out.print("selected");}%>>组委</option>
          <option value="3" <%if(commie.getPost().equals(3)){out.print("selected");}%>>宣委</option>
          </select></td>
    </tr>
    <tr class="tdbg">
      <td>入党时间：
      <input name="addtime" type="text" id="addtime" value="<%=commie.getAddtime()%>" size="20"></td>
      <td>是否正式：<input name="sfzs" type="checkbox" id="sfzs" value="1" <%if (!(commie.getSfzs()==null)){out.print("checked");} %>>
      <input name="zzsj" type="text" id="zzsj" value="<%=(commie.getZzsj()==null)?"":commie.getZzsj()%>" size="14">（转正时间）</td>
    </tr>
    <tr class="tdbg">
      <td width="30" rowspan="5"><strong>档案信息</strong></td>
      <td>入党申请书： 
        <input name="rdsqs" type="checkbox" id="rdsqs" value="1"  <%if(!(commie.getRdsqs()==null)){out.print("checked");}%>></td>
      <td>函调： 
        <input name="hd" type="checkbox" id="hd" value="1" <%if(!(commie.getHd()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>入党志愿书： 
        <input name="rdzys" type="checkbox" id="rdzys" value="1" <%if(!(commie.getRdzys()==null)){out.print("checked");}%>></td>
      <td>自传： 
        <input name="zz" type="checkbox" id="zz" value="1" <%if(!(commie.getZz()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>党课结业证： 
        <input name="dkjyz" type="checkbox" id="dkjyz" value="1" <%if(!(commie.getDkjyz()==null)){out.print("checked");}%>></td>
      <td>半年总结： <input name="bnzj" type="checkbox" id="bnzj" value="1" <%if(!(commie.getBnzj()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>预备党员考察表： 
        <input name="ybdykcb" type="checkbox" id="ybdykcb" value="1" <%if(!(commie.getYbdykcb()==null)){out.print("checked");}%>></td>
      <td>全年总结： 
        <input name="qnzj" type="checkbox" id="qnzj" value="1" <%if(!(commie.getQnzj()==null)){out.print("checked");}%>></td>
    </tr>
    <tr class="tdbg">
      <td>转正申请书：
      <input name="zzsqs" type="checkbox" id="zzsqs" value="1" <%if(!(commie.getZzsqs()==null)){out.print("checked");}%>></td>
      <td>思想汇报：
      <input name="sxhb" type="text" id="sxhb" value="<%=commie.getSxhb()%>" size="15">
      篇</td>
    </tr>
    <tr class="tdbg">
      <td width="30"><strong>备注</strong></td>
      <td colspan="2">
      <textarea name="beizhu" cols="40" rows="4" id="beizhu"><%=commie.getBeizhu()%></textarea></td>
    </tr>
  </table>
  <BR>
<center><input type="submit" name="Submit" value="更新信息">
<input name="stuid" type="hidden" id="stuid" value="<%=commie.getStuid()%>">
</center>
</form>
<%
 }
 %>
</body>
</html>
