<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.common.*"%>
<%@ page import="com.eaie.gcssxt.gcss.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@page import="java.util.Date"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
	
	String fskc = request.getParameter("fskc");
	
	String tele=request.getParameter("tele");
	
	String communication="ͨ��ϵͳԭ��";
	String autocontrol="�Զ�����ԭ��";
	String computer="��������缰��Ӧ��";
    
    Gcss  gcssstudent = ( Gcss )BasicDAO.queryById(Gcss.class, id);
    gcssstudent.setId(id);
	gcssstudent.setZyk(fskc);
	
	if(fskc.equals("1"))
    { 
       gcssstudent.setZyk(communication);
    }
    else if(fskc.equals("2"))
    { 
       gcssstudent.setZyk(autocontrol);
    }
    else
    {
      gcssstudent.setZyk(computer);
    }
	
	gcssstudent.setTel(tele);
try {
		
		BasicDAO.update(gcssstudent);
		out.println(JavaScript.alertandRedirect("����ɹ�", "fskcInfo.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("����ʧ��"));
	}
%>