<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.quality.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
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
<link href="admin/css/style.css" rel="stylesheet" type="text/css">
<title>创新实验题目列表</title>
</head>
<body>
<%String type = request.getParameter("type");
	if(type==null)
	{
	return;
	}
%>
<%@ include file="/head.jsp" %>
<table width=782 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr align=left valign=top>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	    <td width="220" align=left valign=top height=100%><iframe id="left" name="left" height=100% width=100% bgcolor=#f8f9fb src="showleft.jsp?type=<%=type %>" frameborder="0" scrolling="no" width=220></iframe></td>
	    <td width="5" background="images/b-1.jpg" rowspan="100" align=left height=100%></td>
		<td width="556" height=100% valign=top align=right>
<table width="530"  border="0" align="center" cellpadding="0" cellspacing="0" valign=top>

   <tr>
    <td width="406" height="40"><img src="images/topic-dxscxsj.jpg" width="406" height="22"></td>
    <td width=37><img src="images/listmain-w1.jpg" align=right border="0"></td>
     <td height="30" style="font-size:15px" width=60 background="images/msg-back.jpg" align=right><a href="quality/login.jsp" class=message target="_blank">学生登录</a></td>
  </tr>
  <tr>
    <td width="110" align="right" colspan=3><a href="quality/ExpSub.jsp" class="maintext"><font color="#0000FF">提交题目</font></a></td>
  </tr>
  <tr> 
    <td align="center" class="main_title" colspan=3>创新实验题目列表</td> 
  </tr>
</table>
		
<%		
	int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
	ExpList elist = new ExpList();	
	List<Innovativelexp> list = elist.getList(curPage);
	Page pager = elist.getCurrentPage();		
	if(list.size()<1){	
		out.println("<center><h4>暂无实验信息</h4></center>");
		return;		
	}
%>



<table width="530"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#CCCCCC" class="maintext">
    <td height="28" align="center" width=40><strong>序号</strong></td>
    <td height="28" align="center"><strong>实验名称</strong></td>
    <td height="28" align="center"><strong>指导老师</strong></td> 
  </tr>
 <%
 	
 
	for(int i =0;i<list.size();i++){			
		Innovativelexp exp = list.get(i);		
 %>
  <tr bgcolor="<%=exp.getIspass()==null? "#FFFFFF":"#E1F2FC"%>" class="maintext">
    <td height="28" align="center" width=40><%=i+1%></td>
    <td height="28" align="center"><a href="quality/ExpDetail.jsp?id=<%=exp.getExpid() %>&type=2" target="_parent"><%=exp.getName() %></a></td>
    <td height="28" align="center"><%=exp.getTutor() %></td> 
  </tr>
<%
	}
 %>
 <br>
 <tr><td colspan=3><form name="pageForm" action="" method="post">
	    <table align="center" width=530>
			<tr>
				<td align="center">
					<%@include file="../admin/common/Pager.jsp"%>
				</td>
			</tr>
		</table>
   </form></td></tr>
</table>


  <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
	 
</table>
  
<jsp:include page="/foot.jsp" flush="true"/>
</body>
</html>
