<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.users.*" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
%>		

<html>
	<head>
		<base href="<%=basePath%>">
		<title>��ർ��</title>
		<style type=text/css>
			body  {
				margin:0px;
				background-color: #0080C0;
			}
			table  { border:0px; }
			td  { font:normal 12px ����; }
			img  { vertical-align:bottom; border:0px; }
			a  { font:normal 12px ����; color:#000000; text-decoration:none; }
			a:hover  { color:#cc0000;text-decoration:underline; }
			.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#EAEAEA; }
			.menu_title  {
				padding-left: 20px;
			}
		</style>
		<script language="JavaScript">
			function preloadImg(src)
			{
				var img=new Image();
				img.src=src
			}
			preloadImg("image/dh_open.gif");
			
			var displayBar=true;
			function switchBar(obj)
			{
				if (displayBar)
				{
					parent.frame.cols="0,*";
					displayBar=false;
					obj.src="image/dh_open.gif";
					obj.title="�򿪹���˵�";
				}
				else{
					parent.frame.cols="180,*";
					displayBar=true;
					obj.src="image/dh_close.gif";
					obj.title="�رչ���˵�";
				}
			}
			function spread(thename,img)
			{
			if(document.all[thename].style.display=="none")
			  {document.all[thename].style.display="";
			  img.src="admin/images/up.gif"}
			else
			  {document.all[thename].style.display="none";
			  img.src="admin/images/down.gif"}
			}
	</script>
	</head>
	<body>
<%	
			Teacher user = (Teacher)session.getAttribute("USER");		
%>
		<table width="158" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="1">&nbsp;
					
				</td>
			</tr>
			<tr>
				<td height="25" background="admin/images/dh_bg.gif" class="menu_title">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<a href="admin/main.jsp" target="main"><b>������ҳ</b>
								</a> |
								<a href="admin/logout.jsp" target="_parent"><b>�˳�</b>
								</a>
							</td>
							<td width="40" align="center">
								<img src="admin/images/up.gif" width="12" height="12" border="0" id="img0" onClick="javascript:spread('list0',this)" style="cursor:hand">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<div class="sec_menu" style="width:158">
						<table width="130" border="0" align="center" cellpadding="0"
							cellspacing="0" id="list0" style="display:">
							<tr>
								<td height="20">
									�û�����	<%=user.getTeacher() %>								
								</td>
							</tr>
							<tr>
								<td height="20">
									��&nbsp;&nbsp;�ţ�<%=user.getPart() %>									
								</td>
							</tr>
							<tr>
								<td height="20">
									<a href="admin/users/ModifyPwd.jsp" target="main">�޸ĵ�¼����</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td height="1">&nbsp;
					
				</td>
			</tr>
		</table>
		<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list1','img1');">��վ����</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list1','img1');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img1"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
		<div class="sec_menu" style="width:158">
			<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list1" style="display:">
      			<tr>
        			<td height="20"><a href="admin/news/AddNews.jsp" target="main">�������</a></td>
      			</tr>
      			<tr>
        			<td height="20"><a href="admin/news/NewsList.jsp" target="main">���¹���</a></td>
      			</tr>
 <%
 				if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)||UserManage.HasRight(4,user)||UserManage.HasRight(6,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/dailyfiles/Upload.jsp" target="main">�ϴ���������</a> | <a href="admin/dailyfiles/FileList.jsp" target="main">����</a></td>
      			</tr>
<%
				}
				if(UserManage.HasRight(4,user)){
%>
      			<tr>
          			<td height="20"><a href="admin/lecture/lecture_add.jsp" target="main">����ѧ���</a> | <a href="admin/lecture/lecture_list.jsp" target="main">����</a></td>
      			</tr>
<%
				}
				if(UserManage.HasRight(8,user)){
%>
 
				<tr>
          			<td height="20"><a href="admin/vote/AddVote.jsp" target="main">������վ����</a> | <a href="admin/vote/VoteList.jsp" target="main">����</a></td>
        		</tr>
<%
				}
				if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/message/Msg_list.jsp" target="main">�ظ�վ������</a></td>
        		
        		</tr>
<%
				}
				if(UserManage.HasRight(8,user)){
%>

	  			<tr>
        			<td height="20"><a href="admin/classroom/ClassroomList.jsp" target="main">���������</a></td>
      			</tr>
<%
				}
				if(user.getIsadmin()!=null&&user.getIsadmin()>0){
%>
        <tr>
          <td height="20"><a href="admin/users/UserList.jsp" target="main">�û�����</a> | <a href="admin/column/ClassList.jsp" target="main">��Ŀ����</a></td>
        </tr>
<%
				}
 %>
        <!--  
        <tr>
          <td height="20"><a href="admin_sys.asp" target="main">ϵͳ����</a> | <a href="count/main.asp" target="main">ͳ��ϵͳ</a></td>
        </tr>
       	-->
      </table>
	  </div>
    </td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list2','img2');">��Ϣ�����</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list2','img2');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img2"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list2" style="display:">
<%
				
			if(UserManage.HasRight(9,user)){
%>
      		<tr>
       	 		<td height="20"><a href="admin/leader/LeaderList.jsp" target="main">�쵼��Ϣ��</a></td>
     	 	</tr>
<%
			}
			if(UserManage.HasRight(5,user)){
%>
       		<tr>
         		<td height="20"><a href="admin/professor/ProfessorList.jsp" target="main">��ʦ��Ϣ��</a></td>
        	</tr>
<%
 			}
 			if(UserManage.HasRight(0,user)){
 %>
     	 	<tr>
        		<td height="20"><a href="admin/student/StudentList.jsp" target="main">ѧ����Ϣ��</a></td>
      		</tr>
<%
			}
			if(UserManage.HasRight(0,user)||UserManage.HasRight(7,user)){
 %>
       		<tr>
        		<td height="20"><a href="admin/commie/CommieList.jsp" target="main">ѧ����Ա��Ϣ��</a></td>
      		</tr>
<%
			}
			if(UserManage.HasRight(0,user)){
 %>
      		<tr>
        		<td height="20"><a href="admin/student/AidStudentList.jsp" target="main">��������ѧ����Ϣ��</a></td>
      		</tr>
      		<tr>
        		<td height="20"><a href="admin/course/Course_List.jsp" target="main">�γ���Ϣ��</a></td>
      		</tr>
      		<tr>
        		<td height="20"><a href="admin/quality/ExpList.jsp" target="main">����ʵ����Ϣ��</a></td>
      		</tr>
<%
			}
 %>
	  	</table>
	  </div>
    </td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>
<%
 				if(UserManage.HasRight(3,user)){
 %>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list8','img8');">��ѧ��չ��ѧϰ</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list8','img8');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img8"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list8" style="display:">			
 
                <tr>
        			<td height="20"><a href="admin/kxfzg/AddNews.jsp" target="main">�������</a></td>
      			</tr>
      			<tr>
        			<td height="20"><a href="admin/kxfzg/NewsList.jsp" target="main">���¹���</a></td>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/kxfzg/LookInfo.jsp" target="main">���Թ���</a></td>
      			</tr>

			
<%
				}
				//if(UserManage.HasRight(8,user)){
%>

      </table>
	  </div>
    </td>
  </tr>
</table>
<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list3','img3');">����������ϵͳ</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list3','img3');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img3"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list3" style="display:">			
 <%
 				if(UserManage.HasRight(3,user)){
 %>
	  			<tr>
          			<td height="20"><a href="admin/tmszsxt/Open.jsp" target="main">����</a>|<a href="admin/tmszsxt/Close.jsp" target="main">�ر�������ϵͳ</a>
      			</tr>
<%
				}
			 if(UserManage.HasRight(3,user)){
%>
                
				<tr>
        			<td height="20"><a href="admin/tmszsxt/tmnews/TmnewsAdd.jsp" target="main">����������֪ͨ</a> | <a href="admin/tmszsxt/tmnews/TmnewsList.jsp" target="main">����</a></td>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/tmszsxt/tmstudent/TmstudentListSq.jsp" target="main">�鿴������������</a>
      			</tr>
<%
				}
				if(UserManage.HasRight(3,user)){
%>
 
				<tr>
          			<td height="20"><a href="admin/tmszsxt/tmstudent/TmstudentList.jsp" target="main">��ӿ���֪ͨ��¼ȡ��Ϣ</a>
        		</tr>
<%
				}
				if(UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/tmszsxt/tmstudent/TmstudentListDc.jsp" target="main">�����������б�</a></td>
        		
        		</tr>
					<tr>
        			<td height="20"><a href="http://eaie.njtu.edu.cn/lwtj/adminlogin.aspx" target="main">˶ʿ��������ύϵͳ</a></td>
        		
        		</tr>
        		<tr>
        			<td height="20"><a href="http://eaie.njtu.edu.cn/bslwtj/adminlogin.aspx" target="main">��ʿ��������ύϵͳ</a></td>
        		
        		</tr>

				<tr>
        			<td height="20"><a href="http://eaie.bjtu.edu.cn/yanjiu/course/admin/admin_login.asp" target="main">�о����γ�����ϵͳ</a></td>
        		
        		</tr>
				<tr>
        			<td height="20"><a href="http://eaie.bjtu.edu.cn/yanjiu/assistant/admin/admin_login.asp" target="main">�о�������ϵͳ</a></td>
        		
        		</tr>
				<tr>
        			<td height="20"><a href="http://eaie.bjtu.edu.cn/yanjiu/lwps/admin/admin_login.asp" target="main">�о���ѧλ��������ϵͳ</a></td>
        		
        		</tr>
       <%
       }
        %> 		
                    
                  </table>
                  </div>
                  </td>
                  </tr>
                  </table>
                 
                   <table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list4','img4');">˶����������ϵͳ</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list4','img4');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img4"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list4" style="display:">			
 <%
 				if(UserManage.HasRight(3,user)){
 %>
 <tr>
          			<td height="20"><a href="admin/sbldxt/Sbopen.jsp" target="main">����</a>|<a href="admin/sbldxt/Sbclose.jsp" target="main">�ر�����ϵͳ</a>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/sbldxt/sbldnews/SbnewsAdd.jsp" target="main">����˶��֪ͨ</a> | <a href="admin/sbldxt/sbldnews/SbnewsList.jsp" target="main">����</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/sbldxt/sbldstudent/SbstudentListSq.jsp" target="main">�鿴������</a>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/sbldxt/sbldstudent/SbstudentListDc.jsp" target="main">���������б�</a>
      			</tr>

			
<%
				}
				//if(UserManage.HasRight(8,user)){
%>

      </table>
	  </div>
    </td>
  </tr>
</table>

<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>



<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list5','img5');">��ǰ��������ϵͳ</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list5','img5');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img3"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list5" style="display:">			
 <%
 				if(UserManage.HasRight(3,user)){
 %>
 <tr>
          			<td height="20"><a href="admin/tqgbxt/Tqgbopen.jsp" target="main">����</a>|<a href="admin/tqgbxt/Tqgbclose.jsp" target="main">�ر�����ϵͳ</a>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/tqgbxt/tqgbnews/TqgbnewsAdd.jsp" target="main">����˶��֪ͨ</a> | <a href="admin/tqgbxt/tqgbnews/TqgbnewsList.jsp" target="main">����</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/tqgbxt/tqgbstudent/TqgbstudentListSq.jsp" target="main">�鿴������</a>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/tqgbxt/tqgbstudent/TqgbstudentListDc.jsp" target="main">���������б�</a>
      			</tr>

			
<%
				}
				//if(UserManage.HasRight(8,user)){
%>

      </table>
	  </div>
    </td>
  </tr>
</table>
<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>




<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list6','img6');">��ʿ��ϵͳ����</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list6','img6');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img4"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list6" style="display:">			
 <%
 				if(UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/bszsxt/bsnews/BsnewsAdd.jsp" target="main">������ʿ��֪ͨ</a> | <a href="admin/bszsxt/bsnews/BsnewsList.jsp" target="main">����</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/bszsxt/bsstudent/BsstudentList.jsp" target="main">�ϴ���ʿ����Ϣ</a>
      			</tr>

				<tr>
          	<td height="20"><a href="admin/bszsxt/bsstudent/BsstudentListbj.jsp" target="main">�༭��ʿ����Ϣ</a>
        		</tr>
<%
				}
				
				
%>
       
      </table>
      
  </div>
  </td>
  </tr>
  </table>
  
  <table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
  </tr>
</table>



<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" background="admin/images/dh_bg.gif" class="menu_title">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="cursor:hand" onClick="javascript:spread('list7','img7');">����˶ʿѡ��ϵͳ</td>
          <td width="30" align="center" style="cursor:hand" onClick="javascript:spread('list7','img7');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img5"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list7" style="display:">			
 <%
 				if(UserManage.HasRight(3,user)){
 %>
 <tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkopen.jsp" target="main">����</a>|<a href="admin/gcxkxt/gcxkclose.jsp" target="main">�ر�ѡ��ϵͳ</a>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/gcxkxt/gcxknews/gcxknewsadd.jsp" target="main">����ѡ��֪ͨ</a> | <a href="admin/gcxkxt/gcxknews/gcxknewslist.jsp" target="main">����</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkcourse/Gcchoose.jsp" target="main">�γ̹���</a> | <a href="admin/gcxkxt/gcxkteacher/GcteacherList.jsp" target="main">��ʦ����</a></td>
      			</tr>
      			
      			<tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkstudent/GcstudentList.jsp" target="main">ѧ������</a>|<a href="admin/gcxkxt/gcxkstudent/GcstudentListbj.jsp" target="main">�ϴ�ѧ����Ϣ</a></td>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkinfo/Gcchoose.jsp" target="main">ѡ�ι���</a>
      			</td>
      			</tr>

			
<%
				}
				//if(UserManage.HasRight(8,user)){
%>

      </table>
	  </div>
    </td>
  </tr>
</table>
                   


</body>
</html>
