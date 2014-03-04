<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>

<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>电子信息工程学院工程硕士招生系统</title>
		<LINK REL=StyleSheet HREF="../gcssstyle.css" TYPE="text/css"
			MEDIA=screen>
		<script language=javascript> 
		   function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"不能为空!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  	
		function formCheck(){
			//return false;
			if(!isNull("fskc","复试课程")){			
				return false;
			}	
			if(!isNull("tele","联系电话")){			
				return false;
			}				
			
		}		
		</script>
	</head>
	<%
		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Gcss gcssstudent where gcssstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Gcss gcssstudent = (Gcss) list.get(0);
	%>
	<body>
		<div id="page">
			<div id="header">
				<h1 align="center">
					电子信息工程学院工程硕士招生系统
				</h1>
			</div>
			<div id="mainarea">
	<div id="sidebar">
		<div id="sidebarnav">
		<br><br>
		<a href="../index.jsp">首页</a>
		<a href="../newslist.jsp">查看复试通知</a>
		<a href="../cscj.jsp">查看GCT成绩</a>
		<a class="active" href="fskcAdd.jsp">申报复试课程</a>
		<a href="../lqjg.jsp">查看录取结果</a>
		<a href="../lianxi.jsp">联系我们</a>
		<a href="../gcsslogout.jsp">退出系统</a>
		<br><br><br><br><br><br>
		</div>		
	</div>

				<div id="contentarea">
					<form name="form1" method="post" action="fskcUpdate.jsp" >

						<br>
						<font size=3 face="黑体">
						<table align="center">

							<tr class="tdbg" height="50px">
								<td width="30">

									<input name="id" id="id" type="hidden" value="<%=id%>">
								</td>
							<tr class="tdbg" height="50px">
							    <td align="center">
									课程名称：
								</td>
								<td>
									<input type="radio" name="fskc" value="1" checked="checked">
									通信系统原理 
									<input type="radio" name="fskc" value="2">
									自动控制原理
									<input type="radio" name="fskc" value="3">
									计算机网络及其应用
								</td>
							</tr>
							
							<tr height="50px">
								<td>
									联系电话：
								</td>
								<td>
									<input name="tele" type="text" id="tele" size="25">
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						  <tr>
						  	<td colspan=2 align="center">
						  	
							<input type="submit" name="Submit" value="提&nbsp;&nbsp;交"
								onclick="return formCheck();">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="Submit2" type="reset" class="submitinput"
								value="重&nbsp;&nbsp;置">
							</td>
						 </tr>
						</table>
						</font>
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
	<%
		}
	%>
</html>