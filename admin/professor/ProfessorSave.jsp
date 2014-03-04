<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.admin.professor.*"%>
<%@ page import="com.eaie.tools.*"%>
<jsp:useBean id="professor" class="com.eaie.dbmanage.Professor">
	<jsp:setProperty name="professor" property="*" />
</jsp:useBean>




<%
	String id = request.getParameter("id");
	String action = request.getParameter("action");
	

	try {
		MD5 md5 = new MD5();
		if (professor.getPwd() != null) {
			String password = md5.getMD5ofStr(professor.getPwd());
			professor.setPwd(password);
		}
		String imageurl = request.getParameter("fileurl");
		if (imageurl != null) {
			professor.setImageurl(imageurl);
		}
		//TextArea �ı�Html����
		String resume = professor.getResume();
		String field = professor.getField();
		String projects = professor.getProjects();
		String book = professor.getBook();
		String honor = professor.getHonor();
        
		professor.setResume(HtmlEncode.outHtml(resume));
		professor.setField(HtmlEncode.outHtml(field));
		professor.setProjects(HtmlEncode.outHtml(projects));
		professor.setBook(HtmlEncode.outHtml(book));
		professor.setHonor(HtmlEncode.outHtml(honor));

		//��ӵ�ʦ��Ϣ
		if (id == null) {
		    String orderid = (professor.getOrderid()==null)?"z":professor.getOrderid();
		  
		   professor.setOrderid(orderid);
			ProfessorManage.SaveProfessor(professor);
			out.println(JavaScript.alertandRedirect("��ӵ�ʦ��Ϣ�ɹ�!",
					"ProfessorList.jsp"));
		}
		//�޸ĵ�ʦ��Ϣ
		else {
			//δ�޸����룬����ԭʼֵ��
			Professor p = ProfessorManage.getProfessor(Integer
					.parseInt(id));
			if (professor.getPwd() == null) {
				if (p != null)
					professor.setPwd(p.getPwd());
			}
			 String orderid = (professor.getOrderid()==null)?"z":professor.getOrderid();
		  
		   professor.setOrderid(orderid);
			ProfessorManage.UpdateProfessor(professor);
			if (action.equalsIgnoreCase("admin")) {
				out.println(JavaScript.alertandRedirect("�޸ĵ�ʦ��Ϣ�ɹ�!",
						"ProfessorList.jsp"));
			}
			if (action.equalsIgnoreCase("teacher")) {

				out.println(JavaScript.alertandBack("�޸ĵ�ʦ��Ϣ�ɹ�!"));
			}
		}
	} catch (Exception ex) {

		ex.printStackTrace();

		if (id == null) {
			out.println(JavaScript.alertandBack("��ӵ�ʦ��Ϣʧ�ܣ������Ի�������!"));
		} else {

			out.println(JavaScript.alertandBack("�޸ĵ�ʦ��Ϣʧ�ܣ������Ի�������!"));
		}
	}
%>


