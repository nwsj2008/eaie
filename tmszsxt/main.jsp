<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.tmszsxt.*" %>


<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>				
	<base href="<%=basePath%>">
	<link href="tmszsxt/tm_style.css" rel="stylesheet"	type="text/css">

<title>无标题文档</title>
</head>

<%
	Teacher user = (Teacher)session.getAttribute("USER");
	
 %>

<body>

<table width="86%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#FFFFFF" class="border">
      <tr>
        <td height="30" align="center" class="topbg">欢迎登录电子信息工程学院推免生招生系统！</td>
      </tr>
      <tr>
        <td align="left" class="tdbg">
		<fieldset>
		<legend>用户信息</legend>
		<table width="100%"  border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td height="25" align="center">
            当前登录：&nbsp;&nbsp; 
            登陆地点：<%=request.getRemoteAddr() %>&nbsp;&nbsp;
            上次登陆时间：&nbsp;&nbsp;
            登陆次数：</td>
          </tr>
        </table>
		</fieldset></td>
      </tr>
      <tr>
        <td align="left" class="tdbg">
		<fieldset>
		<legend>管理权限</legend>
		<table width="100%"  border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td height="25" align="center">
               管理员（拥有所有权限)
			</td>
          </tr>
        </table>
		</fieldset></td>
      </tr>
      <tr>
        <td class="tdbg">
		<fieldset><legend>使用说明</legend>
		<table width="100%"  border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td>1.为使后台页面正常显示，推荐您使用<font color="0000FF">1024x768</font>或者更高的屏幕分辨率。</td>
          </tr>
          <tr>
            <td>2.请您保护好自己的登录密码，用完后记得<font color="0000FF">退出系统</font>。</td>
          </tr>
          <tr>
            <td>3.<font color="0000FF">如何添加文章？</font></td>
          </tr>
          <tr>
            <td><ul>
            	<li>可直接在编辑器上输入文字，也可以将编辑好的文章复制后点编辑器上的<img src="admin/images/paste.gif" width="20" height="20">或使用<font color="0000FF">CTRL+V</font>粘贴过来，推荐<font color="0000FF">整篇复制</font>后粘贴。(在编辑器上右键粘贴复制都<font color="0000FF">无效</font>，请按编辑器上的按钮进行操作)
            	<li>网页已设置好了文章的字体和大小，所以一般情况下可以粘贴后<font color="0000FF">直接发布</font>，不用再设置字体和大小了，以便保持网站格式的一致性。
            </ul></td>
          </tr>
          <tr>
          <tr>
            <td>4.<font color="0000FF">如何添加附件？</font></td>
          </tr>
          <tr>
            <td><ul>
            	<li>添加文章时在添加附件栏内浏览您要粘贴的附件，再点<font color="0000FF">粘贴</font>进行上传，若有多个附件请<font color="0000FF">打包</font>后再上传。
                <li>若要删除已上传的附件，在编辑文章状态下点删除，再更新文章。
            	<li>若要更换附件，在编辑文章状态下先删除文件，再重新上传，再更新文章。
			</ul></td>
          </tr>

		  <tr>
            <td>5.【管理员注意】切勿随意更改栏目管理内的大类ID号和小类ID号，否则将导致系统出错。</td>
          </tr>
		</table>
		</fieldset></td>
      </tr>
</table>
</body>
</html>
