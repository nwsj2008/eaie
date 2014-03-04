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
   
  String id = request.getParameter("id");
    
  Gcxkopen gcxkopen = new Gcxkopen();
  gcxkopen = (Gcxkopen)BasicDAO.queryById(Gcxkopen.class,1);
  String openxt = gcxkopen.getOpenxt();
  String term = gcxkopen.getTerm();
  String nian="";
  if(openxt.equals("0"))
    out.println(JavaScript.alertandRedirect("现在不是选课时间", "index.jsp"));
  if(term.equals("1"))
    nian = "2009上";
  else if(term.equals("2"))
    nian = "2009下";
  else if(term.equals("3"))
    nian = "2010上"; 
  else if(term.equals("4"))
    nian = "2010下"; 
  else if(term.equals("5"))
    nian = "2011上"; 
  else if(term.equals("6"))
    nian = "2011下"; 
  else if(term.equals("7"))
    nian = "2012上"; 
  else if(term.equals("8"))
    nian = "2012下"; 
  else if(term.equals("9"))
    nian = "2013上"; 
  else if(term.equals("10"))
    nian = "2013下"; 
  else if(term.equals("11"))
    nian = "2014上";  
  else if(term.equals("12"))
    nian = "2014下";
    
    int sid;
    //往GCXK表中增加sid tid
 
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
   if(gc!=null){
 sid=gc.getId();
 //String selectid=null;
 String HQL_GET_COURSE="From Gccourse as gccourse where gccourse.nian= '"+nian+"'";
 List list = BasicDAO.queryByHql(HQL_GET_COURSE);
 //int dd=Integer.parseInt(addid);
 
  
%>
<html>

<head>
<title>选定本学期课程</title>
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
		<a href="NewsList.jsp">查看通知</a>
		<a href="xk.jsp">选定本学期课程</a>
		<a href="showCourse.jsp">显示本学期课程</a>
		<a href="showScore.jsp">查看分数</a>
		<a href="help.jsp">选课帮助</a>
		<a href="logout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
<div id="contentarea">

<form action="">
<table  border="0" align="center" cellpadding="1" cellspacing="1" >
			<tr align="center" class="titleheader">
			  <td><a style="font-size: 20px">本学期的课程如下:</a></td>
			</tr>
			</table>
			<br>
			<table width="100%" border="1" align="left" cellpadding="1" cellspacing="1" class="border">
			<tr align="center">	
					<td>
					<nobr>
						课程名称
						</nobr>
					</td>
					<td>
					<nobr>
						上课地点
						</nobr>
					</td>
					<td>
					<nobr>
						教师
						</nobr>
					</td>
					<td>
					<nobr>
						学分</nobr>
					</td>
					<td>
					<nobr>
						操作</nobr>
					</td>
			</tr>
			<%
			    String COURSE="From Gccourse as gccourse where gccourse.nian= '"+nian+"'";
			    List list1 = BasicDAO.queryByHql(HQL_GET_COURSE);
			    if(list1.size()!=0)
			    {
			    for(int i=0;i<list1.size();i++)
			    {
			      Gccourse course1 = new Gccourse();
			      course1 = (Gccourse)list1.get(i);
			      
			      String HQL_GET_NUM="From Gcxk as gc where gc.tid='"+course1.getId()+"'";
                  List gclist = BasicDAO.queryByHql(HQL_GET_NUM);
                  int num=gclist.size();
			 %>
			  <tr align="center">	
					<td>
					<nobr>
						<a href="showInfo.jsp?courseid=<%=course1.getId() %>"><%if((course1.getTitle()==null)&&(course1.getTitle()==""))
						        out.print(" ");
						        else out.print(course1.getTitle());
						 %></a>
						</nobr>
					</td>
					<td>
					<nobr>
						<a><%if((course1.getPlace()==null)&&(course1.getPlace()==""))
						        out.print(" ");
						        else out.print(course1.getPlace());
						 %></a>
						</nobr>
					</td>
					<td>
					<nobr>
						<a><%if((course1.getTeacher()==null)&&(course1.getTeacher()==""))
						        out.print(" ");
						        else out.print(course1.getTeacher());
						 %></a>
						</nobr>
					</td>
					<td>
					<nobr>
						<a><%if((course1.getCredit()==null)&&(course1.getCredit()==""))
						        out.print(" ");
						        else out.print(course1.getCredit());
						 %></a>
						</nobr>
					</td>
						<td border="1">
					<nobr>
						<a href="addSave.jsp?addid=<%=course1.getId() %>&&sid=<%=sid %>">选上该课程</a>
						</nobr>
					</td>
			</tr>
		      <%
		      }
		      }
		      
		       %>
			</table>	
		</form>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<%
   
   }
 %>



	</div>
	
	
	</div>
	
	<div id="footer">
			版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
	</div>


</div>
<%
  session.setAttribute("GCUSER",gc);
 %>
</body>
</html>