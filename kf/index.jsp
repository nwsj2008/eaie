<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.DateTimeFormat,com.eaie.tools.Image" %>
<%@ page import="com.eaie.dbmanage.Commiepub" %>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%@ page import="com.eaie.party.PartyImp" %>
<%@ page import="com.eaie.tools.BufferString"%>
<%@ page import="com.eaie.kxfzgNews.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.eaie.kxfzgNews.KxfzgNewsList"%>
<%@page import="com.eaie.common.*"%>
<%@page import="com.eaie.dbmanage.KxfzgNews"%>
<%@page import="com.eaie.dbmanage.*"%>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>深入学习实践科学发展观活动</title>

	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta http-equiv="Content-Language" content="GBK" />
	<link rel="stylesheet" href="css.css" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="kf/css/css.css">
	<link rel="stylesheet" type="text/css" href="css1.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script language="javascript" src="js/basicJS.js"></script>
	<script language="javascript">
    function formCheck()
    {   
        var num = document.getElementById("username").value;
        if(!isNull("username","学号"))
            return false;
        if(!isNull("password","密码"))
            return false;
        if((num.length!=8) || (!validateNum(num)))
        {   
        	alert("请输入正确的学号,学好必须是8位数字")
        	return false;
        }
        return true;
    }
    </script>
	<style type="text/css">
.content { font-size: 11pt; }
td{word-break:break-all}
.bj {
	BACKGROUND-POSITION: center top; BACKGROUND-IMAGE: url(images/background.jpg); BACKGROUND-REPEAT:repeat
}
</style>
<SCRIPT language=JavaScript>
var currentpos,timer;

function initialize()
{
timer=setInterval("scrollwindow()",50);
}
function sc(){
clearInterval(timer);
}
function scrollwindow()
{
currentpos=document.body.scrollTop;
window.scroll(0,++currentpos);
if (currentpos != document.body.scrollTop)
sc();
}
document.onmousedown=sc
document.ondblclick=initialize
</SCRIPT>

  </head>
  
  <body topmargin="0" class=bj background="fk/images/bg2.jpg">
  
  
  
  <% Commie commie = (Commie)session.getAttribute("Commie");
     Vector party = PartyImp.getParty(); 
     List list_News = (List)party.get(0);
     List list_ZHIBU = (List)party.get(1);
     List list_LILUN = (List)party.get(2);
     List list_XUEXI = (List)party.get(3);
     List list_DAOHANG = (List)party.get(4);
     List list_Pub = (List)party.get(5);
     List list_File = (List)party.get(6);
     Commiepub pub;
     
  %>
  <%!List list;
	String cKeyWords, csearchpart;
	%>
	<% 
	    	SimpleDateFormat dateFormatStart = new SimpleDateFormat("yyyy-MM-dd");  
			int curPage = (request.getParameter("curPage") == null ? 1
					: Integer.parseInt(request.getParameter("curPage")));
			cKeyWords = request.getParameter("keyword");
			csearchpart = request.getParameter("searchpart");
			KxfzgNewsList clist = new KxfzgNewsList();
			list = clist.getKxfzgNewsList(curPage, csearchpart, cKeyWords);
			Page pager = clist.getCurrentPage();
			Iterator it = list.iterator();
	
		%>
		<TABLE cellSpacing=0 cellPadding=0 width=762 align=center border=0>
  <TBODY>
  <TR>
    <TD><center><img src="kf/images/party_01.gif" width="766" height="120"></center></TD></TR>
  </TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=765 align=center border=0>
  <TBODY>
  <TR>
    <TD   bgcolor="#BC0000" ><a href="sendMail.jsp" style="font-size:20px;font-color:yellow">书记信箱</a></TD></TR>
  </TBODY></TABLE>
  <table width="762" height="600" border="0" align="center" cellpadding="0" cellspacing="0" style="">
  
  <tr>
    <td width="10" align="right" valign="top" bgcolor="#BC0000">&nbsp;</td>
    <td width="752" valign="top">
    <table width="100%" height="266" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td height="42" bgcolor="#990000"><img src="kf/images/party_04.gif" width="754" height="42"></td>
        </tr>
          <tr>
           
          </tr>
		  <tr>
        <td height="178" valign="top">
		<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
		<%
		  int length = list.size();
		  int[] top= new int[length];
		  int j=0;
		  int i=0;
		  for(i=0;i<list.size();i++)
		  {
		    KxfzgNews n = (KxfzgNews) list.get(i);
		    
		    
		    if(n.getIstop()==1)
		    {
		       top[j]=i;
		       j++;
		    }
		    
		  }
		  if(j>0&&j<9){
		    
		    for(int k=0;k<j;k++)
		    {
		      KxfzgNews kxfzgNews = (KxfzgNews) list.get(top[k]);
		      
		    
		  %>
		  <tr class="topic">
            	<td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="color:red;font-size:17px" href="kf/ShowKxfzgNews.jsp?id=<%=kxfzgNews.getId()%>"><%=kxfzgNews.getTitle()%></a>&nbsp;</td>
            	<td align="right" class="line" width="15%"><%=DateTimeFormat.getDateString(kxfzgNews.getPubtime())%></td>
			</tr>
		  <% 
		  }
		    for(i=0;i<length;i++)
		      {
		         int h=0;
		         for(int m=0;m<j;m++)
		            if(top[m]==i) h=1;
		         if(h==0)
		         {           
		           KxfzgNews kxfzgNews = (KxfzgNews) list.get(i);
		           %>
		    <tr class="topic">
            	<td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="kf/ShowKxfzgNews.jsp?id=<%=kxfzgNews.getId()%>"><%=kxfzgNews.getTitle()%></a>&nbsp;</td>
            	<td align="right" class="line" width="15%"><%=DateTimeFormat.getDateString(kxfzgNews.getPubtime())%></td>
			</tr>
		           <%
		         }
		          
		      }
		  
		  }
		  else{
					if (list.size() > 0) {
					      int t =list.size();
					      int size;
					      if(t>=7){size=8;}
					      else size=t;
						for (int m = t; m < t-size; m--) {
							KxfzgNews kxfzgNews = (KxfzgNews) list.get(m);
							
				%>
			<tr class="topic">
            	<td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="kf/ShowKxfzgNews.jsp?id=<%=kxfzgNews.getId()%>"><%=kxfzgNews.getTitle()%></a>&nbsp;</td>
            	<td align="right" class="line" width="15%"><%=DateTimeFormat.getDateString(kxfzgNews.getPubtime())%></td>
			</tr>
	    <%} 
	    
	       }
	    }%>	
		</table>    
 		</td>
      </tr>
      <tr>
      <td height="18" align="right" bgcolor="#FFFFFF"><a href="kf/moreNews.jsp"><img src="kf/images/more.gif" width="57" height="13" border="0"></a>&nbsp;</td>
      </tr>
    </table>
	  
          <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td height="42" bgcolor="#990000"><img src="kf/images/party11.gif" width="754" height="42"></td>
        </tr>
          <tr>
            
          </tr>
		  <tr>
        <td height="195" valign="top">
		<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
		<br><br>
		  <tr class="topic">
            	              <td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="http://www.xinhuanet.com/politics/08kxfzg/">新华网特别专题：深入学习实践科学发展观</a>&nbsp;</td>
            	       </tr>
            	       <tr class="topic">
            	              <td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a  style="font-size:17px" href="http://politics.people.com.cn/GB/8198/32784/">人民网：落实科学发展观构建和谐社会</a>&nbsp;</td>
            	       </tr>
            	       <tr class="topic">
            	              <td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="http://theory.people.com.cn/GB/40557/55596/">中国共产党新闻网：树立和落实科学发展观</a>&nbsp;</td>
            	       </tr>
            	       <tr class="topic">
            	              <td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="http://www.cctv.com/news/special/C13567/01/">CCTV新闻频道：落实科学发展观</a>&nbsp;</td>
            	       </tr>
            	       <tr class="topic">
            	              <td height="25" class="line" width="85%"><img src="kf/images/arrow.gif" width="9" height="9">&nbsp;<a style="font-size:17px" href="http://www.southcn.com/nflr/llzhuanti/kxfzgll/">南方网：指引科学发展 实现社会和谐</a>&nbsp;</td>
            	       </tr>
	         
		</table>   
			 	</td>
      </tr>
      
    </table>
   </td>
   <td width="10" align="right" valign="top" bgcolor="#BC0000">&nbsp;</td>
   </tr>
   </table>
  <%@ include file="Footer.jsp" %>
  </body>
</html>
