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
	
	String communication="通信系统原理";
	String autocontrol="自动控制原理";
	String computer="计算机网络及其应用";
    
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
		out.println(JavaScript.alertandRedirect("保存成功", "fskcInfo.jsp"));

	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.println(JavaScript.alertandBack("保存失败"));
	}
%>