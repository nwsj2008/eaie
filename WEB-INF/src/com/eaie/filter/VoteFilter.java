package com.eaie.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.admin.vote.VoteImp;
import com.eaie.dbmanage.Voteip;

public class VoteFilter implements Filter {
	
	protected FilterConfig filterConfig;

	public void destroy() {
		this.filterConfig = null;

	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hres = (HttpServletResponse)res;
		int paperid = Integer.parseInt(hreq.getParameter("paperid"));
		boolean flag = true;
		try{
			List list = VoteImp.getVoteipById(paperid);
			if (!list.isEmpty()){
				for(int i=0; i<list.size(); i++){
					if (hreq.getRemoteAddr().toString().equalsIgnoreCase(((Voteip)list.get(i)).getVoteip())){
						flag = false;				
						break;
				   }
				}
			}
			if(flag)
				chain.doFilter(req,res);
			else
			    hres.sendRedirect("../Error.jsp?type=vote");
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;

	}

}
