package com.eaie.admin.column;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.tools.BufferString;
import com.eaie.tools.JavaScript;
import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Bigclass;
import com.eaie.dbmanage.Smallclass;

public class EditClass extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EditClass() {
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

		doPost(request,response);
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

		response.setContentType("text/html;charset=GBK");
		String table = request.getParameter("table");
		String id = request.getParameter("id");
		String name = request.getParameter("className");
		String hql = "from "+table+" as table where table.id = "+id;
		PrintWriter out = response.getWriter();

		
		try {
			Object obj = BasicDAO.queryByHql(hql).get(0);
			if(obj instanceof Bigclass ){
				Bigclass bigClass = (Bigclass)obj;
			    bigClass.setBigclass(name);
			    bigClass.setBigclassid(Integer.parseInt(request.getParameter("classid")));
				BasicDAO.update(bigClass);	
			}
			else {
				if(obj instanceof Smallclass ){
					Smallclass smallClass = (Smallclass)obj;
					smallClass.setSmallclass(name);
					smallClass.setSmallclassid(Integer.parseInt(request.getParameter("classid")));
					BasicDAO.update(smallClass);
				}
			}
			out.println(BufferString.getDoneMessage("../admin/column/ClassList.jsp"));
			out.flush();
			out.close();
		}catch (Exception e){
			e.printStackTrace();
			out.println(BufferString.getFailMessage("../admin/column/ClassList.jsp"));
			out.flush();
			out.close();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
