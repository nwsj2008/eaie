package com.eaie.admin.column;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.tools.BufferString;
import com.eaie.tools.JavaScript;
import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Bigclass;
import com.eaie.dbmanage.Smallclass;

public class AddSmallClass extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddSmallClass() {
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
		String column = (request.getParameter("className").trim());
		String bigClassId = request.getParameter("bigClassId");	    
	    PrintWriter out = response.getWriter();
	    String hql = "from Bigclass as bc where bc.id="+bigClassId;
	    boolean flag = true;
	    
	    try{
	    	Bigclass bigClass = (Bigclass)BasicDAO.queryByHql(hql).get(0);
		    String name = bigClass.getBigclass();
		    
		    int id = Integer.parseInt(request.getParameter("smallclassid"));
			List bigList = ColumnImp.getBigclass();
			if (!bigList.isEmpty())
				for(int i=0; i<bigList.size(); i++)
					if (id == ((Bigclass)bigList.get(i)).getBigclassid()){
						flag = false;
						out.print(JavaScript.alertandRedirect("您输入的栏目编号已存在,请重新输入","../admin/column/AddSmallClass.jsp?bigClassId="+bigClassId+"&bigClass="+name));
					}else{	
					Set smallList = ((Bigclass)bigList.get(i)).getSmallclasses();
					if (!smallList.isEmpty()){
						Iterator itSmall = smallList.iterator();
				        while (itSmall.hasNext()){
				            Smallclass smallClass = (Smallclass)itSmall.next();
				            if (id == smallClass.getSmallclassid()){
				            	flag = false;
				            	out.print(JavaScript.alertandRedirect("您输入的栏目编号已存在,请重新输入","../admin/column/AddSmallClass.jsp?bigClassId="+bigClassId+"&bigClass="+name));
				            }								
				            }
					    }   
					}
			
			if (flag){		
				Smallclass smallClass = new Smallclass();
				smallClass.setSmallclass(column);
				smallClass.setSmallclassid(Integer.parseInt(request.getParameter("smallclassid")));
		        smallClass.setBigclass(bigClass);
		            
			    BasicDAO.save(smallClass);			
			    out.println(BufferString.getDoneMessage("../admin/column/ClassList.jsp"));
				out.flush();
				out.close();
			}
		}
		catch(Exception e){
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
