<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.dbmanage.Vote" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:useBean id="vote" class="com.eaie.dbmanage.Votepaper" scope="page"/>
<jsp:useBean id="item" class="com.eaie.dbmanage.Vote" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���ͶƱϸ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function checkForm()
    {
        if(!isNull("subject","����"))
            return false;
        if(!isTooLong("subject",250,"����"))
            return false;   
        if(!isTooLong("select1",100,"ѡ��1"))
            return false;
        if(!isTooLong("select2",100,"ѡ��2"))
            return false;
        if(!isTooLong("select3",100,"ѡ��3"))
            return false;
        if(!isTooLong("select4",100,"ѡ��4"))
            return false;
        if(!isTooLong("select5",100,"ѡ��5"))
            return false;
        if(!isTooLong("select6",100,"ѡ��6"))
            return false;
        if(!isTooLong("select7",100,"ѡ��7"))
            return false;
        if(!isTooLong("select8",100,"ѡ��8"))
            return false;
        if(!isNull("orderid","�������"))
            return false;
        return true;
    }
    </script>

  </head>
  
  <body>
    <% String action = request.getParameter("action");
       if(action.equals("add")){
       		int paperid = Integer.parseInt(request.getParameter("paperid"));
       		vote = VoteImp.getVoteById(paperid);
       		if(vote!=null){
     %>
  <form name="AddItem" action="servlet/VoteItem" onSubmit="return checkForm()" method="post">
  <table width="80%"  border="0" align="center" cellpadding="4" cellspacing="1" class="border" style="margin-top:30px">
    <tr align="center">
      <td colspan="3" class="titlebg">���ͶƱ����</td>
    </tr>
    <tr class="tdbg">
      <td>�ʾ���⣺</td>
      <td colspan="2"><%=vote.getPapername()%></td>
    </tr>
    <tr class="tdbg">
      <td>���⣺</td>
      <td colspan="2"><textarea name="subject" cols="50" rows="4" id="subject"></textarea></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��1��</td>
      <td><input name="select1" type="text" id="select1" size="40"></td>
      <td>Ʊ����
      <input name="answer1" type="text" id="answer1" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��2��</td>
      <td><input name="select2" type="text" id="select2" size="40"></td>
      <td>Ʊ����
      <input name="answer2" type="text" id="answer2" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��3��</td>
      <td><input name="select3" type="text" id="select3" size="40"></td>
      <td>Ʊ����
      <input name="answer3" type="text" id="answer3" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��4��</td>
      <td><input name="select4" type="text" id="select4" size="40"></td>
      <td>Ʊ����
      <input name="answer4" type="text" id="answer4" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��5��</td>
      <td><input name="select5" type="text" id="select5" size="40"></td>
      <td>Ʊ����
      <input name="answer5" type="text" id="answer5" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��6��</td>
      <td><input name="select6" type="text" id="select6" size="40"></td>
      <td>Ʊ����
      <input name="answer6" type="text" id="answer6" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��7��</td>
      <td><input name="select7" type="text" id="select7" size="40"></td>
      <td>Ʊ����
      <input name="answer7" type="text" id="answer7" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��8��</td>
      <td><input name="select8" type="text" id="select8" size="40"></td>
      <td>Ʊ����
      <input name="answer8" type="text" id="answer8" value="0" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ͶƱ���ͣ�</td>
      <td colspan="2"><select name="votetype" id="votetype">
        <option value="<%=Byte.parseByte("0")%>" selected>��ѡ</option>
        <option value="<%=Byte.parseByte("1")%>">��ѡ</option>
      </select></td>
    </tr>
    <tr class="tdbg">
      <td>������ţ�</td>
      <td colspan="2"><input name="orderid" type="text" id="orderid" size="10"></td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="3"><input type="submit" name="submit" value="�� ��" class="button">
      <input type="reset" name="reset" value="�� ��" class="button">
      <input type="button" name="back" value="�� ��" class="button" onClick="history.back()">
	  <input name="id" type="hidden" id="paperid" value="<%=paperid%>">
	  <input name="action" type="hidden" id="action" value="add"></td>
    </tr>
  </table>
  </form>
  <%} 
  else{out.println("error,need change");}
  }else if(action.equals("edit")){
  		int subid = Integer.parseInt(request.getParameter("subid"));
  		item = VoteImp.getItemById(subid);
  		if(item==null){
  			out.println("error,need change");
  	    }
  	    else{
  %>
  <form name="EditItem" action="servlet/VoteItem" onSubmit="return checkForm()" method="post">
  <table width="80%"  border="0" align="center" cellpadding="4" cellspacing="1" class="border" style="margin-top:30px">
    <tr align="center">
      <td colspan="3" class="titlebg">���ͶƱ����</td>
    </tr>
    <tr class="tdbg">
      <td>�ʾ���⣺</td>
      <td colspan="2"><%=vote.getPapername()%></td>
    </tr>
    <tr class="tdbg">
      <td>���⣺</td>
      <td colspan="2"><textarea name="subject" cols="50" rows="4" id="subject"><%=item.getSubject() %></textarea></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��1��</td>
      <td><input name="select1" type="text" id="select1" size="40" value=<%=item.getSelect1()==null?"":item.getSelect1() %>></td>
      <td>Ʊ����
      <input name="answer1" type="text" id="answer1" value="<%=item.getAnswer1() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��2��</td>
      <td><input name="select2" type="text" id="select2" size="40" value=<%=item.getSelect2()==null?"":item.getSelect2() %>></td>
      <td>Ʊ����
      <input name="answer2" type="text" id="answer2" value="<%=item.getAnswer2() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��3��</td>
      <td><input name="select3" type="text" id="select3" size="40" value=<%=item.getSelect3()==null?"":item.getSelect3() %>></td>
      <td>Ʊ����
      <input name="answer3" type="text" id="answer3" value="<%=item.getAnswer3() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��4��</td>
      <td><input name="select4" type="text" id="select4" size="40"  value=<%=item.getSelect4()==null?"":item.getSelect4() %>></td>
      <td>Ʊ����
      <input name="answer4" type="text" id="answer4" value="<%=item.getAnswer4() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��5��</td>
      <td><input name="select5" type="text" id="select5" size="40"  value=<%=item.getSelect5()==null?"":item.getSelect5() %>></td>
      <td>Ʊ����
      <input name="answer5" type="text" id="answer5" value="<%=item.getAnswer5() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��6��</td>
      <td><input name="select6" type="text" id="select6" size="40" value=<%=item.getSelect6()==null?"":item.getSelect6() %>></td>
      <td>Ʊ����
      <input name="answer6" type="text" id="answer6" value="<%=item.getAnswer6() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��7��</td>
      <td><input name="select7" type="text" id="select7" size="40" value=<%=item.getSelect7()==null?"":item.getSelect7() %>></td>
      <td>Ʊ����
      <input name="answer7" type="text" id="answer7" value="<%=item.getAnswer7() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ѡ��8��</td>
      <td><input name="select8" type="text" id="select8" size="40"  value=<%=item.getSelect8()==null?"":item.getSelect8() %>></td>
      <td>Ʊ����
      <input name="answer8" type="text" id="answer8" value="<%=item.getAnswer8() %>" size="8"></td>
    </tr>
    <tr class="tdbg">
      <td>ͶƱ���ͣ�</td>
      <td colspan="2"><select name="votetype" id="votetype">
      <%if(item.getVotetype().toString().equals("0")){ %>
        <option value="<%=Byte.parseByte("0")%>" selected>��ѡ</option>
        <option value="<%=Byte.parseByte("1")%>">��ѡ</option>
      <%}else{ %>
        <option value="<%=Byte.parseByte("0")%>">��ѡ</option>
        <option value="<%=Byte.parseByte("1")%>" selected>��ѡ</option>
      <%} %>
      </select></td>
    </tr>
    <tr class="tdbg">
      <td>������ţ�</td>
      <td colspan="2"><input name="orderid" type="text" id="orderid" size="10" value="<%=item.getOrderid() %>"></td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="3"><input type="submit" name="submit" value="�� ��" class="button">
      <input type="reset" name="reset" value="�� ��" class="button">
      <input type="button" name="back" value="�� ��" class="button" onClick="history.back()">
	  <input name="action" type="hidden" id="action" value="edit">
	  <input name="id" type="hidden" id="id" value="<%=item.getVotepaper().getPaperid()%>">
	  <input name="subid" type="hidden" id="subid" value="<%=subid%>"></td>
    </tr>
  </table>
  </form>
  <%    }
  } %>
  </body>
</html>
