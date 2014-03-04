package com.eaie.admin.leader;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.dbmanage.Leader;
import com.eaie.tools.JavaScript;

public class AddLeader extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddLeader() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// PrintWriter out = response.getWriter();
		// out.print("添加成功");
		// out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path + "/admin/leader/";

		String name = request.getParameter("name");
		String post = request.getParameter("post");
		String postid = request.getParameter("postid");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String charge = request.getParameter("charge");
		String imageurl=request.getParameter("fileurl");
		
		Leader leader = new Leader();
		leader.setName(name.equals("")?" ":name);
		leader.setPost(post.equals("")?" ":post);
		leader.setPostid(postid.equals("")?-1:Integer.parseInt(postid));
		leader.setAddress(address.equals("")?" ":address);
		leader.setTel(tel.equals("")?" ":tel);
		leader.setCharge(charge.equals("")?" ":charge);
		leader.setEmail(email.equals("")?" ":email);
		leader.setImageurl(imageurl.equals("")?" ":imageurl);
		response.setCharacterEncoding("GBK");
		try {
			LeaderDAO.Save(leader);
			String message = JavaScript.alertandRedirect("保存成功",basePath+"LeaderList.jsp");
			response.getWriter().write(message);
		} catch (Exception e) {

			
			String message = JavaScript.alertandRedirect("保存失败",basePath+"LeaderList.jsp");
			response.getWriter().write(message);		
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
