<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.gcteacher.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="com.eaie.admin.gcteacher.UserManage"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eaie.common.*"%>
<%@page import="com.eaie.gcxkxt.xkfenye.*"%>
<%@page import="com.eaie.gcxkxt.gcxkinfo.GcinfoList"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Gcteacher gcteacher = (Gcteacher) session.getAttribute("GCTEACHER");
%>
<html>

	<head>
		<title>������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ</title>
		<LINK REL=StyleSheet HREF="../gctchstyle.css" TYPE="text/css"
			MEDIA=screen>
	</head>
	<%
		String xkid = "";
		String sName = "";
		String sScore = "";
		int kcID;
		String courseId = request.getParameter("id");
		
		//��ѯ�γ���Ϣ		
		String tchname = gcteacher.getName();
	%>
	<script language=javascript> 
	 function formCheck(){
	 <%if (courseId==null) {
					out.print("û�м�¼");}
				  else
				   {
				  kcID=Integer.parseInt(courseId);
				  List listb = BasicDAO.queryByHql("From Gcxk gcxk where gcxk.tid='"+ kcID + "'");
				 //��Ӧ�γ���ѡ��������Ϊ0
				  if (listb.size() > 0) 
					{
					for (int i = 0; i < listb.size(); i++) 
					{
						Gcxk gcxk = (Gcxk) listb.get(i);
						xkid=gcxk.getId().toString();			
		%>
		//String string=document.getElementById("xkid").value();
		//int fenshu = Integer.parseInt(string);
        if(document.getElementById("<%=xkid%>").value=="")
        {
            alert("ѧ���ɼ�����Ϊ��!");
            document.getElementById("<%=xkid%>").focus();
            document.getElementById("<%=xkid%>").select();
            return false;
        }
        else if (document.getElementById("<%=xkid%>").value>100||document.getElementById("<%=xkid%>").value<0)
        {
         	alert("ѧ���ɼ�������0����100֮��");
            document.getElementById("<%=xkid%>").focus();
            document.getElementById("<%=xkid%>").select();
            return false;
        }
    	<%
    	}
    	%>
    	else return true;
    	<%
    	}}%>
    }
</script>

	<body>
	<%!List list;
	%>
		<%
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			GcxkfyList gcxkfyList = new GcxkfyList();
		   list = gcxkfyList.getGcxkfyList(curPage,courseId)  ;

			Page pager = gcxkfyList.getCurrentPage();
			Iterator it = list.iterator();//����list
		%>

		<div id="page">
			<div id="header">
				<h1 align="center">
					������Ϣ����ѧԺ����˶ʿѡ�ν�ʦ��½ϵͳ
				</h1>
			</div>
			<div id="mainarea">
				<div id="sidebar">
					<div id="sidebarnav">
						<br>
						<br>
						<a href="../index.jsp">��ҳ</a>
						<a href="../ModifyPwd.jsp">�޸ĵ�½����</a>
						<a href="../kcxx.jsp">�鿴�γ���Ϣ</a>
						<a href="../score.jsp">�༭ѧ���ɼ�</a>
						<a href="../lianxi.jsp">��ϵ����</a>
						<a href="../logout.jsp">�˳�ϵͳ</a>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</div>
				</div>

				<div id="contentarea">


					<form name="form" method="post" action="UpdateScr.jsp">
						<table width="100%" border="1" align="center" cellpadding="2"
							cellspacing="1">
							<tr align="center" class="">
								<td width="10%">
									���
								</td>
								<td width="45%">
									����
								</td>
								<td width="20%">
									����
								</td>
							</tr>
							<%
								if (courseId != null) {
										int tid = Integer.parseInt(courseId);
										List listc = BasicDAO
												.queryByHql("From Gcxk gcxk where gcxk.tid='" + tid
														+ "'");
										//��Ӧ�γ���ѡ��������Ϊ0
										if (list.size() > 0) {
											for (int i = 0; i < list.size(); i++) {
												Gcxk gcxk = (Gcxk) list.get(i);
												xkid = gcxk.getId().toString();
												int sid = gcxk.getSid();
												//��ȡѧ������
												List listd = BasicDAO
														.queryByHql("From Gcstudent gcstd where gcstd.id='"
																+ sid + "'");
												if (listd.size() != 0) {
													Gcstudent gcstd = (Gcstudent) listd.get(0);
													sName = gcstd.getName();
												}
												//��ȡ��ѧ���ķ���
												List liste = BasicDAO
														.queryByHql("From Gcxk gcxk where gcxk.sid='"
																+ sid
																+ "'"
																+ "and gcxk.tid='"
																+ Integer.parseInt(courseId) + "'");
												if (liste.size() != 0) {
													Gcxk gcxkb = (Gcxk) liste.get(0);
													sScore = gcxkb.getScore();
												}
							%>

							<tr align="center">
								<td width="35">
									<%=i + 1%>
								</td>
								<td>
									<%=sName%>
								</td>
								<td>
									<%=(sScore == null) ? "δ���" : sScore%>
									<input type="hidden" name="csid" id="csid" size=10
										value="<%=Integer.parseInt(courseId)%>">
								</td>
								<%
									}
											}
								%>

							</tr>
						</table>
						<br>

					</form>

					<%
						}
						
					%>
				<form name="pageForm" action="" method="post">
			<table align="center" width="96%">
				<tr>
					<td align="center">
						<%@include file="/admin/common/Pager.jsp"%>
					</td>
				</tr>
			</table>
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