<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>

<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.List"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

		<script language="JavaScript">
	
</script>


		<title>�γ���Ϣ</title>
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
					
			}			
			</script>	
		  
			
	</head>
	<%
		
		String hql = "From Gcteacher As Gt ";
		List listA = BasicDAO.queryByHql(hql);
	%>
	<body>
		<br>
		<BR>
		<form name="form1" method="post"
			action="admin/gcxkxt/gcxkcourse/GccourseSave.jsp">
			<table width="550" border="0" align="center" cellpadding="5"
				cellspacing="1" class="border">
				<tr class="tdbg">
					<td colspan="3" align="center" class="titlebg">
						�ϴ��γ���Ϣ
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;&nbsp;&nbsp;����
						<input name="title" type="text" id="title" size="20">
					</td>
					<td>
						�ον�ʦ��
						<select name="teacher">
							<%
								for (int j = 0; j < listA.size(); j++) {
									Gcteacher gcteacher = (Gcteacher) listA.get(j);
							%>
							<option value=<%=gcteacher.getName()%>>
								<%=gcteacher.getName()%></option>

								<%
									}
								%>
							
						</select>


					</td>
				</tr>

				<tr class="tdbg">
					<td>
						ѧ&nbsp;&nbsp;&nbsp; �֣�
						<input name="credit" type="text" id="credit">
					</td>

					<td>
						��&nbsp;&nbsp;&nbsp; �ģ�
						<input name="book" type="text">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						��&nbsp;&nbsp;&nbsp; �ȣ�
						<select name = "nian">
						<option value="2009��" selected>2009��</option>
						<option value="2009��">2009��</option>
						<option value="2010��">2010��</option>
						<option value="2010��">2010��</option>
						<option value="2011��">2011��</option>
				        <option value="2011��">2011��</option>
				        <option value="2012��">2012��</option>
				         <option value="2012��">2002��</option>
				        <option value="2013��">2013��</option>
				        <option value="2013��">2013��</option>
						</select>
					</td>
					<td>
						�Ͽ�ʱ�䣺
						<input name="shijian" type="text">
					</td>
				</tr>
				<tr class="tdbg">
					<td>
						�Ͽεص㣺&nbsp;
						<input name="place" type="text">
					</td>
					<td>
						������Ϣ��
						<input name="test" type="text">
					</td>
				</tr>

				<tr class="tdbg">
					<td colspan="2">
						<div style="float: middle">
							��ע��
						</div>
						<textarea name="beizhu" rows="4" cols="68"> </textarea>
				</tr>


			</table>
			<BR>
			<center>
				<input type="submit" name="Submit" value="ȷ���ϴ�"
					onclick="return formCheck();">
				&nbsp;&nbsp;&nbsp;
				<input type="button" name="back" value="��&nbsp;&nbsp;&nbsp;&nbsp;��"
					onClick="window.location.href='Gcchoose.jsp'">
			</center>
		</form>
	</body>





</html>