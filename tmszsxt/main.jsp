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

<title>�ޱ����ĵ�</title>
</head>

<%
	Teacher user = (Teacher)session.getAttribute("USER");
	
 %>

<body>

<table width="86%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#FFFFFF" class="border">
      <tr>
        <td height="30" align="center" class="topbg">��ӭ��¼������Ϣ����ѧԺ����������ϵͳ��</td>
      </tr>
      <tr>
        <td align="left" class="tdbg">
		<fieldset>
		<legend>�û���Ϣ</legend>
		<table width="100%"  border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td height="25" align="center">
            ��ǰ��¼��&nbsp;&nbsp; 
            ��½�ص㣺<%=request.getRemoteAddr() %>&nbsp;&nbsp;
            �ϴε�½ʱ�䣺&nbsp;&nbsp;
            ��½������</td>
          </tr>
        </table>
		</fieldset></td>
      </tr>
      <tr>
        <td align="left" class="tdbg">
		<fieldset>
		<legend>����Ȩ��</legend>
		<table width="100%"  border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td height="25" align="center">
               ����Ա��ӵ������Ȩ��)
			</td>
          </tr>
        </table>
		</fieldset></td>
      </tr>
      <tr>
        <td class="tdbg">
		<fieldset><legend>ʹ��˵��</legend>
		<table width="100%"  border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td>1.Ϊʹ��̨ҳ��������ʾ���Ƽ���ʹ��<font color="0000FF">1024x768</font>���߸��ߵ���Ļ�ֱ��ʡ�</td>
          </tr>
          <tr>
            <td>2.�����������Լ��ĵ�¼���룬�����ǵ�<font color="0000FF">�˳�ϵͳ</font>��</td>
          </tr>
          <tr>
            <td>3.<font color="0000FF">���������£�</font></td>
          </tr>
          <tr>
            <td><ul>
            	<li>��ֱ���ڱ༭�����������֣�Ҳ���Խ��༭�õ����¸��ƺ��༭���ϵ�<img src="admin/images/paste.gif" width="20" height="20">��ʹ��<font color="0000FF">CTRL+V</font>ճ���������Ƽ�<font color="0000FF">��ƪ����</font>��ճ����(�ڱ༭�����Ҽ�ճ�����ƶ�<font color="0000FF">��Ч</font>���밴�༭���ϵİ�ť���в���)
            	<li>��ҳ�����ú������µ�����ʹ�С������һ������¿���ճ����<font color="0000FF">ֱ�ӷ���</font>����������������ʹ�С�ˣ��Ա㱣����վ��ʽ��һ���ԡ�
            </ul></td>
          </tr>
          <tr>
          <tr>
            <td>4.<font color="0000FF">�����Ӹ�����</font></td>
          </tr>
          <tr>
            <td><ul>
            	<li>�������ʱ����Ӹ������������Ҫճ���ĸ������ٵ�<font color="0000FF">ճ��</font>�����ϴ������ж��������<font color="0000FF">���</font>�����ϴ���
                <li>��Ҫɾ�����ϴ��ĸ������ڱ༭����״̬�µ�ɾ�����ٸ������¡�
            	<li>��Ҫ�����������ڱ༭����״̬����ɾ���ļ����������ϴ����ٸ������¡�
			</ul></td>
          </tr>

		  <tr>
            <td>5.������Աע�⡿�������������Ŀ�����ڵĴ���ID�ź�С��ID�ţ����򽫵���ϵͳ����</td>
          </tr>
		</table>
		</fieldset></td>
      </tr>
</table>
</body>
</html>
