<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.eaie.admin.student.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.admin.student.*" %>

<html>
<head>
<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>		
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
	<script language = "JavaScript">
		function JumpMenu(targ,selObj,restore)
		{
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
			if (restore) selObj.selectedIndex=0;
		}
	</script>
<title>学生信息查询</title>
</head>

<body>
<%!
	List list;
	String sKeyWords,sType;
 %>
<%
		int curPage=(request.getParameter("curPage")==null?1:Integer.parseInt(request.getParameter("curPage")));	
		sKeyWords = request.getParameter("keyword");	
		sType = request.getParameter("type");		
	  	StudentList slist = new StudentList(); 
	  	list = slist.getStudentList(curPage,sType,sKeyWords);	
	  	 		
		Page pager = slist.getCurrentPage();		
		Iterator it =list.iterator();
	  	
 %>
<form name="form1" method="post" action="admin/student/StudentList.jsp">
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td class="tdbg"><table width="100%"  border="0" cellspacing="0" cellpadding="4">
        <tr>
          <td>&nbsp;<strong>简单查询：</strong>
		  <select name="type" id="type">
            <option value="stuid" <%if(sType!=null&&sType.equalsIgnoreCase("stuid")) out.println("selected"); %>>学号</option>
            <option value="name" <%if(sType!=null&&sType.equalsIgnoreCase("name")) out.println("selected"); %> >姓名</option>
            <option value="techang" <%if(sType!=null&&sType.equalsIgnoreCase("techang")) out.println("selected"); %>>特长</option>
            <option value="class" <%if(sType!=null&&sType.equalsIgnoreCase("class")) out.println("selected"); %>>班级</option>
            </select>
            <input name="keyword" type="text" id="keyword" size="30" value=<%=sKeyWords==null?"":sKeyWords %>>
            <input type="submit" name="Submit" value="查&nbsp;询"></td>
          <td width="200">
<%
	List classlist = StudentManage.getClasses();
	
 %>
		  <select name="banji" id="banji" onChange="JumpMenu('self',this,0)">
      		<option value="admin/student/StudentList.jsp">按班级筛选</option>
<%	for(int i =0 ;i<classlist.size();i++){   %>
			<option value="?type=class&keyword=<%=classlist.get(i).toString() %>" <%if(sKeyWords!=null&&sKeyWords.equalsIgnoreCase(classlist.get(i).toString())) out.println("selected"); %>><%=classlist.get(i).toString() %></option>
<%	} %> 
      		</select></td>
          <td width="100" align="center">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>

<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" class="titlebg">
      <td width="80">学号</td>
      <td>姓名</td>
      <td width="40">性别</td>
      <td>班级</td>
      <td>宿舍</td>
      <td>宿舍电话</td>
      <td>手机</td>
      <td>政治面貌</td>
      <td>困难</td>
      <td>特长</td>
    </tr>
<%
	while(it.hasNext()){			
		Student student = (Student)it.next();
 %>
    <tr align="center" class="tdbg" onMouseOver="this.style.backgroundColor='#BFDFFF'" onMouseOut="this.style.backgroundColor=''">
      <td width="80"><a href="admin/student/StudentInfo.jsp?stuid=<%=student.getStuid() %>"><%=student.getStuid() %></a></td>
      <td><%=student.getName()==null?"": student.getName()%></td>
      <td><%=student.getSex()==null?"":student.getSex() %></td>
      <td><%=student.getBanji()==null?"":student.getBanji() %></td>
      <td><%=student.getDorm()==null?"":student.getDorm() %></td>
      <td><%=student.getDormtel()==null?"":student.getDormtel() %></td>
      <td><%=student.getMobiletel()==null?"":student.getMobiletel() %></td>
      <td><%=student.getParty()==null?"":student.getParty() %></td>
      <td><%if(student.getIsaid()!=null&&student.getIsaid().equalsIgnoreCase("1")) out.println("是"); %></td>      
      <td><%=student.getTechang()==null?"": student.getTechang()%></td>
    </tr>
<% 
	}
%>
</table>
<form name="pageForm" action="" method="post">   
 	<table align="center" width="96%">
       <tr><td align="center">
       <input type="hidden" id="keyword" name="keyword" value=<%=sKeyWords==null?"":sKeyWords %>>  
       <input type="hidden" id="keyword" name="type" value=<%=sType==null?"":sType %>>       
       <%@include file="../common/Pager.jsp" %>    
       </td></tr> 
 	</table>
 </form>
</body>
</html>
