<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.admin.vote.VoteImp" %>
<%@ page import="com.eaie.dbmanage.Votepaper" %>
<%@ page import="com.eaie.admin.vote.VotePage" %>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="vote" class="com.eaie.dbmanage.Votepaper" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="admin/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<script language="javascript" src="js/basicJS.js"></script>

  </head>
  
  <body>
 
    <form name="voteList" method="post" action="admin/vote/BulkDel.jsp?type=vote" onSubmit="return checkBulk()">
	<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border" style="margin-top:30px">
  		<tr align="center" class="titlebg">
    		<td width="35">ѡ��</td>
    		<td width="45">���</td>
    		<td>�ʾ����</td>
    		<td width="100">ͶƱ������</td>
    		<td width="100">����</td>
    	</tr> 	
 	<% 	int curPage = request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage"));
 	    VotePage list = new VotePage();
 	    List nlist = list.getList(curPage);
   		if(!nlist.isEmpty()){
        Iterator it = nlist.iterator();
        while (it.hasNext()) {
            vote = (Votepaper)it.next();
    %>
  		<tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'">
    		<td width="35" align="center"><input name="ele" type="checkbox" id="del" value="<%=vote.getPaperid()%>"></td>
    		<td width="45" align="center"><%=(vote.getIsselected()==null?"":"����")%></td>
    		<td><a href="admin/vote/VoteItems.jsp?id=<%=vote.getPaperid()%>"><%=vote.getPapername()%></a></td>
    		<%int num = VoteImp.getItemNum(vote.getPaperid()); %>
    		<td width="100" align="center"><%=num%></td>
    		<td width="100" align="center"><a href="admin/vote/AddVote.jsp?id=<%=vote.getPaperid()%>&action=edit">�༭</a>&nbsp;&nbsp;<a href="/eaie/servlet/SerVote?id=<%=vote.getPaperid()%>&action=del" onClick="{if(confirm('ȷ��ɾ�����ʾ��������Ļ��ʾ������е���Ŀ����ɾ����')){return true;}return false;}">ɾ��</a></td>
   	    </tr>
    <%} %>
	</table>
	<table width="100%"  border="0" align="center" cellpadding="6" cellspacing="0">
  		<tr>
    		<td><input name="checkAll" type="checkbox" id="checkAll" onPropertyChange="selAll()">
     		 ѡ�������ʾ�&nbsp;&nbsp;
      		<input type="submit" class="button" name="Submit2" value="ɾ��ѡ�е��ʾ�" onClick="{if(confirm('ȷ��ɾ��ѡ�е��ʾ��������Ļ��ʾ������е���Ŀ����ɾ����')){return true;}return false;}"></td>
    	<td align="right"><input type="button" name="Submit2" class="button" value="��ӵ����ʾ�" onClick="location.href='AddVote.jsp'">
    &nbsp;&nbsp;</td>
  		</tr>
	</table>
	</form>
	
	<form name="pageForm" action="admin/vote/VoteList.jsp" method="post">
	<table width="100%">
    	<tr><td align="center"><%@include file="/admin/common/PageMan.jsp" %></td></tr>
    </table>
    </form>
  
	<%
	 }
	 else{out.println("<div align=center><strong>����Ŀ��û�м�¼<strong></div>");}

	%>
  </body>
</html>
