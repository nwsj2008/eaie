package com.eaie.admin.commie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Commie;
import com.eaie.tools.JavaScript;

public class DelCommie extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DelCommie() {
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
				+ ":" + request.getServerPort() + path + "/" + "/admin/commie/";
		String[] stuids=request.getParameterValues("delid");
		response.setCharacterEncoding("GBK");
		
			try {
				for(String stuid:stuids){
					
					Commie commie= new Commie();
					commie.setStuid(stuid);			
					BasicDAO.delete(commie);
				}
				String message = JavaScript.alertandRedirect("É¾³ý³É¹¦",basePath+"CommieList.jsp");
				response.getWriter().write(message);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				String message = JavaScript.alertandRedirect("É¾³ýÊ§°Ü",basePath+"CommieList.jsp");
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
