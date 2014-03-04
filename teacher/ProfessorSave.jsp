<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*" %>
<%@ page import="com.eaie.admin.professor.*" %>
<%@ page import="com.eaie.tools.*" %>
<jsp:useBean id="professor" class="com.eaie.dbmanage.Professor">
<jsp:setProperty name="professor" property="*"/>
</jsp:useBean>
<%
	String id = request.getParameter("id");
	
	try{
		MD5 md5 = new MD5();			 
		if(professor.getPwd()!=null){
			String password = md5.getMD5ofStr(professor.getPwd());			
			professor.setPwd(password);
		}
		String imageurl = request.getParameter("fileurl");
		if(imageurl!=null){				
			professor.setImageurl(imageurl);
		}	
		//修改导师信息		
		//未修改密码，保留原始值。
		Professor p = ProfessorManage.getProfessor(Integer.parseInt(id));
		if(professor.getPwd()==null){			
			if(p!=null) professor.setPwd(p.getPwd());
		}	
		
		//TextArea 文本Html编码
		String resume = professor.getResume();		
		String field = professor.getField();
		String projects = professor.getProjects();
		String book = professor.getBook();
		String honor = professor.getHonor();
		
		professor.setResume(HtmlEncode.outHtml(resume));
		professor.setField(HtmlEncode.outHtml(field));
		professor.setProjects(HtmlEncode.outHtml(projects));
		professor.setBook(HtmlEncode.outHtml(book));
		professor.setHonor(HtmlEncode.outHtml(honor))
		;		
		ProfessorManage.UpdateProfessor(professor);		
		session.setAttribute("TEACHER",professor);
		
		out.println(JavaScript.alertandRedirect("修改导师信息成功!","ProfessorEdit.jsp"));
		
		
	}catch(Exception ex){
		
		ex.printStackTrace();
		out.println(JavaScript.alertandBack("修改导师信息失败，请重试或检查输入!"));
		
	}
	
	

%>


