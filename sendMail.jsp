<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.news.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.tools.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>书记信箱</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.tdline {
	border-bottom-width: 1px;
	border-bottom-style: dashed;
	border-bottom-color: #ffffff;
	padding-top: 10px;
	font-size: 14px;
	line-height: 1.6;
}
-->
</style>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<script language="javascript">
		function otherEmail(){
		    document.email.from.value = "";
		    document.email.pw.value = "";
		    document.email.pname.value = "";
		    document.email.from.disabled = false;
		    document.email.pw.disabled = false;
		    document.email.pname.disabled = false;
		    document.getElementById("other").disabled = true;
		}
		function init() {
		    document.getElementById("from").disabled = true;
		    document.getElementById("pw").disabled = true;
		    document.getElementById("pname").disabled = false;
		    document.getElementById("tablecc").style.display="none";
		}
		function addCC(){
		    document.getElementById("add").disabled = true;
		    document.getElementById("tablecc").style.display="";
		}
		function Blank() {
		    document.getElementById("text").value = "";
		}
		
		
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
			if(!isNull("pname","姓名")){			
				return false;
			}	
			if(!isNull("subject","标题")){			
				return false;
			}		
			if(!isNull("text","内容")){			
				return false;
			}				
		}		
	</script>
</head>


<body>
<%@ include file="head.jsp" %>
<table width=780 height="100%" border=0 cellpadding=0 cellspacing=0 align="center" bgcolor="#FFFFFF">
	<tr>
	    <td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
		<td width=780 height=100% valigh=top align=left>
			
			<table width="762" border="0" align="center" cellpadding="0" cellspacing="0" class="right_bg">
  <tr>
    <td height="40" align="center" class="news_title">书记信箱</td>
  </tr>

  <tr>
    <td height="460" align="center" valign="top">
<table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   <td align="center" class="tdline"><font color="#0000FF">给书记留言（如需回复请您在内容中注明联系方式）</font></td>
  </tr>
	

  <tr>
    <td class="tdline">

	

 <form name="email" method="post" action="sendEmail.jsp">
     <table align="center" width="80%" border="0" bgcolor="#FFFFFF" cellspacing="1" cellpadding="1">
     
         <tr>
             <td></td>
             <td><input type="text" name="to" size="30" id="to" style="display: none" >&nbsp;<input name="add" id="add" type="checkbox" value="1" onPropertyChange="addCC()"style="display: none">
             <table border="0" id="tablecc">
                 <tr>
                    <td><input type="text" name="cc" size="30" id="cc" style="display: none"></td>           
                 </tr>
                 <tr> 
                    <td><input type="text" name="bcc" size="30" id="bcc" style="display: none"></td>           
                 </tr>
             </table>
             </td>
         </tr>
           <tr>
             <td>姓&nbsp;&nbsp;名：</td>
                <td><input type="text" name="pname"  size="20" id="pname">&nbsp;<font color="red">*</font></td>
             <td>
             <table>
                 <tr>
                    <td><input type="text" name="from" value="dzxyyjs@bjtu.edu.cn" id="from" style="display: none"></td>
                    <!-- <td align="right" width="20%">密 码</td> -->
                    <td><input type="password" name="pw" value="dzxyyjs" id="pw" style="display: none"></td>
                 </tr>
                 <tr>
                 
                   
                    <td id="othertd"><input name="other" type="checkbox" value="0"  onPropertyChange="otherEmail()" id="other"style="display: none"></td>
                 </tr>
             </table>
             </td>
         </tr>
         <tr>
             <td>标&nbsp;&nbsp;题：</td>
             <td><input type="text" name="subject" size="40">&nbsp;<font color="red">*</font></td>
         </tr>
         <tr>
             <td>内&nbsp;&nbsp;容：</td>
             <td><textarea name="text" rows="10" cols="60" id="text">&nbsp;</textarea></td>                  
         </tr>
       
         <tr>
             <td align=center colspan="2"><input type="submit" value=" 提 交 " name="send" onclick="return formCheck();">
             <input type="button" value=" 重 写 " name="buttonReset" onClick="Blank()"></td>
         </tr>
     </table>
     </form>
	</td>
  </tr>
 </table>
</table>
		</td>
		<td width="1" bgcolor="#000000" rowspan="100"><img src="images/spacer.gif" width="1" height="1"></td>
	</tr>
</table>
<jsp:include page="foot.jsp" flush="true"/>



</body>
</html>
