<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.xk.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

  Gcstudent gc = (Gcstudent)session.getAttribute("GCUSER");
  if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
  String id = request.getParameter("id");
  String courseid=request.getParameter("courseid");
  String addid=request.getParameter("addid");
  String gcxkid=request.getParameter("gcxkid");
  //Gcxk gcxk=new Gcxk();
  Gccourse course=new Gccourse();
 // if(addid!=null)
  //{
 //     gcxk.setSid(gc.getId());  
 //     gcxk.setTid(Integer.parseInt(addid));  
 //     BasicDAO.save(gcxk); 
 //     addid=null;
 // }
 if(gc==null)
   {
      response.sendRedirect("login.jsp");
   }
   else{
 int sid=gc.getId();
 //String selectid=null;
 List list = BasicDAO.queryByHql("From Gccourse");
 //int dd=Integer.parseInt(addid);
 
  
%>
<html>

<head>
<title>电子信息工程学院工程硕士选课系统</title>
<LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
<script language=javascript>
         function getSelect(){


           var factor=document.getElementById('gccourse');
           var fa=factor.selectedIndex;
           username= factor.options[fa].value;

           user=document.getElementById('gccourse').options[document.getElementById('gccourse').selectedIndex].text;
           document.getElementById('courseid').value = username;
           document.all.Xk.submit();
     }
         function add(){
           var factor=document.getElementById('courseid');
           var tid= factor.value;
           document.getElementById('addid').value = tid;
           document.all.add.submit();
        
     }
		</script>
</head>

<body>
<%=addid %>
<div id="page">
	<div id="header">
			<h1 align="center"><br></h1><h1 align="center">电子信息工程学院工程硕士选课系统</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">首页</a>
		<a href="#">查看通知</a>
		<a href="xk.jsp">选课</a>
		<a href="">查看申请</a>
		<a href=" ">修改申请</a>
		<a href="">查看结果</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
<form name="Xk" method="post" action="xk.jsp">
<%
 if(gc!=null){out.print(gc.getName()==null?"":gc.getName());}


%>同学，请查看你的课程：<%=addid %>aaa<%=courseid %><select name="gccourse" onChange="getSelect();" id="gccourse">
<option  value=""></option> 
<%
   for(int i=0;i<list.size();i++)
   {
   course = (Gccourse)list.get(i);
   //selectid=courseid;
   if(course.getTitle()!=null){
 %>
<option  value="<%=course.getId() %>"><%=(course.getTitle()+ '('+course.getBeizhu()+')')%></option> 

<%
}
}
 %>

</select>
<input type='hidden' name='courseid' id='courseid' value=''> 

</form>
<form name="add" method="post" action="addSave.jsp" >
<%
    if(courseid!=null)
    {
     
    Gccourse courseList = (Gccourse)BasicDAO.queryById(Gccourse.class,Integer.parseInt(courseid));
 %>
<fieldset >
<legend>课程信息：</legend>

<label>课程名称：<input type="text" readonly="readonly" value="<%=(courseList.getTitle()==null?"":courseList.getTitle()) %>" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>课程类型：<input type="text" readonly="readonly" value="<%=(courseList.getBeizhu()==null?"":courseList.getBeizhu()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>任课教师：<input type="text" readonly="readonly" value="<%=(courseList.getTeacher()==null?"":courseList.getTeacher()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>学分：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value="<%=(courseList.getCredit()==null?"":courseList.getCredit()) %>"/></label><br>
<label>上课时间：<input type="text" readonly="readonly" value="<%=(courseList.getShijian()==null?"":courseList.getShijian()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>上课地点：<input type="text" readonly="readonly" value="<%=(courseList.getPlace()==null?"":courseList.getPlace()) %>"/></label><br>
<label>教材：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value="<%=(courseList.getBook()==null?"":courseList.getBook()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>选课人数：<input type="text" readonly="readonly" value=""/></label><br>
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="addid" name="addid" value="<%=courseid %>">
<input type="hidden" id="sid" name="sid" value="<%=gc.getId() %>">
<input type="submit" id="submit" name="submit" value="选上该课程">
</td>

</tr>
</table>
<%
   }else{
 %>
 <fieldset >
<legend>课程信息：</legend>

<label>课程名称：<input type="text" readonly="readonly" value="" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>课程类型：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>任课教师：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>学分：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value=""/></label><br>
<label>上课时间：<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>上课地点：<input type="text" readonly="readonly" value=""/></label><br>
<label>教材：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>上课学期：<input type="text" readonly="readonly" value=""/></label><br>

 
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="" name="" value="">
<input type="submit" id="" name="" value="选上该课程">
</td>

</tr>
</table>
<%
   }
   }
 %>
	</form>
	<br>
<form action="">

<table  border="0" align="center" cellpadding="1" cellspacing="1" >
			<tr align="center" class="titleheader">
			  <td><a style="font-size: 19px">本学期的课程如下:</a></td>
			</tr>
			</table>
			<table width="100%" border="1" align="left" cellpadding="1" cellspacing="1" class="border">
			<tr align="center">	
					<td>
					<nobr>
						课程名称
						</nobr>
					</td>
					<td>
					<nobr>
						类型
						</nobr>
					</td>
					<td>
					<nobr>
						教师</nobr>
					</td>
					<td>
					<nobr>
						学分</nobr>
					</td>
					<td>
					<nobr>
						上课地点</nobr>
					</td>
					<td>
					<nobr>
						上课时间</nobr>
					</td>
					<td>
					<nobr>
						操作</nobr>
					</td>
			</tr>
			<%
			    String HQL_GET_SID="From Gcxk as gcxk where gcxk.sid= '"+gc.getId()+"'";
			    List list = BasicDAO.queryByHql(HQL_GET_SID);
			  
			    if(list.size()!=0)
			    {
			    for(int i=0;i<list.size();i++)
			    {
			      Gcxk gcxk1 = (Gcxk)list.get(i);
			      int tid =gcxk1.getTid();
			      Gccourse course1 = (Gccourse)BasicDAO.queryById(Gccourse.class,tid);
			 %>
			  <tr align="center">	
					<td>
					<nobr>
						<%=course1.getTitle()==null?"":course1.getTitle() %>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getBeizhu()==null?"":course1.getBeizhu()%>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getTeacher()==null?"":course1.getTeacher() %>
						</nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getCredit()==null?"":course1.getCredit() %></nobr>
					</td>
					<td>
					<nobr>
						<%=course1.getPlace()==null?"":course1.getPlace() %></nobr>
					</td>
					<td>
					<nobr>
						详情见课表</nobr>
					</td>
					<td>
					<nobr>
						<a href="del.jsp?gcxkid=<%=gcxk1.getId() %>">删除</a></nobr>
					</td>
			</tr>
		      <%
		      }
		      }
		      
		       %>

			</table>	
		</form>


</form>
	</div>
	
	
	</div>
	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
</body>
</html>