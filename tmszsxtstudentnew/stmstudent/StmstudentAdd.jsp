<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="com.eaie.tmszsxt.tmstudent.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>电子信息工程学院推免生招生系统</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">


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
			if(!isNull("tel","电话")){			
				return false;
			}				
			if(!isNull("byschool","毕业学校")){			
				return false;
			}	
			if(!isNull("byspeciality","毕业专业")){			
				return false;
			}	
			if(!isNull("jsacademe","报考学院")){			
				return false;
			}	
			if(!isNull("byschool","毕业学校")){			
				return false;
			}	
			if(!isNull("jsspeciality","报考专业")){			
				return false;
			}
			if(!isNull("siji","四级成绩")){			
				return false;
			}	
			if(!isNull("liuji","六级成绩")){			
				return false;
			}	
			if(!isNull("zypm","专业排名")){			
				return false;
			}	
			if(!isNull("zyrs","专业人数")){			
				return false;
			}						
			if(!isNull("huoj","获奖情况")){			
				return false;
			}	
		}		
		</script>
	</head>
	<%
		String idString = session.getAttribute("id").toString();
		int id = Integer.parseInt(idString);
		List list = BasicDAO
				.queryByHql("From Tmstudent tmstudent where tmstudent.id='"
						+ id + "'");
		if (list.size() == 0) {
			out.print("没有记录");
		} else {
			Tmstudent tmstudent = (Tmstudent) list.get(0);
	%>
	<body bgcolor="#E9F2F9">
		<table width="765" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="76" align="center">
					<a href="index.html" class="sitenametitle">电子信息工程学院推免生招生系统</a>
				</td>
			</tr>
			<tr>
				<td height="44">
					<div id="navcontainer">
						<ul id="navlist">
							<!-- CSS Tabs -->
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
							<li>
								<a id="current" href="../index.jsp">&nbsp;&nbsp;首&nbsp;&nbsp;页&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../stmnews/StmnewsList.jsp">&nbsp;&nbsp;推免生通知&nbsp;&nbsp;</a>
							</li>
							<li id="active">
								<a href="../stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmusers/ModifyPwd.jsp">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../index.jsp">&nbsp;&nbsp;系统说明&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmlogout.jsp">&nbsp;&nbsp;退出系统&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../lianxi.jsp">&nbsp;&nbsp;联系我们&nbsp;&nbsp;</a>
							</li>
						</ul>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/img_banner.jpg" width="765" height="190">
				</td>
			</tr>
			<tr>
				<td valign="top" class="body_txt" background="images/ctnt_bg.gif"
					style="padding: 10px 10px 3px 10px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top">
								<table width="216" border="0" cellspacing="0" cellpadding="0">

									<tr>
										<td>
											<img src="images/leftbartop.gif" width="216" height="12">
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">用户菜单</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../index.jsp">系统说明</a>
													</li>
													<li>
														<a href="../tmusers/ModifyPwd.jsp">修改密码</a>
													</li>
													<li>
														<a href="../tmlogout.jsp">退出系统</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">推免生通知</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../stmnews/StmnewsList.jsp">查看推免生通知</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">个人信息</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="StmstudentAdd.jsp">提交推免生申请</a>
													</li>
													<li>
														<a href="StmstudentInfo.jsp">查看个人申请信息</a>
													</li>
													<li>
														<a href="StmstudentEdit.jsp">修改个人申请信息</a>
													</li>
													<li>
														<a href="StmstudentKaohe.jsp">查看考核通知</a>
													</li>
													<li>
														<a href="StmstudentLuq.jsp">查看录取信息</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>

									<tr>
										<td background="images/leftbarbg.gif">
											&nbsp;
										</td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>
											<img src="images/leftbarbtm.gif" width="216" height="12">
										</td>
									</tr>
								</table>
							</td>
							<td style="font-size: 12px; padding: 0 20px 10px 25px"
								valign="top">
								<p>
									<span class="titlebold2">提交个人申请信息</span>
									<br>

									<BR>
									<img src="images/hr_dotted.gif">
								</p>


								<form name="form1" method="post" action="StmstudentUpdate.jsp">


									<table align="center">
										<tr class="tdbg">

										</tr>
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
												联系电话：
											</td>
											<td>
												<input name="tel" type="text" id="tel" size="30">									
											</td>
										<tr>
											<td>
												毕业学校：										
											</td>
											<td>
												<input name="byschool" type="text" id="byschool" size="30">											
											</td>
										</tr>
										<tr>
											<td>
												毕业专业：										
											</td>
											<td>
												<input name="byspeciality" type="text" id="byspeciality"
													size="30">										
											</td>
										</tr>
										<tr>
											<td>
												报考学院：										
											</td>
											<td>
												<input name="jsacademe" type="text" id="jsacademe" size="30">									
											</td>
										</tr>
										<tr>
											<td>
												报考专业：											
											</td>
											<td>
												<input name="jsspeciality" type="text" id="jsspeciality"
													size="30">
												</td>
										</tr>
										<tr>
											<td>
												四级成绩：											
											</td>
											<td>
												<input name="siji" type="text" id="siji" size="30">									
											</td>
										</tr>
										<tr>
											<td>
												六级成绩：										
											</td>
											<td>
												<input name="liuji" type="text" id="liuji" size="30">									
											</td>
										</tr>
										<tr>
											<td>
												专业排名：											
											</td>
											<td>
												<input name="zypm" type="text" id="zypm" size="30">											
											</td>
										</tr>
										<tr>
											<td>
												专业人数：										
											</td>
											<td>
												<input name="zyrs" type="text" id="zyrs" size="30">										
											</td>
										</tr>
										<tr>
											<td width="60">
												获奖情况：
												(限制在100字内)
												</td>
											<td>
												<textarea name="huoj" rows="5" cols="30" onKeyDown='if (this.value.length>=100){event.returnValue=false}'></textarea>										
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


								<img src="images/hr_dotted.gif">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/ftr_btm.gif" width="765" height="27">
				</td>
			</tr>
			<tr>
				<td align="center" class="txt_copyright"
					style="padding: 3px 10px 10px 10px;">
					版权所有：北京交通大学电子信息工程学院
					<br>
					地址：北京市海淀区上园村3号，北京交通大学九号教学楼 邮编：100044
				</td>
			</tr>
		</table>
	</body>
	<%
		}
	%>
</html>
