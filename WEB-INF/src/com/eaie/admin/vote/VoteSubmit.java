package com.eaie.admin.vote;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.admin.vote.VoteImp;
import com.eaie.dbmanage.Vote;
import com.eaie.tools.JavaScript;

public class VoteSubmit extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public VoteSubmit() {
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
		int paperid = Integer.parseInt(request.getParameter("paperid"));
		List itemList = (List)new java.util.ArrayList();
		int sum = 0;
		Vote item = new Vote();
		try{
			sum = VoteImp.getItemNum(paperid);
			if (sum>0){
				for(int i=1; i<=sum; i++){
					int subid = Integer.parseInt(request.getParameter("id"+i));
					item = VoteImp.getItemById(subid);
					if(item.getVotetype().toString().equals("0")){
						int value = request.getParameter("feedback"+i)==null?0:Integer.parseInt(request.getParameter("feedback"+i));
						switch(value){					
							case 0: break;
							case 1: item.setAnswer1(item.getAnswer1()+1); break;
							case 2: item.setAnswer2(item.getAnswer2()+1); break;
							case 3: item.setAnswer3(item.getAnswer3()+1); break;
							case 4: item.setAnswer4(item.getAnswer4()+1); break;
							case 5: item.setAnswer5(item.getAnswer5()+1); break;
							case 6: item.setAnswer6(item.getAnswer6()+1); break;
							case 7: item.setAnswer7(item.getAnswer7()+1); break;
							case 8: item.setAnswer8(item.getAnswer8()+1); break;
							default: break;
						}
					}else{
						String checked[] = request.getParameterValues("feedback"+i);
						if (checked!=null){
							for(int j=0; j<checked.length; j++){
								int value = Integer.parseInt(checked[j]);
								switch(value){
									case 0: break;
									case 1: item.setAnswer1(item.getAnswer1()+1); break;
									case 2: item.setAnswer2(item.getAnswer2()+1); break;
									case 3: item.setAnswer3(item.getAnswer3()+1); break;
									case 4: item.setAnswer4(item.getAnswer4()+1); break;
									case 5: item.setAnswer5(item.getAnswer5()+1); break;
									case 6: item.setAnswer6(item.getAnswer6()+1); break;
									case 7: item.setAnswer7(item.getAnswer7()+1); break;
									case 8: item.setAnswer8(item.getAnswer8()+1); break;
									default: break;
								}
							}
						}
					}
				    itemList.add(item);	
				}		
			}
			if(itemList.size()>0){
				String ip = request.getRemoteAddr();
				boolean isDone = VoteImp.bulkChangeItem(itemList,ip,paperid);
				if (isDone)
					out.print(JavaScript.alertandRedirect("投票提交成功", "../vote/ShowResult.jsp?paperid="+paperid));
				else
					out.print(JavaScript.alertandRedirect("投票提交失败", "../vote/VoteList.jsp"));			
			}
			else
				out.print("window.location.href='../vote/VoteList.jsp'");
			out.close();
		}catch(Exception e){
			e.printStackTrace();
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
