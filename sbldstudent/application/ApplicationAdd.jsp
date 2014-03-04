<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.sbld.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.common.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>电子信息工程学院硕博连读招生系统</title>
		<LINK REL=StyleSheet HREF="../sbldstyle.css" TYPE="text/css"
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
			if(!isNull("name","姓名")){			
				return false;
			}	
			if(!isNull("number","学号")){			
				return false;
			}				
			if(!isNull("master","硕士专业")){			
				return false;
			}	
			if(!isNull("doctor","拟报博士专业")){			
				return false;
			}	
			if(!isNull("masterTeacher","原硕导")){			
				return false;
			}	
			if(!isNull("doctorTeacher","拟报博导")){			
				return false;
			}
			if(!isNull("tel","联系方式")){			
				return false;
			}
			if(!isNull("score","入学成绩")){			
				return false;
			}	
			if(!isNull("cjpm","学位课加权成绩排名")){			
				return false;
			}			
		}		
		</script>
	</head>
	<%
		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Sbld sbldstudent where sbldstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Sbld sbldstudent = (Sbld) list.get(0);
	%>
	<body>
		<div id="page">
			<div id="header">
				<h1 align="center">
					电子信息工程学院硕博连读招生系统
				</h1>
			</div>
			<div id="mainarea">
				<div id="sidebar">
					<div id="sidebarnav">
						<br>
						<br>
						<a class="active" href="../index.jsp">首页</a>
						<a href="../newslist.jsp">查看通知</a>
						<a href="ApplicationAdd.jsp">提交申请</a>
						<a href="ApplicationInfo.jsp">查看申请</a>
						<a href="ApplicationEdit.jsp">修改申请</a>
						<a href="../result.jsp">查看结果</a>
						<a href="../sbldLogout.jsp">退出系统</a>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</div>
				</div>

				<div id="contentarea">
					<form name="form1" method="post" action="ApplicationUpdate.jsp">

						<h2>
							提交申请
						</h2>
						<table align="center">

							<tr class="tdbg">
								<td width="30">

									<input name="id" id="id" type="hidden" value="<%=id%>">
								</td>
							<tr>
								<td>
									姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
								</td>
								<td>
									<input name="name" type="text" id="name" size="30">
								</td>
							</tr>
							<tr>
								<td>
									学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
								</td>
								<td>
									<input name="number" type="text" id="number" size="30">
								</td>
							<tr>
								<td>
									性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
								</td>
								<td>
									<input type="radio" checked="checked" name="sex" value="male">
									男性 &nbsp;&nbsp;&nbsp;
									<input type="radio" name="sex" value="female">
									女性
								</td>
							</tr>
							<tr>
								<td>
									硕士专业：
								</td>
								<td>
									<input name="master" type="text" id="master" size="30">
								</td>
							</tr>
							<tr>
								<td>
									拟报博士专业：
								</td>
								<td>
									<input name="doctor" type="text" id="doctor" size="30">
								</td>
							</tr>
							<tr>
								<td>
									原硕导：
								</td>
								<td>
									<input name="masterTeacher" type="text" id="masterTeacher"
										size="30">
								</td>
							</tr>
							<tr>
								<td>
									拟报博导：
								</td>
								<td>
									<input name="doctorTeacher" type="text" id="doctorTeacher"
										size="30">
								</td>
							</tr>
							<tr>
								<td>
									联系方式：
								</td>
								<td>
									<input name="tel" type="text" id="tel"
										size="30">
								</td>
							</tr>
							<tr>
								<td>
									入学成绩：
								</td>
								<td>
									<input name="score" type="text" id="score" size="30">
								</td>
							</tr>
							<tr>
								<td>
									学位课加权成绩排名：
								</td>
								<td>
									<input name="cjpm" type="text" id="cjpm" size="30">
								</td>
							</tr>
							<tr>
								<td width="60">
									备注： (限制在100字内)
								</td>
								<td>
									<textarea name="beizhu" rows="5" cols="30"
										onKeyDown='if (this.value.length>=100){event.returnValue=false}'></textarea>
								</td>
							</tr>
						</table>
						<BR>
						<center>
							<input type="submit" name="Submit" value="提&nbsp;&nbsp;交"
								onclick="return formCheck();">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="Submit2" type="reset" class="submitinput"
								value="重&nbsp;&nbsp;置">
						</center>
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