package com.eaie.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eaie.common.BasicDAO;
import com.eaie.tools.BufferString;

public class ClassFilter implements Filter {
	
	protected FilterConfig filterConfig;

	public void destroy() {
		// TODO Auto-generated method stub
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hres = (HttpServletResponse)res;
		String name = hreq.getParameter("className");
		String hql = "from Classname as c where c.id.bigclass='"+name+"' or c.id.smallclass='"+name+"'";
		try{
			List list = BasicDAO.queryByHql(hql);
			if(list.isEmpty())
				chain.doFilter(req,res);
			else{
				hres.sendRedirect("../admin/column/Error.jsp");
			}			
		}
		catch (Exception e){
			e.printStackTrace();
		}
	}

	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		this.filterConfig = config;
	}

}
