package com.eaie.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eaie.tools.JavaScript;

public class CommieFilter extends HttpServlet implements Filter {
	
	protected FilterConfig filterConfig;

	public void destroy() {
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hres = (HttpServletResponse)res;
		
		HttpSession session = hreq.getSession();		
		hres.setCharacterEncoding("GBK");

		if(session.getAttribute("Commie")==null){	
			hres.sendRedirect("../Out.jsp");
	    } else{
			chain.doFilter(req,res);		
		}			
	}

	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;

	}
	

}
