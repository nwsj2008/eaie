<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.eaie.tools.DateTimeFormat,com.eaie.tools.Image" %>
<%@ page import="com.eaie.dbmanage.Commiepub" %>
<%@ page import="com.eaie.dbmanage.Commie" %>
<%@ page import="com.eaie.party.PartyImp" %>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>党建工作</title>

	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta http-equiv="Content-Language" content="GBK" />
	
	<link rel="stylesheet" type="text/css" href="party/css/css.css">
	
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
	

  </head>
  
  <body background="party/images/bg2.jpg">
  
  <map name="Map1" id="Map1">
  	<area shape="rect" coords="219,5,271,31" href="party/ShowClass.jsp?smallclassid=73">
  </map>
  <map name="Map2" id="Map2">
  	<area shape="rect" coords="223,5,272,30" href="party/ShowClass.jsp?smallclassid=74">
  </map>
  <map name="Map3" id="Map3">
  	<area shape="rect" coords="214,2,271,31" href="party/ShowClass.jsp?smallclassid=75">
  </map>
  <map name="Map4" id="Map4">
  	<area shape="rect" coords="220,4,271,32" href="party/ShowClass.jsp?smallclassid=76">
  </map>
  
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
 <%@ include file="/party/Header.jsp" %>
  <table width="762" height="726" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="220" align="right" valign="top" bgcolor="#BC0000">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#BC0000">
      <tr>
        <td height="40" align="center" bgcolor="#FF0000"><img src="party/images/party_03.gif" width="220" height="42" alt=""></td>
      </tr>
      <tr>
        <td height="229" align="center" valign="middle" background="party/images/party_05.gif" bgcolor="#990000">
        <table width="88%" height="96%"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" class="pubname">
            <% if(list_Pub.size()>0) { %>
            <marquee direction="up" height="200" scrollamount="1" scrolldelay="20" onMouseOver="this.scrollDelay=500" onMouseOut="this.scrollDelay=1">
            <%  for (int iPub=0; iPub<list_Pub.size(); iPub++){
            		pub = (Commiepub)list_Pub.get(iPub); 
            		out.print(pub.getBranch()+":<br>");
            		out.print(pub.getPublist()+"<br>");
            		out.print("<div align=right>"+DateTimeFormat.getDateString(pub.getPubtime())+"</div>");
            		out.print("<hr class=dotline color=#BF2000 size=2>");
   		        }%>
            </marquee>
            <%} else
              	out.print("<br>");%>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td height="27" bgcolor="#990000"><img src="party/images/party_12.gif" width="220" height="27" alt=""></td>
      </tr>
    </table>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#BC0000">
        <tr>
          <td width="37" height="122" bgcolor="#FF9900"><img src="party/images/party_14.gif" width="37" height="122" alt=""></td>
          <td background="party/images/party_15.gif" bgcolor="#BC0000">
          <form name ="loginForm" method="post" action="servlet/CommieLogin" style="padding:0;margin:0" onSubmit="return formCheck()">
          <%if (commie==null) {%>
          <table width="100%"  border="0" cellspacing="4" cellpadding="4">
            <tr>
              <td align="right" class="login">学&nbsp;号：</td>
              <td><input name="username" type="text" id="username" onFocus="this.select(); " size="20" maxlength="10"></td>
            </tr>
            <tr>
              <td align="right" class="login">密&nbsp;码：</td>
              <td><input name="password" type="password" id="password" onFocus="this.select(); " size="20" maxlength="15"></td>
            </tr>
            <tr align="center">
              <td colspan="2"><input name="Submit" type="submit" class="button" value="登&nbsp;录">
                &nbsp;&nbsp;
                <input name="Submit2" type="reset" class="button" value="清&nbsp;除"></td>
            </tr>
          </table>
          <%} else { %>
          <table width="80%"  border="0" align="center" cellpadding="4" cellspacing="4">
            <tr>
              <td class="topic">当前登录：<%=commie.getStuid()%></td>
            </tr>
            <tr>
              <td align="center" class="topic"><a href="party/main/Commie.jsp">进入</a>&nbsp;&nbsp;<a href="party/Logout.jsp">退出</a></td>
            </tr>
          </table>
		  <% } %>
          </form>
          </td>
        </tr>
      </table>
      <table width="100%" height="306"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" style="margin-top:3">
        <tr>
          <td width="37"><img src="party/images/party_21.gif" width="37" height="306" alt=""></td>
          <td background="party/images/party_22.gif" width="100%">
          <table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
          	<% for(int iFile=0; iFile<list_File.size(); iFile++) { %>
          	<tr class="topic">
            	<td class="line"><%=Image.getImageFile(((Object[])list_File.get(iFile))[1].toString(),18)%>&nbsp;<a href="download.jsp?id=<%=((Object[])list_File.get(iFile))[0]%>" title="<%=((Object[])list_News.get(iFile))[1]%>" target="_blank"><%=((Object[])list_File.get(iFile))[1]%></a>
            	</td>
			</tr>
	        <%}%>	
          </table>
          </td>
        </tr>
    </table></td>
    <td valign="top"><table width="100%" height="266" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td height="42" bgcolor="#990000"><img src="party/images/party_04.gif" width="542" height="42"></td>
        </tr>
          <tr>
            <td height="11" align="right" bgcolor="#FFFFFF"><img src="party/images/party_07.gif" width="342" height="11"></td>
          </tr>
		  <tr>
        <td height="195" valign="top">
		<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
		<% for(int i=0; i<list_News.size(); i++) { %>
			<tr class="topic">
            	<td height="25" class="line" width="80%"><img src="party/images/arrow.gif" width="9" height="9">&nbsp;<a href="party/ShowArticle.jsp?id=<%=((Object[])list_News.get(i))[0]%>" title="<%=((Object[])list_News.get(i))[1]%>" target="_blank"><%=((Object[])list_News.get(i))[1]%></a>
            	<%if (String.valueOf(((Object[])list_News.get(i))[3]).equals("1")) {out.print("&nbsp;[图]");}%></td>
            	<td align="right" class="line" width="20%"><%=DateTimeFormat.getDateString((Date)((Object[])list_News.get(i))[2])%></td>
			</tr>
	    <%}%>	
		</table>    
 		</td>
      </tr>
      <tr>
        <td height="18" align="right" bgcolor="#FFFFFF"><a href="party/ShowClass.jsp?smallclassid=71"><img src="party/images/more.gif" width="57" height="13" border="0"></a>&nbsp;</td>
      </tr>
    </table>
	  <table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td bgcolor="#990000"><img src="party/images/party_16.gif" alt="" width="271" height="31" border="0" usemap="#Map1"></td>
          <td bgcolor="#990000"><img src="party/images/party_17.gif" alt="" width="271" height="31" border="0" usemap="#Map2"></td>
        </tr>
        <tr>
          <td height="199" colspan="2" valign="top" background="party/images/party_18.gif" bgcolor="#990000"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="50%" align="center" valign="top">
				<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
				<% for(int i1=0; i1<list_ZHIBU.size(); i1++) { %>
				<tr>
  					<td height="5"></td>
				</tr>
				<tr class="topic">
                  <td height="25" class="line"><img src="party/images/arrow.gif" width="9" height="9">&nbsp;<a href="party/ShowArticle?id=<%=((Object[])list_ZHIBU.get(i1))[0]%>" title="<%=((Object[])list_ZHIBU.get(i1))[1]%>" target="_blank"><%=((Object[])list_ZHIBU.get(i1))[1]%></a>
                  <%if (String.valueOf(((Object[])list_ZHIBU.get(i1))[2]).equals("1")) {out.print("&nbsp;[图]");}%></td>
                </tr>
                <% } %>
                <tr><td>&nbsp;</td></tr>
  				</table>
			 </td>
			 <td width="50%" align="center" valign="top">
				<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
				<% for(int i2=0; i2<list_LILUN.size(); i2++) { %>
				<tr >
  					<td height="5"></td>
				</tr>
				<tr class="topic">
                  <td height="25" class="line"><img src="party/images/arrow.gif" width="9" height="9">&nbsp;<a href="party/ShowArticle.jsp?id=<%=((Object[])list_LILUN.get(i2))[0]%>" title="<%=((Object[])list_LILUN.get(i2))[1]%>" target="_blank"><%=((Object[])list_LILUN.get(i2))[1]%></a>
                  <%if (String.valueOf(((Object[])list_LILUN.get(i2))[2]).equals("1")) {out.print("&nbsp;[图]");}%></td>
                </tr>
                <% } %>
                <tr><td>&nbsp;</td></tr>
			 	</table>
			</td>
          </tr>
        </table>
        </td>
      </tr>
   </table>
   <table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#00FFFF">
   <tr>
		<td bgcolor="#990000"><img src="party/images/party_23.gif" alt="" width="271" height="31" border="0" usemap="#Map3"></td>
   		<td bgcolor="#990000"><img src="party/images/party_24.gif" alt="" width="271" height="31" border="0" usemap="#Map4"></td>
   </tr>
   <tr>
   		<td height="199" colspan="2" align="center" valign="top" background="party/images/party_25.gif" bgcolor="#990000"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        	<tr>
            	<td width="50%" align="center" valign="top">
				<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
				<% for(int i3=0; i3<list_XUEXI.size(); i3++) { %>
				<tr >
  					<td height="5"></td>
				</tr>
				<tr class="topic">
                	<td height="25" class="line"><img src="party/images/arrow.gif" width="9" height="9">&nbsp;<a href="party/ShowArticle.jsp?id=<%=((Object[])list_XUEXI.get(i3))[0]%>" title="<%=((Object[])list_XUEXI.get(i3))[1]%>" target="_blank"><%=((Object[])list_XUEXI.get(i3))[1]%></a>
                    <%if (String.valueOf(((Object[])list_XUEXI.get(i3))[2]).equals("1")) {out.print("&nbsp;[图]");}%></td>
                </tr>
                <% } %>
                <tr><td>&nbsp;</td></tr>
				</table>
				</td>
              <td width="50%" align="center" valign="top">
			  <table width="95%"  border="0" align="center" cellpadding="2" cellspacing="0">
			  <% for(int i4=0; i4<list_DAOHANG.size(); i4++) { %>
			  <tr >
  					<td height="5"></td>
			  </tr>
			  <tr class="topic">
                    <td height="25" class="line"><img src="party/images/arrow.gif" width="9" height="9">&nbsp;<a href="party/ShowArticle.jsp?id=<%=((Object[])list_DAOHANG.get(i4))[0]%>" title="<%=((Object[])list_DAOHANG.get(i4))[1]%>" target="_blank"><%=((Object[])list_DAOHANG.get(i4))[1]%></a>
                    <%if (String.valueOf(((Object[])list_DAOHANG.get(i4))[2]).equals("1")) {out.print("&nbsp;[图]");}%></td>
              </tr>
              <% } %>
              <tr><td>&nbsp;</td></tr>
			  </table>
 			</td>
           </tr>
         </table>
        </td>
        </tr>
      </table>
     </td>
    </tr>
  </table>
  <%@ include file="/party/Footer.jsp" %>
  </body>
</html>
