package com.eaie.admin.vote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import com.eaie.dbmanage.Votepaper;
import com.eaie.common.BasicDAO;
import com.eaie.tools.JavaScript;

public class SerVote extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SerVote() {
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
		Votepaper vote = new Votepaper();
		PageContext context = null;
		if(action.equals("save")){
			context = JspFactory.getDefaultFactory().getPageContext(this,request,response,null,true,8192,true);		
			synchronized(context) {
				vote = (Votepaper)context.getAttribute("vote", PageContext.PAGE_SCOPE);
				 if (vote == null){
					 vote = new Votepaper();
					 context.setAttribute("vote", vote, PageContext.PAGE_SCOPE);
			          out.write('\r');
			          out.write('\n');
			          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(context.findAttribute("vote"), request);
			          out.write('\r');
			          out.write('\n');
			        }
			}
			try{
				vote.setPubtime(new java.util.Date());
				BasicDAO.save(vote);
				out.print(JavaScript.alertandRedirect("问卷调查主题添加成功！", "../admin/vote/VoteList.jsp"));
				out.close();
			}catch(Exception ex){
				ex.printStackTrace();
				out.print(JavaScript.alertandRedirect("问卷调查主题添加失败！", "../admin/vote/VoteList.jsp"));
				out.close();
			}		
		}
		else if(action.equals("edit")){
			context = JspFactory.getDefaultFactory().getPageContext(this,request,response,null,true,8192,true);		
			synchronized(context) {
				vote = (Votepaper)context.getAttribute("vote", PageContext.PAGE_SCOPE);
				 if (vote == null){
					 vote = new Votepaper();
					 context.setAttribute("vote", vote, PageContext.PAGE_SCOPE);
			          out.write('\r');
			          out.write('\n');
			          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(context.findAttribute("vote"), request);
			          out.write('\r');
			          out.write('\n');
			        }
			}
			try{
				vote.setPaperid(Integer.parseInt(request.getParameter("paperid")));
				vote.setPubtime(new java.util.Date());
				BasicDAO.update(vote);
				out.print(JavaScript.alertandRedirect("问卷调查主题编辑成功！", "../admin/vote/VoteList.jsp"));
				out.close();
			}catch(Exception ex){
				ex.printStackTrace();
				out.print(JavaScript.alertandRedirect("问卷调查主题编辑失败！", "../admin/vote/VoteList.jsp"));
				out.close();
			}			
		}
		else{
			int id = Integer.parseInt(request.getParameter("id"));
			try{
				vote = VoteImp.getVoteById(id);
				if(vote!=null){
				    BasicDAO.delete(vote);
				    out.print(JavaScript.alertandRedirect("问卷调查主题删除成功！", "../admin/vote/VoteList.jsp"));
				    out.close();
				}    
			}catch(Exception ex){
				ex.printStackTrace();
				out.print(JavaScript.alertandRedirect("问卷调查主题删除失败！", "../admin/vote/VoteList.jsp"));
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
