package com.eaie.admin.leader;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Leader;
import com.eaie.tools.JavaScript;

public class DelLeader extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DelLeader() {
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
		String[] ids = request.getParameterValues("delid");
		response.setCharacterEncoding("GBK");	
		try {
			
			for(String s: ids){
				Leader leader = LeaderDAO.GetLeader(Integer.parseInt(s));
				if(leader!=null){
					LeaderDAO.Delete(leader);
				}
			}
			String message = JavaScript.alertandRedirect("É¾³ý³É¹¦",basePath+"LeaderList.jsp");
			response.getWriter().write(message);
		} catch (Exception e) {

			String message = JavaScript.alertandRedirect("É¾³ýÊ§°Ü",basePath+"LeaderList.jsp");
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
