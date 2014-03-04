<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.common.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="user" class="Teacher">
<jsp:setProperty name="user" property="*" />
</jsp:useBean>

<%
	String id = request.getParameter("id");
	
	String[] bigclasses = request.getParameterValues("bigclassid");
	String bigclass="";	
	if(bigclasses!=null){	
		for(int i =0;i<bigclasses.length;i++){		
			if(i!=0){
				bigclass +="," + bigclasses[i];
			}else{
				bigclass += bigclasses[i];
			}
		}
	}
	if(id==null){

		MD5 md5 = new MD5();
		user.setPwd(md5.getMD5ofStr(user.getPwd()));	
		user.setLogintimes(0);		
		user.setBigclassid(bigclass);	
		try{
	
			BasicDAO.saveOrUpdate(user);
			out.println(JavaScript.alertandRedirect("添加用户成功！","UserList.jsp"));		
		}catch(Exception ex){
			out.println(JavaScript.alertandRedirect("添加用户失败！","UserList.jsp"));	
			out.println(ex.getMessage());	
		}
	}else{		
			
	
			Teacher muser = (Teacher)BasicDAO.queryById(Teacher.class,Integer.parseInt(id));
			
			if(muser!=null){
				String part = request.getParameter("part");					
				String isAdmin = request.getParameter("isadmin");				
				if(isAdmin==null){ 
				isAdmin="0";
				}
				muser.setBigclassid(bigclass);
				muser.setPart(part);
				muser.setIsadmin(Byte.valueOf(isAdmin));
				try{
					BasicDAO.saveOrUpdate(muser);
					out.println(JavaScript.alertandRedirect("修改用户成功！","UserList.jsp"));	
				}catch(Exception ex){	
					out.println(ex.getMessage());
					out.println(JavaScript.alertandRedirect("修改用户失败！","UserList.jsp"));		
				}
			}else{
			
				out.println(JavaScript.alertandRedirect("要修改的用户不存在！","UserList.jsp"));	
			}	
	}
 %>
			

	
    


 