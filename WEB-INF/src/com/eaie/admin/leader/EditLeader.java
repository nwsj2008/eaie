package com.eaie.admin.leader;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.dbmanage.Leader;
import com.eaie.tools.JavaScript;
import com.eaie.admin.leader.*;

public class EditLeader extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EditLeader() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path + "/admin/leader/";
		String idd=request.getParameter("id");
		int id=Integer.parseInt(idd);
		String name = request.getParameter("name");
		String post = request.getParameter("post");
		String postid = request.getParameter("postid");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String charge = request.getParameter("charge");
		String imageurl=request.getParameter("fileurl");
		
		
		try {
			Leader leader = LeaderDAO.GetLeader(id);
			
			if(leader!=null){
				
				leader.setName(name.equals("")?" ":name);
				leader.setPost(post.equals("")?" ":post);
				leader.setPostid(postid.equals("")?-1:Integer.parseInt(postid));
				leader.setAddress(address.equals("")?" ":address);
				leader.setTel(tel.equals("")?" ":tel);
				leader.setCharge(charge.equals("")?" ":charge);
				leader.setEmail(email.equals("")?" ":email);
				leader.setImageurl(imageurl==null?" ":imageurl);
				response.setCharacterEncoding("GBK");	
				LeaderDAO.Update(leader);
			}
			String message = JavaScript.alertandRedirect("修改领导信息成功",basePath+"LeaderList.jsp");
			response.getWriter().write(message);
		} catch (Exception e) {

			String message = JavaScript.alertandRedirect("修改领导信息失败",basePath+"LeaderList.jsp");
			response.getWriter().write(message);
			
		}
	
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
