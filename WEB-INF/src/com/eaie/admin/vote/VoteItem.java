package com.eaie.admin.vote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Vote;
import com.eaie.dbmanage.Votepaper;
import com.eaie.tools.JavaScript;

public class VoteItem extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public VoteItem() {
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
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		Vote item = new Vote();
		PageContext context = null;
		if(action.equals("add")){
			context = JspFactory.getDefaultFactory().getPageContext(this,request,response,null,true,8192,true);		
			synchronized(context) {
				item = (Vote)context.getAttribute("item", PageContext.PAGE_SCOPE);
				 if (item == null){
					 item = new Vote();
					 context.setAttribute("item", item, PageContext.PAGE_SCOPE);
			          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(context.findAttribute("item"), request);
			        }
			}
			try{
                int id = Integer.parseInt(request.getParameter("id"));
                Votepaper vote = VoteImp.getVoteById(id);
                item.setVotepaper(vote);
				item.setPubtime(new java.util.Date());
				BasicDAO.save(item);
				out.print(JavaScript.alertandRedirect("问卷调查内容添加成功！", "../admin/vote/VoteItems.jsp?id="+item.getVotepaper().getPaperid()));
				out.close();
			}catch(Exception ex){
				ex.printStackTrace();
				out.print(JavaScript.alertandRedirect("问卷调查内容添加失败！", "../admin/vote/VoteItems.jsp?id="+item.getVotepaper().getPaperid()));
				out.close();
			}		
		}
		else if(action.equals("edit")){
			context = JspFactory.getDefaultFactory().getPageContext(this,request,response,null,true,8192,true);		
			synchronized(context) {
				item = (Vote)context.getAttribute("item", PageContext.PAGE_SCOPE);
				 if (item == null){
					 item = new Vote();
					 context.setAttribute("item", item, PageContext.PAGE_SCOPE);
			          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(context.findAttribute("item"), request);
			        }
			}
			try{
                int id = Integer.parseInt(request.getParameter("id"));
                Votepaper vote = VoteImp.getVoteById(id);
                item.setVotepaper(vote);
				item.setPubtime(new java.util.Date());
				BasicDAO.update(item);
				out.print(JavaScript.alertandRedirect("问卷调查内容编辑成功！", "../admin/vote/VoteItems.jsp?id="+item.getVotepaper().getPaperid()));
				out.close();
			}catch(Exception ex){
				ex.printStackTrace();
				out.print(JavaScript.alertandRedirect("问卷调查内容编辑失败！", "../admin/vote/VoteItems.jsp?id="+item.getVotepaper().getPaperid()));
				out.close();
			}		
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
