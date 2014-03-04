<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="com.eaie.admin.lecture.*"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>北京交通大学电子信息工程学院</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
<script language="JavaScript">
function MM_jumpMenu(targ,selObj,restore)
{ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
if(document.images) {

  image01 = new Image;
  image02 = new Image;
  image11 = new Image;
  image12 = new Image;
  image21 = new Image;
  image22 = new Image;
  image31 = new Image;
  image32 = new Image;
  image41 = new Image;
  image42 = new Image;
  image51 = new Image;
  image52 = new Image;

// source images

  image01.src = "images/b21.jpg";
  image02.src = "images/b22.jpg";
  image11.src = "images/b31.jpg";
  image12.src = "images/b32.jpg";
  image21.src = "images/b41.jpg";
  image22.src = "images/b42.jpg";
  image31.src = "images/b51.jpg";
  image32.src = "images/b52.jpg";
  image41.src = "images/b61.jpg";
  image42.src = "images/b62.jpg";


}

// MouseOver Function

function swapOn(imgLocation) {
  if(document.images) {
    document.images[imgLocation].src = eval(imgLocation + "2.src");
  }
}

// MouseOut Function

function swapOff(imgLocation) {
  if(document.images) {
    document.images[imgLocation].src = eval(imgLocation + "1.src");
  }
}

// end hiding script -->
</script>
</head>
<%
        LectureList lectureList = new LectureList();
        String date=LectureList.getDate();
       
        //System.out.print(nowdate);
		List list = lectureList.getList(date);
		Iterator it = list.iterator();

		
		
%>
  <body topmargin="0" rightmargin="0" leftmargin="0"> 
  <table height="100%" cellspacing="0" cellpadding="0" border="0" align="left" valign="top"> 
 <br> <tr width=240 height=58>
<Td valign="top"><img src="images/sear_pic-.jpg" ></Td>
<td background="images/edit_bg.jpg" width="211" style="padding-left:5px ">
<form action="search/Search.jsp" method="post" name="search" target="_blank" style="margin: 0pt; padding: 0pt;"> 
<font color="#ffffff"><b>Search</b></font><input type="text" name="keyWord" class="searchinput" id="keyWord" maxlength="15" style="width: 105px; height: 20px;">
<input type="image" src="images/but_sear.jpg" border=0 align="absmiddle" style="width: 19px; height: 19px;">

</form>
</td>
</tr>

<tr height=8 width=242><td colspan=2 valign="bottom" background="images/left-top.jpg" height=8 width=242></td></tr>

<tr height=60><Td colspan=2 valign="top" background="images/menu_bg.jpg" bgcolor="#FFFFFF" style="background-position:bottom;background-repeat:repeat-x;padding-bottom:15px"><img src="images/corner_1.jpg"><br>
  <div style="padding-left:20px"><img src="images/news_subs-l.jpg" width="114" height="19">
  <table>
		<tr> 
			<td valign="top" background="images/left_4.gif" colspan=2>
		<br><table cellpadding="0" cellspacing="0" width="100%" valign=top>
		<tr><a href="listwithleft.jsp" onMouseOver="swapOn('image0');" onMouseOut="swapOff('image0');" target="_parent"><img src="images/b21.jpg" name="image0" border="0" alt=""></a></tr>
		<tr><a href="vote/VoteList.jsp?type=7" onMouseOver="swapOn('image1');" onMouseOut="swapOff('image1');" target="_parent"><img src="images/b31.jpg" name="image1" border="0" alt=""></a></tr>
		<tr><a href="http://eaie.njtu.edu.cn/yanjiu/enrolment/index.asp" onMouseOver="swapOn('image2');" onMouseOut="swapOff('image2');" target="_blank"><img src="images/b41.jpg" name="image2" border="0" alt=""></a></tr>
		<tr><a href="LetterList.jsp" onMouseOver="swapOn('image3');" onMouseOut="swapOff('image3');" target="_parent"><img src="images/b51.jpg" name="image3" border="0" alt=""></a></tr>
		<tr><a href="kf/index.jsp" onMouseOver="swapOn('image4');" onMouseOut="swapOff('image4');" target="_parent"><img src="images/b61.jpg" name="image4" border="0" alt=""></a></tr>
		
		</table>
	
		</td>				
	</tr></table>
</div>
</Td>
</tr>

<tr height=100><Td colspan=2 valign="top" background="images/menu_bg.jpg" bgcolor="#FFFFFF" style="background-position:bottom;background-repeat:repeat-x;padding-bottom:15px"><img src="images/corner_1.jpg"><br>
  <div style="padding-left:20px"><img src="images/news_subs-c.jpg" width="114" height="19">
  <table><br><tr> 
	<td valign="middle" height="20" align="left" colspan=2> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="link" width=150 class="xiaoneilink" id="link" onChange="MM_jumpMenu('parent',this,0)"> 
                             <option>校内常用链接</option> 
                             <option value="http://www.njtu.edu.cn">北京交通大学</option> 
                             <option value="http://jgjwc.njtu.edu.cn:8080/bjtujwc/index.jsp">教务处</option> 
                             <option value="http://mail.bjtu.edu.cn/">校内邮箱登录</option> 
                             <option value="http://bbs.njtu.edu.cn/bbsnew/index.html">红果园BBS</option> 
                             <option value="http://bbs.bjtu.org/index.asp">特思论坛</option> 
                        </select> </td> 
	</tr></table>
</div>
</Td>
</tr>

<tr height=140><Td colspan=2 valign="top" background="images/menu_bg.jpg" bgcolor="#FFFFFF" style="background-position:bottom;background-repeat:repeat-x;padding-bottom:15px"><img src="images/corner_1.jpg"><br>
  <div style="padding-left:20px"><img src="images/news_subs-x.jpg" width="114" height="19">
  <br> 
 <table>
 <tr valign="top"> 
					<td valign="top" background="images/bg.jpg" align="justify" class="quicklink" style="padding-left: 15px; padding-right: 20px;" colspan=2> 
						 
<marquee direction="up" scrollamount="1" scrolldelay="20" onMouseOver="this.stop()" onMouseOut="this.start()"> 
<table width="95%" cellspacing="0" cellpadding="0" border="0" align="center"> 
<% 
        while (it.hasNext()) { 
			Lecture lecture = (Lecture) it.next(); 
%> 
  <tbody><tr> 
    <td class="lectureline"><a href="ShowLecture.jsp?id=<%=lecture.getId()%>" target="_blank" class="lecture"><%=lecture.getSubject()%></a><br> 
	报告人：<%=lecture.getLecturer()%><br> 
	时&nbsp;&nbsp;间：<%=lecture.getGivetime()%><br> 
	地&nbsp;&nbsp;点：<%=lecture.getGivesite()%></td> 
  </tr> 
<% 
} 
%> 
</tbody></table> 
</marquee> 
						 
	</td> 
</tr> 
 <tr height="12" align="right" width=240><td align="right" width=240 colspan=2><a href="LectureList.jsp?type=4" target="_blank"><img height="12" src="images/listmain-readmore.jpg"></a><img src="images/arrow_1.gif">&nbsp;&nbsp;</td>
</tr>  
 </table>

</div>
</Td>
</tr>



			</table> 
   </body>
</html>
