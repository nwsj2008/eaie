<%@ page contentType="text/html; charset=GBK" %>
<HTML>
<HEAD>
<TITLE>eWebEditor - eWebSoft在线文本编辑器飞鱼修改版 - 使用例子</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<style>
body,td,input,textarea {font-size:9pt}
</style>
</HEAD>
<BODY>
<FORM method="POST" name="myform" action="submit.jsp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>编辑内容：</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="">
		<IFRAME ID="eWebEditor1" src="eWebEditor.jsp?id=content1&style=standard" frameborder="0" scrolling="no" width="650" height="350"></IFRAME>
	</TD>
</TR>
<TR>
	<TD colspan=2 align=right>
	<INPUT type=submit name=b1 value="提交">
	<INPUT type=reset name=b2 value="重填">&nbsp;
	</TD>
</TR>
</TABLE>
</FORM>

</BODY>
</HTML>
