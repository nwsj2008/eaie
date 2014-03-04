<%@ page contentType="text/html; charset=gb2312" language="java" %>

<%@ page import="com.eaie.admin.classroom.*" %>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.tools.*" %>
<%@ page import="java.util.*" %>

<%
	String[] id = request.getParameterValues("id");
	/**if(id!=null){
		
		Classroom cr = ClassroomManage.GetApply(Integer.valueOf(id));
		if(cr!=null){
			
			try{
				ClassroomManage.DeleteApply(cr);
				out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","ClassroomList.jsp"));
			}catch(Exception ex){
				ex.printStackTrace();
				out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¬ÇëÖØÊÔ£¡"));
			}
		}
	}*/
	if(id!=null){
			try{
				for(int i =0;i<id.length;i++){	
					Classroom cr = ClassroomManage.GetApply(Integer.valueOf(id[i]));			
					
						if (cr != null) {		
							ClassroomManage.DeleteApply(cr);								
						} 			
				}
				out.println(JavaScript.alertandRedirect("É¾³ý³É¹¦£¡","ClassroomList.jsp"));	
					
			} catch (Exception ex) {	
							 
				ex.printStackTrace();
				out.println(JavaScript.alertandBack("É¾³ýÊ§°Ü£¬ÇëÖØÊÔ£¡"));
			}					
	}			
	out.println(JavaScript.alertandBack("·Ç·¨·ÃÎÊ"));
 %>

