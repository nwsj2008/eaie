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

		<title>������Ϣ����ѧԺ����������ϵͳ</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="main.css" rel="stylesheet" type="text/css">


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
			if(!isNull("name","����")){			
				return false;
			}	
			if(!isNull("tel","�绰")){			
				return false;
			}				
			if(!isNull("byschool","��ҵѧУ")){			
				return false;
			}	
			if(!isNull("byspeciality","��ҵרҵ")){			
				return false;
			}	
			if(!isNull("jsacademe","����ѧԺ")){			
				return false;
			}	
			if(!isNull("byschool","��ҵѧУ")){			
				return false;
			}	
			if(!isNull("jsspeciality","����רҵ")){			
				return false;
			}
			if(!isNull("siji","�ļ��ɼ�")){			
				return false;
			}	
			if(!isNull("liuji","�����ɼ�")){			
				return false;
			}	
			if(!isNull("zypm","רҵ����")){			
				return false;
			}	
			if(!isNull("zyrs","רҵ����")){			
				return false;
			}						
			if(!isNull("huoj","�����")){			
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
			out.print("û�м�¼");
		} else {
			Tmstudent tmstudent = (Tmstudent) list.get(0);
	%>
	<body bgcolor="#E9F2F9">
		<table width="765" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="76" align="center">
					<a href="index.html" class="sitenametitle">������Ϣ����ѧԺ����������ϵͳ</a>
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
								<a id="current" href="../index.jsp">&nbsp;&nbsp;��&nbsp;&nbsp;ҳ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../stmnews/StmnewsList.jsp">&nbsp;&nbsp;������֪ͨ&nbsp;&nbsp;</a>
							</li>
							<li id="active">
								<a href="../stmstudent/StmstudentInfo.jsp">&nbsp;&nbsp;������Ϣ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmusers/ModifyPwd.jsp">&nbsp;&nbsp;�޸�����&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../index.jsp">&nbsp;&nbsp;ϵͳ˵��&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../tmlogout.jsp">&nbsp;&nbsp;�˳�ϵͳ&nbsp;&nbsp;</a>
							</li>
							<li>
								<a href="../lianxi.jsp">&nbsp;&nbsp;��ϵ����&nbsp;&nbsp;</a>
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
											<span class="columntitle">�û��˵�</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../index.jsp">ϵͳ˵��</a>
													</li>
													<li>
														<a href="../tmusers/ModifyPwd.jsp">�޸�����</a>
													</li>
													<li>
														<a href="../tmlogout.jsp">�˳�ϵͳ</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">������֪ͨ</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="../stmnews/StmnewsList.jsp">�鿴������֪ͨ</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td height="30" bgcolor="#09938d"
											class="leftcolumntitle, titlebold">
											<span class="columntitle">������Ϣ</span>
										</td>
									</tr>
									<tr>
										<td background="images/leftbarbg.gif" valign="top"
											style="padding: 8px 0 8px 0">
											<div id="menu2">
												<ul>
													<!-- CSS Tabs -->
													<li>
														<a href="StmstudentAdd.jsp">�ύ����������</a>
													</li>
													<li>
														<a href="StmstudentInfo.jsp">�鿴����������Ϣ</a>
													</li>
													<li>
														<a href="StmstudentEdit.jsp">�޸ĸ���������Ϣ</a>
													</li>
													<li>
														<a href="StmstudentKaohe.jsp">�鿴����֪ͨ</a>
													</li>
													<li>
														<a href="StmstudentLuq.jsp">�鿴¼ȡ��Ϣ</a>
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
									<span class="titlebold2">�ύ����������Ϣ</span>
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
												��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
											</td>
											<td>
												<input name="name" type="text" id="name" size="30">
											</td>
										</tr>
										<tr>
											<td>
												��ϵ�绰��
											</td>
											<td>
												<input name="tel" type="text" id="tel" size="30">									
											</td>
										<tr>
											<td>
												��ҵѧУ��										
											</td>
											<td>
												<input name="byschool" type="text" id="byschool" size="30">											
											</td>
										</tr>
										<tr>
											<td>
												��ҵרҵ��										
											</td>
											<td>
												<input name="byspeciality" type="text" id="byspeciality"
													size="30">										
											</td>
										</tr>
										<tr>
											<td>
												����ѧԺ��										
											</td>
											<td>
												<input name="jsacademe" type="text" id="jsacademe" size="30">									
											</td>
										</tr>
										<tr>
											<td>
												����רҵ��											
											</td>
											<td>
												<input name="jsspeciality" type="text" id="jsspeciality"
													size="30">
												</td>
										</tr>
										<tr>
											<td>
												�ļ��ɼ���											
											</td>
											<td>
												<input name="siji" type="text" id="siji" size="30">									
											</td>
										</tr>
										<tr>
											<td>
												�����ɼ���										
											</td>
											<td>
												<input name="liuji" type="text" id="liuji" size="30">									
											</td>
										</tr>
										<tr>
											<td>
												רҵ������											
											</td>
											<td>
												<input name="zypm" type="text" id="zypm" size="30">											
											</td>
										</tr>
										<tr>
											<td>
												רҵ������										
											</td>
											<td>
												<input name="zyrs" type="text" id="zyrs" size="30">										
											</td>
										</tr>
										<tr>
											<td width="60">
												�������
												(������100����)
												</td>
											<td>
												<textarea name="huoj" rows="5" cols="30" onKeyDown='if (this.value.length>=100){event.returnValue=false}'></textarea>										
											</td>
										</tr>
									</table>
									<BR>
									<center>
										<input type="submit" name="Submit" value="��&nbsp;&nbsp;��"
											onclick="return formCheck();">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input name="Submit2" type="reset" class="submitinput"
											value="��&nbsp;&nbsp;��">
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
					��Ȩ���У�������ͨ��ѧ������Ϣ����ѧԺ
					<br>
					��ַ�������к�������԰��3�ţ�������ͨ��ѧ�źŽ�ѧ¥ �ʱࣺ100044
				</td>
			</tr>
		</table>
	</body>
	<%
		}
	%>
</html>
