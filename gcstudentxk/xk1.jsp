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
<title>������Ϣ����ѧԺ����˶ʿѡ��ϵͳ</title>
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
			<h1 align="center"><br></h1><h1 align="center">������Ϣ����ѧԺ����˶ʿѡ��ϵͳ</h1>
	</div>	
	<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a class="active" href="index.jsp">��ҳ</a>
		<a href="#">�鿴֪ͨ</a>
		<a href="xk.jsp">ѡ��</a>
		<a href="">�鿴����</a>
		<a href=" ">�޸�����</a>
		<a href="">�鿴���</a>
		<a href="logout.jsp">�˳�ϵͳ</a>
		<br><br><br><br><br><br>
		</div>		
	</div>
	
	<div id="contentarea">
<form name="Xk" method="post" action="xk.jsp">
<%
 if(gc!=null){out.print(gc.getName()==null?"":gc.getName());}


%>ͬѧ����鿴��Ŀγ̣�<%=addid %>aaa<%=courseid %><select name="gccourse" onChange="getSelect();" id="gccourse">
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
<legend>�γ���Ϣ��</legend>

<label>�γ����ƣ�<input type="text" readonly="readonly" value="<%=(courseList.getTitle()==null?"":courseList.getTitle()) %>" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�γ����ͣ�<input type="text" readonly="readonly" value="<%=(courseList.getBeizhu()==null?"":courseList.getBeizhu()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>�ον�ʦ��<input type="text" readonly="readonly" value="<%=(courseList.getTeacher()==null?"":courseList.getTeacher()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѧ�֣�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value="<%=(courseList.getCredit()==null?"":courseList.getCredit()) %>"/></label><br>
<label>�Ͽ�ʱ�䣺<input type="text" readonly="readonly" value="<%=(courseList.getShijian()==null?"":courseList.getShijian()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�Ͽεص㣺<input type="text" readonly="readonly" value="<%=(courseList.getPlace()==null?"":courseList.getPlace()) %>"/></label><br>
<label>�̲ģ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value="<%=(courseList.getBook()==null?"":courseList.getBook()) %>"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѡ��������<input type="text" readonly="readonly" value=""/></label><br>
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="addid" name="addid" value="<%=courseid %>">
<input type="hidden" id="sid" name="sid" value="<%=gc.getId() %>">
<input type="submit" id="submit" name="submit" value="ѡ�ϸÿγ�">
</td>

</tr>
</table>
<%
   }else{
 %>
 <fieldset >
<legend>�γ���Ϣ��</legend>

<label>�γ����ƣ�<input type="text" readonly="readonly" value="" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�γ����ͣ�<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<label>�ον�ʦ��<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>ѧ�֣�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value=""/></label><br>
<label>�Ͽ�ʱ�䣺<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�Ͽεص㣺<input type="text" readonly="readonly" value=""/></label><br>
<label>�̲ģ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value=""/></label>&nbsp;&nbsp;&nbsp;&nbsp;
<label>�Ͽ�ѧ�ڣ�<input type="text" readonly="readonly" value=""/></label><br>

 
</fieldset>
<table align="right">
<tr align="right">
<td align="right">
<input type="hidden" id="" name="" value="">
<input type="submit" id="" name="" value="ѡ�ϸÿγ�">
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
			  <td><a style="font-size: 19px">��ѧ�ڵĿγ�����:</a></td>
			</tr>
			</table>
			<table width="100%" border="1" align="left" cellpadding="1" cellspacing="1" class="border">
			<tr align="center">	
					<td>
					<nobr>
						�γ�����
						</nobr>
					</td>
					<td>
					<nobr>
						����
						</nobr>
					</td>
					<td>
					<nobr>
						��ʦ</nobr>
					</td>
					<td>
					<nobr>
						ѧ��</nobr>
					</td>
					<td>
					<nobr>
						�Ͽεص�</nobr>
					</td>
					<td>
					<nobr>
						�Ͽ�ʱ��</nobr>
					</td>
					<td>
					<nobr>
						����</nobr>
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
						������α�</nobr>
					</td>
					<td>
					<nobr>
						<a href="del.jsp?gcxkid=<%=gcxk1.getId() %>">ɾ��</a></nobr>
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
			��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
	</div>


</div>
</body>
</html>