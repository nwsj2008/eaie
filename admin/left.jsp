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
		<title>左侧导航</title>
		<style type=text/css>
			body  {
				margin:0px;
				background-color: #0080C0;
			}
			table  { border:0px; }
			td  { font:normal 12px 宋体; }
			img  { vertical-align:bottom; border:0px; }
			a  { font:normal 12px 宋体; color:#000000; text-decoration:none; }
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
					obj.title="打开管理菜单";
				}
				else{
					parent.frame.cols="180,*";
					displayBar=true;
					obj.src="image/dh_close.gif";
					obj.title="关闭管理菜单";
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
								<a href="admin/main.jsp" target="main"><b>管理首页</b>
								</a> |
								<a href="admin/logout.jsp" target="_parent"><b>退出</b>
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
									用户名：	<%=user.getTeacher() %>								
								</td>
							</tr>
							<tr>
								<td height="20">
									部&nbsp;&nbsp;门：<%=user.getPart() %>									
								</td>
							</tr>
							<tr>
								<td height="20">
									<a href="admin/users/ModifyPwd.jsp" target="main">修改登录密码</a>
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
          <td style="cursor:hand" onClick="javascript:spread('list1','img1');">网站管理</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list1','img1');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img1"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
		<div class="sec_menu" style="width:158">
			<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list1" style="display:">
      			<tr>
        			<td height="20"><a href="admin/news/AddNews.jsp" target="main">添加文章</a></td>
      			</tr>
      			<tr>
        			<td height="20"><a href="admin/news/NewsList.jsp" target="main">文章管理</a></td>
      			</tr>
 <%
 				if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)||UserManage.HasRight(4,user)||UserManage.HasRight(6,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/dailyfiles/Upload.jsp" target="main">上传常用资料</a> | <a href="admin/dailyfiles/FileList.jsp" target="main">管理</a></td>
      			</tr>
<%
				}
				if(UserManage.HasRight(4,user)){
%>
      			<tr>
          			<td height="20"><a href="admin/lecture/lecture_add.jsp" target="main">发布学术活动</a> | <a href="admin/lecture/lecture_list.jsp" target="main">管理</a></td>
      			</tr>
<%
				}
				if(UserManage.HasRight(8,user)){
%>
 
				<tr>
          			<td height="20"><a href="admin/vote/AddVote.jsp" target="main">发布网站调查</a> | <a href="admin/vote/VoteList.jsp" target="main">管理</a></td>
        		</tr>
<%
				}
				if(UserManage.HasRight(2,user)||UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/message/Msg_list.jsp" target="main">回复站内留言</a></td>
        		
        		</tr>
<%
				}
				if(UserManage.HasRight(8,user)){
%>

	  			<tr>
        			<td height="20"><a href="admin/classroom/ClassroomList.jsp" target="main">批复活动申请</a></td>
      			</tr>
<%
				}
				if(user.getIsadmin()!=null&&user.getIsadmin()>0){
%>
        <tr>
          <td height="20"><a href="admin/users/UserList.jsp" target="main">用户管理</a> | <a href="admin/column/ClassList.jsp" target="main">栏目管理</a></td>
        </tr>
<%
				}
 %>
        <!--  
        <tr>
          <td height="20"><a href="admin_sys.asp" target="main">系统管理</a> | <a href="count/main.asp" target="main">统计系统</a></td>
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
          <td style="cursor:hand" onClick="javascript:spread('list2','img2');">信息库管理</td>
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
       	 		<td height="20"><a href="admin/leader/LeaderList.jsp" target="main">领导信息库</a></td>
     	 	</tr>
<%
			}
			if(UserManage.HasRight(5,user)){
%>
       		<tr>
         		<td height="20"><a href="admin/professor/ProfessorList.jsp" target="main">教师信息库</a></td>
        	</tr>
<%
 			}
 			if(UserManage.HasRight(0,user)){
 %>
     	 	<tr>
        		<td height="20"><a href="admin/student/StudentList.jsp" target="main">学生信息库</a></td>
      		</tr>
<%
			}
			if(UserManage.HasRight(0,user)||UserManage.HasRight(7,user)){
 %>
       		<tr>
        		<td height="20"><a href="admin/commie/CommieList.jsp" target="main">学生党员信息库</a></td>
      		</tr>
<%
			}
			if(UserManage.HasRight(0,user)){
 %>
      		<tr>
        		<td height="20"><a href="admin/student/AidStudentList.jsp" target="main">经济困难学生信息库</a></td>
      		</tr>
      		<tr>
        		<td height="20"><a href="admin/course/Course_List.jsp" target="main">课程信息库</a></td>
      		</tr>
      		<tr>
        		<td height="20"><a href="admin/quality/ExpList.jsp" target="main">创新实验信息库</a></td>
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
          <td style="cursor:hand" onClick="javascript:spread('list8','img8');">科学发展观学习</td>
          <td width="40" align="center" style="cursor:hand" onClick="javascript:spread('list8','img8');"><img src="admin/images/up.gif" width="12" height="12" border="0" id="img8"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="center">
	<div class=sec_menu style="width:158">
		<table width="130" border="0" align="center" cellpadding="0" cellspacing="0" id="list8" style="display:">			
 
                <tr>
        			<td height="20"><a href="admin/kxfzg/AddNews.jsp" target="main">添加文章</a></td>
      			</tr>
      			<tr>
        			<td height="20"><a href="admin/kxfzg/NewsList.jsp" target="main">文章管理</a></td>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/kxfzg/LookInfo.jsp" target="main">留言管理</a></td>
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
          <td style="cursor:hand" onClick="javascript:spread('list3','img3');">推免生招生系统</td>
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
          			<td height="20"><a href="admin/tmszsxt/Open.jsp" target="main">开启</a>|<a href="admin/tmszsxt/Close.jsp" target="main">关闭推免生系统</a>
      			</tr>
<%
				}
			 if(UserManage.HasRight(3,user)){
%>
                
				<tr>
        			<td height="20"><a href="admin/tmszsxt/tmnews/TmnewsAdd.jsp" target="main">发布推免生通知</a> | <a href="admin/tmszsxt/tmnews/TmnewsList.jsp" target="main">管理</a></td>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/tmszsxt/tmstudent/TmstudentListSq.jsp" target="main">查看推免生申请结果</a>
      			</tr>
<%
				}
				if(UserManage.HasRight(3,user)){
%>
 
				<tr>
          			<td height="20"><a href="admin/tmszsxt/tmstudent/TmstudentList.jsp" target="main">添加考核通知和录取信息</a>
        		</tr>
<%
				}
				if(UserManage.HasRight(3,user)){
 %>
	  			<tr>
        			<td height="20"><a href="admin/tmszsxt/tmstudent/TmstudentListDc.jsp" target="main">导出申请人列表</a></td>
        		
        		</tr>
					<tr>
        			<td height="20"><a href="http://eaie.njtu.edu.cn/lwtj/adminlogin.aspx" target="main">硕士答辩论文提交系统</a></td>
        		
        		</tr>
        		<tr>
        			<td height="20"><a href="http://eaie.njtu.edu.cn/bslwtj/adminlogin.aspx" target="main">博士答辩论文提交系统</a></td>
        		
        		</tr>

				<tr>
        			<td height="20"><a href="http://eaie.bjtu.edu.cn/yanjiu/course/admin/admin_login.asp" target="main">研究生课程评价系统</a></td>
        		
        		</tr>
				<tr>
        			<td height="20"><a href="http://eaie.bjtu.edu.cn/yanjiu/assistant/admin/admin_login.asp" target="main">研究生三助系统</a></td>
        		
        		</tr>
				<tr>
        			<td height="20"><a href="http://eaie.bjtu.edu.cn/yanjiu/lwps/admin/admin_login.asp" target="main">研究生学位论文评审系统</a></td>
        		
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
          <td style="cursor:hand" onClick="javascript:spread('list4','img4');">硕博连读招生系统</td>
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
          			<td height="20"><a href="admin/sbldxt/Sbopen.jsp" target="main">开启</a>|<a href="admin/sbldxt/Sbclose.jsp" target="main">关闭招生系统</a>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/sbldxt/sbldnews/SbnewsAdd.jsp" target="main">发布硕博通知</a> | <a href="admin/sbldxt/sbldnews/SbnewsList.jsp" target="main">管理</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/sbldxt/sbldstudent/SbstudentListSq.jsp" target="main">查看申请结果</a>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/sbldxt/sbldstudent/SbstudentListDc.jsp" target="main">导出申请列表</a>
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
          <td style="cursor:hand" onClick="javascript:spread('list5','img5');">提前攻博招生系统</td>
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
          			<td height="20"><a href="admin/tqgbxt/Tqgbopen.jsp" target="main">开启</a>|<a href="admin/tqgbxt/Tqgbclose.jsp" target="main">关闭招生系统</a>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/tqgbxt/tqgbnews/TqgbnewsAdd.jsp" target="main">发布硕博通知</a> | <a href="admin/tqgbxt/tqgbnews/TqgbnewsList.jsp" target="main">管理</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/tqgbxt/tqgbstudent/TqgbstudentListSq.jsp" target="main">查看申请结果</a>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/tqgbxt/tqgbstudent/TqgbstudentListDc.jsp" target="main">导出申请列表</a>
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
          <td style="cursor:hand" onClick="javascript:spread('list6','img6');">博士生系统管理</td>
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
        			<td height="20"><a href="admin/bszsxt/bsnews/BsnewsAdd.jsp" target="main">发布博士生通知</a> | <a href="admin/bszsxt/bsnews/BsnewsList.jsp" target="main">管理</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/bszsxt/bsstudent/BsstudentList.jsp" target="main">上传博士生信息</a>
      			</tr>

				<tr>
          	<td height="20"><a href="admin/bszsxt/bsstudent/BsstudentListbj.jsp" target="main">编辑博士生信息</a>
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
          <td style="cursor:hand" onClick="javascript:spread('list7','img7');">工程硕士选课系统</td>
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
          			<td height="20"><a href="admin/gcxkxt/gcxkopen.jsp" target="main">开启</a>|<a href="admin/gcxkxt/gcxkclose.jsp" target="main">关闭选课系统</a>
      			</tr>
	  			<tr>
        			<td height="20"><a href="admin/gcxkxt/gcxknews/gcxknewsadd.jsp" target="main">发布选课通知</a> | <a href="admin/gcxkxt/gcxknews/gcxknewslist.jsp" target="main">管理</a></td>
      			</tr>

      			<tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkcourse/Gcchoose.jsp" target="main">课程管理</a> | <a href="admin/gcxkxt/gcxkteacher/GcteacherList.jsp" target="main">教师管理</a></td>
      			</tr>
      			
      			<tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkstudent/GcstudentList.jsp" target="main">学生管理</a>|<a href="admin/gcxkxt/gcxkstudent/GcstudentListbj.jsp" target="main">上传学生信息</a></td>
      			</tr>
      			<tr>
          			<td height="20"><a href="admin/gcxkxt/gcxkinfo/Gcchoose.jsp" target="main">选课管理</a>
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
