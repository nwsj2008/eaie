<%@ page contentType="text/html;charset=gb2312" 
import="com.jspsmart.upload.*" %><%@page 
import="com.eaie.common.*"%><%@page import="java.util.*"%><%@ page 
import="com.eaie.gcssxt.gcssnews.*"%><%@ page import="com.eaie.dbmanage.*"%><% 
String id = request.getParameter("id");
List list = BasicDAO.queryByHql("From Gcssnews gcssnews where gcssnews.id='" + id
						+ "'");
Gcssnews gcssnews = (Gcssnews) list.get(0);
			
			
// �½�һ��SmartUpload���� 
SmartUpload su = new SmartUpload(); 
// ��ʼ�� 
su.initialize(pageContext); 
// �趨contentDispositionΪnull�Խ�ֹ������Զ����ļ��� 
//��֤������Ӻ��������ļ��������趨�������ص��ļ���չ��Ϊ 
//docʱ����������Զ���word��������չ��Ϊpdfʱ�� 
//���������acrobat�򿪡� 
su.setContentDisposition(null); 
// �����ļ� 
su.downloadFile("UploadFiles/upfile/"+gcssnews.getFileurl()); 
%> 