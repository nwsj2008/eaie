<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="com.eaie.gcxkxt.course.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language = "JavaScript">
		
			
</script>
		
		
		<title>�޸Ŀγ���Ϣ</title>
		<base href="<%=basePath%>">
		<link href="admin/css/admin_style.css" rel="stylesheet"
			type="text/css">
		<script language="JavaScript" src="js/calendar.js"></script>
		<script language="JavaScript" src="js/lecture.js"></script>
		<script language=javascript> 
		   function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"����Ϊ��!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  	
		function formCheck(){
			//return false;
			if(!isNull("title","�γ�����")){			
				return false;
			}	
			if(!isNull("credit","ѧ��")){			
				return false;
			}	
			if(!isNull("book","�̲���Ϣ")){			
				return false;
			}	
			if(!isNull("shijian","�Ͽ�ʱ��")){			
				return false;
			}	
			if(!isNull("place","�Ͽεص�")){			
				return false;
			}	
			if(!isNull("test","������Ϣ")){			
				return false;
			}		
			}			
			</script>	
	</head>

<%
  String idString=request.getParameter("id");
  int id=Integer.parseInt(idString);
  Gccourse gccourse = (Gccourse)BasicDAO.queryById(Gccourse.class, id);
   String hql = "From Gcteacher As Gt ";
  List listA = BasicDAO.queryByHql(hql);
 %>
 <body>
		<BR>
		<form name="form1" method="post" action="admin/gcxkxt/gcxkcourse/GccourseUpdate.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						�༭�γ���Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td width="30" rowspan="7">
						<strong>������Ϣ</strong>
						<input name="id" id="id" type="hidden" value="<%=gccourse.getId()%>">
					</td>
					
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;�̣�
						
						<input name="title" type="text" id="title"  size="20" value="<%=(gccourse.getTitle()==null)?"":gccourse.getTitle()%>">
					</td>
					<td> 
						�ον�ʦ�� 
						<select name="teacher">
							
							<option value=<%=gccourse.getTeacher()%> selected>
								<%=gccourse.getTeacher()%></option>

								<%
								for (int j = 0; j < listA.size(); j++) {
									Gcteacher gcteacher = (Gcteacher) listA.get(j);
							//if(gcteacher.getName()==gccourse.getTeacher()){
							%>
									<option value=<%=gcteacher.getName()%> >
								<%=gcteacher.getName()%></option>
								<%
								}
								%>
							
						</select>
					</td>
				</tr>	
				
				<tr class="tdbg">
					<td >ѧ &nbsp;&nbsp;&nbsp;�֣� 
					<input name="credit"  cols="62" id="credit" value="<%=(gccourse.getCredit() == null) ? ""
						: gccourse.getCredit()%>">	
						</td>	
				
					<td > 
				��&nbsp;&nbsp;&nbsp;&nbsp;�ģ� 
					<input name="book" value="<%=(gccourse.getBook()== null) ? ""
						: gccourse.getBook()%>">	
						</td>			
				</tr>
				<tr class="tdbg">
					<td>
				��&nbsp;&nbsp;&nbsp; �ȣ� 
				<select name = "nian">
				        <option value=<%=gccourse.getNian()%> >
								<%=gccourse.getNian()%></option>
						<option value="2009��">2009��</option>
						<option value="2009��">2009��</option>
						<option value="2010��">2010��</option>
						<option value="2010��">2010��</option>
						<option value="2011��">2011��</option>
				        <option value="2011��">2011��</option>
				        <option value="2012��">2012��</option>
				         <option value="2012��">2012��</option>
				        <option value="2013��">2013��</option>
				        <option value="2013��">2013��</option>
						</select>
						</td >
						<td> 
						�Ͽ�ʱ�䣺 
					<input name="shijian" type="text"  value="<%=(gccourse.getShijian() == null) ? ""
						: gccourse.getShijian()%>">
						</td>	
				</tr>
				<tr class="tdbg">
				<td > 
						�Ͽεص㣺&nbsp; 
			<input name="place" type="text"  value="<%=(gccourse.getPlace() == null) ? ""
						: gccourse.getPlace()%>">
						</td>	
				<td> 
                     ������Ϣ��&nbsp; 
					<input name="test" type="text"  value="<%=(gccourse.getTest() == null) ? ""
						: gccourse.getTest()%>">
				</td>	
			</tr>		
			 
					<tr class="tdbg">
					<td colspan="2">
					<div style="float:middle">
						��ע��
						</div>
						<textarea name="beizhu" rows="4" cols="62" ><%=(gccourse.getBeizhu() == null) ? ""
						: gccourse.getBeizhu()%>
						</textarea>	
						
				</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���޸�" onclick="return formCheck();">&nbsp;&nbsp;&nbsp;
				<input type="button" name="back"  value="��&nbsp;&nbsp;&nbsp;&nbsp;��" onClick="window.location.href='Gcchoose.jsp'">
			</center>
		</form>
	</body>

</html>